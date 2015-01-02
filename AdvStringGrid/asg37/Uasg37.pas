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
unit Uasg37;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, ImgList, StdCtrls, asgprev, Buttons, AdvObj
{$IFDEF VER140}
  , Variants
{$ENDIF}
  , XPMan;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    ImageList1: TImageList;
    AdvPreviewDialog1: TAdvPreviewDialog;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AdvStringGrid1GetAlignment(Sender: TObject; ARow,
      ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure AdvStringGrid1GetCellColor(Sender: TObject; ARow,
      ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  AdvStringGrid1.SaveFixedCells := false;
  AdvStringGrid1.loadfromcsv('cars.csv');
  AdvStringGrid1.MergeCells(1, 0, 2, 1);
  AdvStringGrid1.MergeCells(3, 0, 2, 1);
  AdvStringGrid1.Cells[1, 0] := '<p align="center"><img src="idx:0"> <b>Identification</b></p>';
  AdvStringGrid1.Cells[1, 1] := 'Brand';
  AdvStringGrid1.Cells[2, 1] := 'Type';
  AdvStringGrid1.Cells[3, 1] := 'CC';
  AdvStringGrid1.Cells[4, 1] := 'Pk';
  AdvStringGrid1.Cells[3, 0] := '<p align="center"><img src="idx:0"> <b>Power</b></p>';

  AdvStringGrid1.BtnEdit.ButtonWidth := 24;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  AdvPreviewDialog1.Execute;
end;

procedure TForm1.AdvStringGrid1GetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  if ARow > 1 then
  begin
    if odd(ARow) then
      VALign := vtaTop
    else VAlign := vtaBottom;
    if odd(ACol) then
      HAlign := taLeftJustify
    else
      HAlign := taRightJustify;
  end;

  if ARow < 2 then
    VAlign := vtaBottom;
end;

procedure TForm1.AdvStringGrid1GetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  if ARow < 2 then
    AFont.Style := [fsBold];
end;

end.
