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
  Dialogs, ComCtrls, Grids, BaseGrid, AdvGrid, StdCtrls, XPMan, AdvObj;

type
  TForm2 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    TreeView1: TTreeView;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TreeView1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TreeView1DragDrop(Sender, Source: TObject; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.AdvStringGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
  begin
    AdvStringGrid1.BeginDrag(false,5);
  end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  advstringgrid1.LinearFill;
end;

procedure TForm2.TreeView1DragDrop(Sender, Source: TObject; X, Y: Integer);
var
  node:TTreeNode;
begin
  node := treeView1.GetNodeAt(x,y);

  if Assigned(Node) then
  begin
    if Node.Level = 0 then
      treeview1.Items.AddChild(node,(source as TAdvStringGrid).selectedText)
    else
      Node.Text := (source as TAdvStringGrid).selectedText;
  end
  else
    treeview1.Items.AddChild(node,(source as TAdvStringGrid).selectedText);
end;

procedure TForm2.TreeView1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
var
  node:TTreeNode;
begin
  Accept := Source is TAdvStringGrid;
  if Accept then
  begin
    Node := TreeView1.GetNodeAt(x,y);
    if Node = nil then
      Exit;
    if Node.Level = 0 then
      Node.Expand(True);
  end;
end;

end.
