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

unit Uasg29;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, AdvGrid, ComCtrls, ToolWin, ImgList, BaseGrid, XPMan, AdvObj;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ImageList1: TImageList;
    Label1: TLabel;
    procedure AdvStringGrid1OleDrag(Sender: TObject; Arow, Acol: Integer;
      data: string; var allow: Boolean);
    procedure AdvStringGrid1OleDragStop(Sender: TObject;
      OLEEffect: Integer);
    procedure AdvStringGrid1OleDragOver(Sender: TObject; Arow,
      Acol: Integer; var allow: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1OleDragStart(Sender: TObject; Arow,
      Acol: Integer);
    procedure AdvStringGrid1OleDropCol(Sender: TObject; Arow, Acol,
      DropCol: Integer);
    procedure ToolButton1Click(Sender: TObject);
  private
    { Private declarations }
    dragcolumn: integer;
    dragsource: TObject;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Ucollist;

{$R *.DFM}

procedure TForm1.AdvStringGrid1OleDrag(Sender: TObject; Arow,
  Acol: Integer; data: string; var allow: Boolean);
begin
  allow := (arow = 0) and (acol > 0);
  dragcolumn := Acol;
end;

procedure TForm1.AdvStringGrid1OleDragStop(Sender: TObject;
  OLEEffect: Integer);
begin
  FieldChooser.ButtonListbox1.AddItem(Advstringgrid1.Cells[dragcolumn, 0], TObject(dragcolumn));
  AdvStringGrid1.HideColumn(dragcolumn);
  dragsource := nil;
end;

procedure TForm1.AdvStringGrid1OleDragOver(Sender: TObject; Arow,
  Acol: Integer; var allow: Boolean);
begin
  Allow := (dragsource = nil) and (acol > 0) and (arow = 0);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  AdvStringGrid1.SaveFixedCells := false;
  AdvStringGrid1.LoadFromCSV('cars.csv');
end;

procedure TForm1.AdvStringGrid1OleDragStart(Sender: TObject; Arow,
  Acol: Integer);
begin
  dragsource := Sender;
end;

procedure TForm1.AdvStringGrid1OleDropCol(Sender: TObject; Arow, Acol,
  DropCol: Integer);
begin
  with Advstringgrid1 do
  begin
    UnhideColumn(dropcol);
    if acol >= 0 then
      MoveColumn(DisplColIndex(dropcol), acol);
  end;
  with FieldChooser.ButtonListBox1 do Items.Delete(ItemIndex);
end;

procedure TForm1.ToolButton1Click(Sender: TObject);
begin
  if FieldChooser.Visible then
    FieldChooser.Hide
  else
    FieldChooser.Show;
end;

end.
