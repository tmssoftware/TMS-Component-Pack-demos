{*************************************************************************}
{ TAdvStringGrid demo unit                                                }
{                                                                         }
{ written by TMS Software                                                 }
{            copyright © 1998-2011                                        }
{            Email : info@tmssoftware.Com                                 }
{            Web : http://www.tmssoftware.Com                             }
{                                                                         }
{ The source code is given as is. The author is not responsible           }
{ for any possible damage done due to the use of this code.               }
{ The component can be freely used in any application. The complete       }
{ source code remains property of the author and may not be distributed,  }
{ published, given or sold in any form as such. No parts of the source    }
{ code can be included in any other component or application without      }
{ written authorization of the author.                                    }
{*************************************************************************}
unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, StdCtrls, ExtCtrls, AdvStyleIF, AdvGDIP, GDIPicture,
  AdvObj, XPMan ;

type

  TSimpleGraphicCell = class(TInterfacedPersistent, ICellGraphic)
    procedure Draw(Canvas: TCanvas; R: TRect; Col, Row: integer; Selected: boolean; Grid: TAdvStringGrid);
    function CellWidth: integer;
    function CellHeight: integer;
    function IsBackground: boolean;
  end;

  TComplexGradientCell = class(TInterfacedPersistent, ICellGraphic)
  private
    FStartColor, FEndColor: TColor;
    FGradientMode: TLinearGradientMode;
  public
    procedure Draw(Canvas: TCanvas; R: TRect; Col, Row: integer; Selected: boolean; Grid: TAdvStringGrid);
    function CellWidth: integer;
    function CellHeight: integer;
    function IsBackground: boolean;

    property StartColor: TColor read FStartColor write FStartColor;
    property EndColor: TColor read FEndColor write FEndColor;
    property GradientMode: TLinearGradientMode read FGradientMode write FGradientMode;
  end;

  TImageCell = class(TInterfacedPersistent, ICellGraphic)
  private
    FPicture: TGDIPPicture;
    procedure SetPicture(const Value: TGDIPPicture);
  public
    { Interface }
    procedure Draw(Canvas: TCanvas; R: TRect; Col, Row: integer; Selected: boolean; Grid: TAdvStringGrid);
    function CellWidth: integer;
    function CellHeight: integer;
    function IsBackground: boolean;

    constructor Create;
    destructor Destroy; override;
    property Picture: TGDIPPicture read FPicture write SetPicture;
  end;

  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }

  end;


var
  Form1: TForm1;



implementation

{$R *.dfm}

{ TSimpleGraphicCell }

function TSimpleGraphicCell.CellHeight: integer;
begin
  Result := 0; // by returning zero, this graphic cell has no minimum cell width requirement
end;

function TSimpleGraphicCell.CellWidth: integer;
begin
  Result := 0; // by returning zero, this graphic cell has no minimum cell height requirement
end;

procedure TSimpleGraphicCell.Draw(Canvas: TCanvas; R: TRect; Col, Row: integer;
  Selected: boolean; Grid: TAdvStringGrid);
begin
  Canvas.Pen.Color := clRed;
  Canvas.Pen.Width := 2;
  Canvas.MoveTo(R.Left, R.Top);
  Canvas.LineTo(R.Right, R.Bottom);
end;

function TSimpleGraphicCell.IsBackground: boolean;
begin
  Result := true;
end;

{ TComplexGradientCell }

function TComplexGradientCell.CellHeight: integer;
begin
  Result := 0;
end;

function TComplexGradientCell.CellWidth: integer;
begin
  Result := 0;
end;

procedure TComplexGradientCell.Draw(Canvas: TCanvas; R: TRect; Col,
  Row: integer; Selected: boolean; Grid: TAdvStringGrid);
var
  graphics: TGPGraphics;
  linGrBrush: TGPLinearGradientBrush;
