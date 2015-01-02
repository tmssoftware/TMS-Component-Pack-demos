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
unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, StdCtrls, AdvObj;

type
  TForm2 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1GetColumnFilter(Sender: TObject; Column: Integer;
      Filter: TStrings);
    procedure AdvStringGrid1FilterSelect(Sender: TObject; Column,
      ItemIndex: Integer; FriendlyName: string; var FilterCondition: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.AdvStringGrid1FilterSelect(Sender: TObject; Column,
  ItemIndex: Integer; FriendlyName: string; var FilterCondition: string);
begin
  AdvStringGrid1.Cells[Column,0] := FilterCondition;
end;

procedure TForm2.AdvStringGrid1GetColumnFilter(Sender: TObject; Column: Integer;
  Filter: TStrings);
begin
  if Column <> 1 then
    Filter.Clear;

  if Column = 3 then
  begin
    Filter.Add('(All)');
    Filter.Add('<2000');
    Filter.Add('>2000 & <3000');
    Filter.Add('>3000');
  end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
 advstringgrid1.SaveFixedCells := false;
 advstringgrid1.LoadFromCSV('.\cars.csv');
 advstringgrid1.FilterDropDownAuto := true;
 advstringgrid1.AutoFilterUpdate := true;
 advstringgrid1.ShowHint := true;
 advstringgrid1.HintShowLargeText := true;
end;

end.
