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

unit Uasg10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, AdvGrid, ImgList, ExtCtrls, StdCtrls, BaseGrid, AdvObj, XPMan;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    ImageList1: TImageList;
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1ScrollHint(Sender: TObject; Arow: Integer;
      var hintstr: string);
    procedure Timer1Timer(Sender: TObject);
  private
    feat: array[1..6] of string;
    featidx: integer;
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
  i: integer;
begin
  advstringgrid1.delimiter := ';';
  advstringgrid1.savefixedcells := false;
  advstringgrid1.loadfromcsv('cars.csv');
  advstringgrid1.autonumbercol(0);
  advstringgrid1.autosizecolumns(true, 5);

  advstringgrid1.Cells[1, 0] := 'Car';
  advstringgrid1.Cells[2, 0] := 'Type';
  advstringgrid1.Cells[3, 0] := 'Cc';
  advstringgrid1.Cells[4, 0] := 'Pk';
  advstringgrid1.Cells[5, 0] := 'Cylinder';
  advstringgrid1.Cells[6, 0] := 'Kw';
  advstringgrid1.Cells[7, 0] := 'Price';
  advstringgrid1.Cells[8, 0] := 'Country';

  for i := 1 to advstringgrid1.rowcount - 1 do
    advstringgrid1.AddDataImage(8, i, 0, haBeforeText, vaTop);

  with advstringgrid1 do
  begin
    richedit.text := 'Car list';
    richedit.selstart := 0;
    richedit.sellength := 3;
    richedit.selattributes.color := clRed;
    richedit.selattributes.style := [fsBold];
    richedit.selstart := 4;
    richedit.sellength := 4;
    richedit.selattributes.color := clBlue;
    richedit.selattributes.style := [fsItalic];
    richtocell(0, 0, richedit);
    fixedcolwidth := 60;
  end;

  feat[1] := 'Selectable grid wallpaper';
  feat[2] := 'Glyphs to indicate ascending/descending sort';
  feat[3] := 'Easy rich text display with exposed Richedit control';
  feat[4] := 'Dynamic vertical scroll hinting';
  feat[5] := 'New data dependent image type';
  feat[6] := 'Incremental key search in sorted column';
  featidx := 1;

  advstringgrid1.sortsettings.column := 1;
  advstringgrid1.sortsettings.direction := sdAscending;
  advstringgrid1.qSort;
end;

procedure TForm1.AdvStringGrid1ScrollHint(Sender: TObject; Arow: Integer;
  var hintstr: string);
begin
  hintstr := advstringgrid1.cells[1, arow] + ' ' + advstringgrid1.cells[2, arow];
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  inc(featidx);
  if featidx = 7 then featidx := 1;
  label2.caption := feat[featidx];
end;

end.