begin
  // Create GDI+ canvas
  graphics := TGPGraphics.Create(Canvas.Handle);
  linGrBrush := TGPLinearGradientBrush.Create(MakeRect(r.Left, r.Top, r.Right - r.Left, r.Bottom - r.Top), ColorToARGB(FStartColor), ColorToARGB(FEndColor), FGradientMode);
  graphics.FillRectangle(linGrBrush, MakeRect(r.Left, r.Top, r.Right - r.Left, r.Bottom - r.Top));
  linGrBrush.Free;
  graphics.Free;
end;

function TComplexGradientCell.IsBackground: boolean;
begin
  Result := true;
end;

{ TImageCell }

function TImageCell.CellHeight: integer;
begin
  Result := FPicture.Height;
end;

function TImageCell.CellWidth: integer;
begin
  Result := FPicture.Width;
end;

constructor TImageCell.Create;
begin
  inherited Create;
  FPicture := TGDIPPicture.Create;
end;

destructor TImageCell.Destroy;
begin
  FPicture.Free;
  inherited;
end;

procedure TImageCell.Draw(Canvas: TCanvas; R: TRect; Col, Row: integer;
  Selected: boolean; Grid: TAdvStringGrid);
begin
  Canvas.Draw(R.Left, R.Top, FPicture);
end;

function TImageCell.IsBackground: boolean;
begin
  Result := false;
end;

procedure TImageCell.SetPicture(const Value: TGDIPPicture);
begin
  FPicture.Assign(Value);
end;


procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AdvStringGrid1.GetInterfacedCell(2, 2).Free;
  AdvStringGrid1.GetInterfacedCell(1, 3).Free;
  AdvStringGrid1.GetInterfacedCell(2, 3).Free;
  AdvStringGrid1.GetInterfacedCell(3, 3).Free;
  AdvStringGrid1.GetInterfacedCell(1, 4).Free;
  AdvStringGrid1.GetInterfacedCell(2, 4).Free;
  AdvStringGrid1.GetInterfacedCell(3, 4).Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  sg: TSimpleGraphicCell;
  cg: TComplexGradientCell;
  ig: TImageCell;
  i: integer;
begin
  for i := 1 to AdvStringGrid1.ColCount - 1 do
    AdvStringGrid1.Cells[i, 0] := 'Column ' + inttostr(i);

  sg := TSimpleGraphicCell.Create;
  AdvStringGrid1.AddInterfacedCell(2, 2, sg);

  cg := TComplexGradientCell.Create;
  cg.StartColor := clBlue;
  cg.EndColor := clAqua;
  cg.GradientMode := LinearGradientModeHorizontal;
  AdvStringGrid1.AddInterfacedCell(1, 3, cg);

  advstringgrid1.Cells[2, 3] := 'Complex Gradient';
  advstringgrid1.Alignments[2, 3] := taCenter;
  advstringgrid1.VAlignment := vtaCenter;
  advstringgrid1.FontStyles[2, 3] := [fsBold];
  advstringgrid1.FontColors[2, 3] := clWhite;
  advstringgrid1.WordWraps[2, 3] := false;

  cg := TComplexGradientCell.Create;
  cg.StartColor := clRed;
  cg.EndColor := clYellow;
  cg.GradientMode := LinearGradientModeForwardDiagonal;
  AdvStringGrid1.AddInterfacedCell(2, 3, cg);

  cg := TComplexGradientCell.Create;
  cg.StartColor := clLime;
  cg.EndColor := clGreen;
  cg.GradientMode := LinearGradientModeBackwardDiagonal;
  AdvStringGrid1.AddInterfacedCell(3, 3, cg);


  ig := TImageCell.Create;
  ig.Picture.LoadFromFile('.\password.png');
  AdvStringGrid1.AddInterfacedCell(1, 4, ig);

  ig := TImageCell.Create;
  ig.Picture.LoadFromFile('.\personal.png');
  AdvStringGrid1.AddInterfacedCell(2, 4, ig);

  ig := TImageCell.Create;
  ig.Picture.LoadFromFile('.\ksmiletris.png');
  AdvStringGrid1.AddInterfacedCell(3, 4, ig);

  AdvStringGrid1.AutoSizeCells(true, 2, 2);

  AdvStringGrid1.RowHeights[3] := 64;
end;

end.
