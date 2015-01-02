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
  Dialogs, Grids, BaseGrid, AdvGrid, XPMan, AdvObj;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1GroupCalc(Sender: TObject; ACol, FromRow,
      ToRow: Integer; var Res: Double);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AdvStringGrid1GroupCalc(Sender: TObject; ACol, FromRow,
  ToRow: Integer; var Res: Double);
var
  i: integer;
  m, sd: double;
begin
  // calculate mean
  m := 0;
  for i := FromRow to ToRow do
  begin
    m := m + advstringgrid1.Floats[ACol, i];
  end;

  m := m / (ToRow - FromRow + 1);

  // calculate standard deviation
  sd := 0;
  for i := FromRow to ToRow do
  begin
    sd := sd + sqr(advstringgrid1.Floats[ACol, i] - m);
  end;

  sd := sd / (ToRow - FromRow);

  Res := sqrt(sd);
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i: integer;
begin
  advstringgrid1.RowCount := 100;
  advstringgrid1.RandomFill(false, 100);
  for i := 1 to advstringgrid1.RowCount - 1 do
    advstringgrid1.Ints[1, i] := random(5);
  advStringGrid1.Grouping.Summary := true;
  AdvStringGrid1.Grouping.MergeHeader := true;
  AdvStringGrid1.Grouping.HeaderColor := $00FCEBCF;
  AdvStringGrid1.Grouping.SummaryColor := $00CEDDF2;
  advstringgrid1.Grouping.ShowGroupCount := true;
  advstringgrid1.Group(1);
  advstringgrid1.GroupCustomCalc(1);
end;

end.
