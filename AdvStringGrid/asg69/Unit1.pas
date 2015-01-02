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
  Dialogs, Grids, BaseGrid, AdvGrid, AdvStickyPopupMenu, Menus, AdvMenus,
  AdvMenuStylers, ImgList, AdvObj, StdCtrls;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    AdvStickyPopupMenu1: TAdvStickyPopupMenu;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    ImageList1: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1FixedDropDownClick(Sender: TObject; ACol,
      ARow: Integer; var AMenu: TPopupMenu; var KeepFixedCellHighlighted: boolean);
    procedure AdvStickyPopupMenu1CheckClick(Sender: TObject; Index: Integer; Checked: boolean);
    procedure AdvStickyPopupMenu1ItemClick(Sender: TObject; Index: Integer);
    procedure AdvStickyPopupMenu1MenuHide(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FilterColumn: integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AdvStickyPopupMenu1CheckClick(Sender: TObject; Index: Integer; Checked: boolean);

  function AppendFilter(s: string): string;
  begin
    with AdvStringGrid1.Filter.Add do
    begin
      Condition := s;
      Column := FilterColumn;
    end;
  end;

begin
  if (Index in [0..3]) then
  begin
    AdvStringGrid1.FilterActive := false;
    AdvStringGrid1.Filter.Clear;

    if AdvStickyPopupMenu1.MenuItems[0].Checked then
      AppendFilter('(<=25)');

    if AdvStickyPopupMenu1.MenuItems[1].Checked then
      AppendFilter('(>25 & <=50)');

    if AdvStickyPopupMenu1.MenuItems[2].Checked then
      AppendFilter('(>50 & <=75)');

    if AdvStickyPopupMenu1.MenuItems[3].Checked then
      AppendFilter('(>75 & <=100)');

    AdvStringGrid1.FilterActive := true;
  end;
end;

procedure TForm1.AdvStickyPopupMenu1ItemClick(Sender: TObject; Index: Integer);
begin
  if Index = 5 then
    advstringgrid1.Sort(FilterColumn, sdAscending);
  if Index = 6 then
    advstringgrid1.Sort(FilterColumn, sdDescending);
end;

procedure TForm1.AdvStickyPopupMenu1MenuHide(Sender: TObject);
begin
  AdvStringGrid1.ResetFixedCellHighlight;
end;

procedure TForm1.AdvStringGrid1FixedDropDownClick(Sender: TObject; ACol,
  ARow: Integer; var AMenu: TPopupMenu; var KeepFixedCellHighlighted: boolean);
var
  r: TRect;
  pt: TPoint;
begin
  r := AdvStringGrid1.CellRect(ACol, ARow);
  pt := Advstringgrid1.ClientToScreen(Point(r.Right - 16, r.Bottom));
  FilterColumn := ACol;
  AdvStickyPopupMenu1.ShowMenu(pt.X, pt.y);
  KeepFixedCellHighlighted := true;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i: integer;
begin
  AdvStringGrid1.RandomFill(false, 100);
  AdvStringGrid1.SortSettings.Show := true;
  AdvStringGrid1.FixedRowAlways := true;
  for i := 1 to AdvStringGrid1.ColCount - 1 do
    advstringgrid1.Cells[i, 0] := 'Col ' + inttostr(i);
end;

end.
