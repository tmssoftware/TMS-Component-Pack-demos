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
  Dialogs, Grids, BaseGrid, AdvGrid, StdCtrls, XPMan, AdvObj;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    Button1: TButton;
    ListBox1: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1CheckBoxClick(Sender: TObject; ACol,
      ARow: Integer; State: Boolean);
    procedure AdvStringGrid1CanEditCell(Sender: TObject; ARow,
      ACol: Integer; var CanEdit: Boolean);
    procedure AdvStringGrid1GetCellColor(Sender: TObject; ARow,
      ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  i: integer;
begin
  advstringgrid1.FixedCols := 0;
  advstringgrid1.ColWidths[0] := 20;
  advstringgrid1.Options := advstringgrid1.Options + [goRowSelect, goEditing];
  advstringgrid1.RowCount := 20;
  advstringgrid1.ShowSelection := false;
  for i := 1 to advstringgrid1.RowCount - 1 do
    advstringgrid1.AddCheckBox(0, i, false, false);
  advstringgrid1.RandomFill(false, 100);
end;

procedure TForm1.AdvStringGrid1CheckBoxClick(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
begin
  advstringgrid1.RowSelect[Arow] := State;
end;

procedure TForm1.AdvStringGrid1CanEditCell(Sender: TObject; ARow,
  ACol: Integer; var CanEdit: Boolean);
begin
  CanEdit := ACol = 0;
end;

procedure TForm1.AdvStringGrid1GetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
var
  state: boolean;
begin
  if AdvStringGrid1.GetCheckBoxState(0, ARow, state) then
  begin
    if state then
      ABrush.Color := AdvStringGrid1.SelectionColor;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i: Integer;
  state: boolean;
begin
  Listbox1.Items.Clear;

  for i := 1 to AdvStringGrid1.RowCount - 1 do
  begin
    if Advstringgrid1.GetCheckBoxState(0, i, state) then
    begin
      if state then
      begin
        AdvStringGrid1.SetCheckBoxState(0, i, false);
        ListBox1.Items.Add(AdvStringgrid1.Cells[1, i]);
      end;
    end;
  end;
  if listbox1.Items.Count = 0 then
    ShowMessage('No items selected');
  AdvStringGrid1.Invalidate;
end;

end.
