{*************************************************************************}
{ TAdvStringGrid demo application                                         }
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

unit Uasg14;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, AdvGrid, StdCtrls, Spin, BaseGrid, AdvObj, XPMan;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AdvStringGrid1GetCellColor(Sender: TObject; ARow,
      ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure AdvStringGrid1RightClickCell(Sender: TObject; Arow,
      Acol: Integer);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure AdvStringGrid1GetCellBorder(Sender: TObject; ARow,
      ACol: Integer; APen: TPen; var borders: TCellBorders);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
  advstringgrid1.savefixedcells := false;
  advstringgrid1.loadfromcsv('cars.csv');
  advstringgrid1.autosizecolumns(false, 10);
  advstringgrid1.insertcols(0, 1);

  advstringgrid1.colwidths[0] := 20;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Advstringgrid1.Ungroup;
end;

procedure TForm1.AdvStringGrid1GetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  if AdvStringGrid1.IsNode(arow) then
  begin
    ABrush.Color := clGray;
    AFont.Color := clWhite;
  end;
end;

procedure TForm1.AdvStringGrid1RightClickCell(Sender: TObject; Arow,
  Acol: Integer);
begin
  with AdvStringGrid1 do
    if ARow = 0 then
    begin
      Label3.Caption := Cells[ACol, 0];
      if (GroupColumn <> -1) and (ACol >= GroupColumn) then
        Inc(ACol);
      if (GroupColumn <> ACol) then
        GroupColumn := ACol;
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  AdvStringgrid1.ExpandAll;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  AdvStringgrid1.ContractAll;
end;

procedure TForm1.AdvStringGrid1GetCellBorder(Sender: TObject; ARow,
  ACol: Integer; APen: TPen; var borders: TCellBorders);
begin
  if not AdvStringgrid1.isNode(arow) and (ARow > 0) and (ACol > 0) then
    Borders := [cbLeft];
  APen.Width := 1;
  APen.Color := clSilver;
end;

end.
