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
unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, AdvObj, BaseGrid, AdvGrid, AdvLookupBar, AdvGridLookupBar,
  AdvAppStyler, StdCtrls;

type
  TForm4 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    AdvGridLookupBar1: TAdvGridLookupBar;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}
uses
  DateUtils;

procedure TForm4.Button2Click(Sender: TObject);
var
  i: integer;
begin
  AdvGridLookupBar1.Categories.Clear;
  AdvGridLookupBar1.CategoryType := custom;
  AdvGridLookupBar1.Rotated := true;

  for i := 1 to 12 do
  with AdvGridLookupBar1.Categories.Add do
  begin
    Text := ShortMonthNames[i];
    Tag := random(advstringgrid1.RowCount);
  end;

  AdvGridLookupBar1.InitLookupBarCategories;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  AdvStringGrid1.SaveFixedCells := false;
  AdvStringGrid1.LoadFromCSV('.\cars.csv');
  AdvStringGrid1.SortSettings.Column := 1;
  AdvStringGrid1.QSort;

  AdvGridLookupBar1.Grid := AdvStringGrid1;
  AdvGridLookupBar1.Column := 1;
end;

end.
