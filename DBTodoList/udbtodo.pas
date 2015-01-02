unit udbtodo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Planner, TodoList, ComCtrls, StdCtrls, DB, DBTables, DBTodoList,
  Grids, DBGrids, ExtCtrls, ADODB;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBTodoList1: TDBTodoList;
    Panel1: TPanel;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    ADOTable1: TADOTable;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    procedure Planner1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBTodoList1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBTodoList1EditDone(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Planner1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := Source = DBTodoList1.List;
end;

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

procedure TForm1.DBTodoList1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vK_F2 then
  begin
    dbtodolist1.Editable := True;
    dbtodolist1.EditColumn := -1;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ADOTable1.Active := true;
end;

procedure TForm1.DBTodoList1EditDone(Sender: TObject);
begin
  dbtodolist1.EditItem.CompletionDate := Now;
  dbtodolist1.UpdateItem(dbtodolist1.EditItem);
end;

end.
