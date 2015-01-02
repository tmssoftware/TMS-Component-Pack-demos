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
unit Uasg45;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, BaseGrid, AdvGrid, ExtCtrls, StdCtrls, AdvObj, XPMan;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    Timer1: TTimer;
    Button1: TButton;
    CheckBox1: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1GetDisplText(Sender: TObject; ACol,
      ARow: Integer; var Value: string);
    procedure Timer1Timer(Sender: TObject);
    procedure AdvStringGrid1GetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: string);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    values: array[0..100] of integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to 100 do
    Values[i] := Random(1000);

  Values[50] := 123456;

  AdvStringGrid1.InitSortXRef;
end;

procedure TForm1.AdvStringGrid1GetDisplText(Sender: TObject; ACol,
  ARow: Integer; var Value: string);
begin
  if (ACol = 1) and (ARow > 0) then
    Value := InttoStr(Values[advstringgrid1.SortedRowIndex(ARow)]);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  arow: Integer;
begin
  arow := random(100);
  values[arow] := random(100);

  with advstringgrid1 do
    RepaintCell(1, UnSortedRowIndex(ARow));
end;

procedure TForm1.AdvStringGrid1GetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
  AStyle := ssNumeric;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Values[50] := 99999;
  with advstringgrid1 do
    RepaintCell(1, UnSortedRowIndex(50));
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  Timer1.Enabled := checkbox1.Checked;
end;

end.
