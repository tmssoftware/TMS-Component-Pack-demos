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
unit Uasg2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, AdvGrid, ColorGrd, BaseGrid, XPMan, AdvObj;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    Button1: TButton;
    ColorGrid1: TColorGrid;
    Label1: TLabel;
    Label2: TLabel;
    ColorGrid2: TColorGrid;
    procedure Button1Click(Sender: TObject);
    procedure AdvStringGrid1GetCellColor(Sender: TObject; ARow,
      ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure ColorGrid1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
  i, j: Integer;
begin
  for i := 1 to AdvStringGrid1.RowCount - 1 do
    for j := 1 to AdvStringGrid1.ColCount - 1 do
      AdvStringGrid1.Ints[j, i] := Random(1000) - 500;
end;

procedure TForm1.AdvStringGrid1GetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  if AdvStringGrid1.Cells[ACol, ARow] <> '' then
    if AdvStringGrid1.Ints[ACol, ARow] < 0 then
    begin
      ABrush.Color := ColorGrid2.BackgroundColor;
      AFont.Color := ColorGrid2.ForegroundColor;
    end
    else
    begin
      Abrush.Color := Colorgrid1.BackgroundColor;
      AFont.Color := Colorgrid1.ForegroundColor;
      AFont.Style := [fsBold];
    end;
end;

procedure TForm1.ColorGrid1Change(Sender: TObject);
begin
  AdvStringGrid1.Invalidate;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Button1Click(Sender);
end;

end.
