{*************************************************************************}
{ TTodoList component                                                     }
{ for Delphi 5.0,6.0,7.0 & C++Builder 5.0,6.0                             }
{ version 1.2                                                             }
{                                                                         }
{ written by TMS Software                                                 }
{           copyright © 2001 - 2004                                       }
{           Email : info@tmssoftware.com                                  }
{           Web : http://www.tmssoftware.com                              }
{*************************************************************************}

unit udbtododemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Planner, TodoList, ComCtrls, StdCtrls, DB, DBTables, DBTodoList,
  Grids, DBGrids,PlannerDatePicker
  {$IFDEF VER140}
  ,Variants, AdvEdit, AdvEdBtn,
  {$ENDIF}
  ;

type
  TForm1 = class(TForm)
    CheckBox1: TCheckBox;
    DBTodoList1: TDBTodoList;
    DataSource1: TDataSource;
    Table1: TTable;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    CheckBox2: TCheckBox;
    Label2: TLabel;
    procedure CheckBox1Click(Sender: TObject);
    procedure DBTodoList1EditDone(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBTodoList1ItemInsert(Sender: TObject; ATodoItem: TTodoItem;
      var Allow: Boolean);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  DBTodoList1.Preview := CheckBox1.Checked;
  if CheckBox1.Checked then
    DBTodoList1.Columns.Items[DBTodoList1.Columns.Count -1].Free
  else
    with DBTodoList1.Columns.Add do
    begin
      TodoData := tdNotes;
      Width := 250;
    end;
end;

procedure TForm1.DBTodoList1EditDone(Sender: TObject);
begin
//  DBTodoList1.Editable := false;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   Table1.DataBaseName := GetCurrentDir;
   Table1.Active := True;
end;

procedure TForm1.DBTodoList1ItemInsert(Sender: TObject;
  ATodoItem: TTodoItem; var Allow: Boolean);
begin
  ATodoItem.DueDate := Trunc(Now) + 10;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  DBTodoList1.Sorted := CheckBox2.Checked;
end;

end.
