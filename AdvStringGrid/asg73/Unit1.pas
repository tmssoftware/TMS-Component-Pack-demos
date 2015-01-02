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
  Dialogs, Grids, BaseGrid, AdvGrid, StdCtrls, AdvObj, XPMan;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    Button1: TButton;
    Button2: TButton;
    ListBox1: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1GetDisplText(Sender: TObject; ACol, ARow: Integer;
      var Value: string);
    procedure AdvStringGrid1CellValidate(Sender: TObject; ACol, ARow: Integer;
      var Value: string; var Valid: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AdvStringGrid1CellValidate(Sender: TObject; ACol,
  ARow: Integer; var Value: string; var Valid: Boolean);
begin
  Value := IntToStr(integer(advstringgrid1.ComboBox.Items.Objects[advstringgrid1.ComboBox.ItemIndex]));
end;

procedure TForm1.AdvStringGrid1GetDisplText(Sender: TObject; ACol,
  ARow: Integer; var Value: string);
var
  i, e: integer;
begin
  val(value, i, e);
  if e = 0 then
    Value := advstringgrid1.ComboBox.Items[i];
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  listbox1.Items.Add(advstringgrid1.Cells[advstringgrid1.Col, advstringgrid1.Row]);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  listbox1.Items.Add(advstringgrid1.GridCells[advstringgrid1.Col, advstringgrid1.Row]);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  advstringgrid1.Options := advstringgrid1.Options + [goEditing];
  advstringgrid1.DefaultEditor := edComboList;
  advstringgrid1.ComboBox.Items.AddObject('Germany', TObject(0));
  advstringgrid1.ComboBox.Items.AddObject('France', TObject(1));
  advstringgrid1.ComboBox.Items.AddObject('Spain', TObject(2));
  advstringgrid1.ComboBox.Items.AddObject('Russia', TObject(3));

  advstringgrid1.Cells[1, 1] := '0';
  advstringgrid1.Cells[1, 2] := '1';
  advstringgrid1.Cells[1, 3] := '2';
  advstringgrid1.Cells[1, 4] := '3';
end;

end.
