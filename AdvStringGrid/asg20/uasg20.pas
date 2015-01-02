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

unit uasg20;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, AdvGrid, StdCtrls, ComCtrls, ImgList, BaseGrid, AdvObj, xpman;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    StatusBar1: TStatusBar;
    ImageList1: TImageList;
    CheckBox1: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure AdvStringGrid1GetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: string);
    procedure AdvStringGrid1CanSort(Sender: TObject; aCol: Integer;
      var dosort: Boolean);
    procedure AdvStringGrid1ClickSort(Sender: TObject; aCol: Integer);
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
var
  i, j: integer;
begin
  with advstringgrid1 do
  begin
    for i := FixedRows to Rowcount - 1 do
      for j := FixedCols to ColCount - 1 do
        cells[j, i] := '<IMG src="idx:' + inttostr((i + j) mod 3) + '">This is <FONT color="clred">cell</FONT> <B>[' + inttostr(j) + ':' + inttostr(i) + ']</B>';

    autosizecolumns(false, 10);
    autonumbercol(0);
  end;
end;

procedure TForm1.AdvStringGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  r, c: integer;
begin
  advstringgrid1.mousetocell(x, y, c, r);
  if (c >= 0) and (r >= 0) then
    statusbar1.simpletext := advstringgrid1.strippedcells[c, r];
end;

procedure TForm1.AdvStringGrid1GetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
  if checkbox1.checked then aStyle := ssAlphabetic else aStyle := ssHtml;
end;

procedure TForm1.AdvStringGrid1CanSort(Sender: TObject; aCol: Integer;
  var dosort: Boolean);
begin
  advstringgrid1.cursor := crHourGlass;
end;

procedure TForm1.AdvStringGrid1ClickSort(Sender: TObject; aCol: Integer);
begin
  advstringgrid1.cursor := crDefault;
end;

end.
