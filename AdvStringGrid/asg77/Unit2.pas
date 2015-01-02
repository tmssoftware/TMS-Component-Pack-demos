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
  Dialogs, Grids, BaseGrid, AdvGrid, StdCtrls, AdvEdBtn, AdvEdit, CommCtrl,
  AdvCombo, AdvSmoothPanel, AdvSmoothExpanderPanel, AdvCGrid, AdvObj, XPMan;

type
  TForm2 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    procedure AdvStringGrid1GetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1GetColumnFilter(Sender: TObject; Column: Integer;
      Filter: TStrings);
    procedure AdvStringGrid1FilterSelect(Sender: TObject; Column,
      ItemIndex: Integer; FriendlyName: string; var FilterCondition: string);
    procedure Button2Click(Sender: TObject);
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
  if FilterCondition = 'Clear' then
    FilterCondition := '';

  if (Column = 1) then
  begin
    case ItemIndex of
    1: FilterCondition := '>20 & <80';
    2: FilterCondition := '<20 | >80';
    end;
  end;

  AdvStringgrid1.Cells[Column, 0] := FriendlyName;
end;

procedure TForm2.AdvStringGrid1GetColumnFilter(Sender: TObject; Column: Integer;
  Filter: TStrings);
begin
  case Column of
  1:
    begin
      Filter.Add('Clear');
      Filter.Add('Within range');
      Filter.Add('Exceptions');
    end;
  2:
    begin
      Filter.Add('Clear');
      Filter.Add('>50');
      Filter.Add('<50');
    end;
  3:
    begin
      Filter.Add('Clear');
      Filter.Add('>20');
      Filter.Add('<20');
    end;
  4:
    begin
      Filter.Add('Clear');
      Filter.Add('>20');
      Filter.Add('<20');
    end;

  end;
end;

procedure TForm2.AdvStringGrid1GetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
begin
  if acol = 1 then
    AEditor := edNormal;
  if acol = 2 then
    AEditor := edEditBtn;
  if acol = 3 then
    AEditor := edComboEdit;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  advstringgrid1.Filter.Clear;
  with advstringgrid1.Filter.Add do
  begin
    condition := '';
    column := 3;
  end;
  advstringgrid1.FilterActive := true;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  advstringgrid1.RowCount := 100;
  advstringgrid1.RandomFill;
end;

end.
