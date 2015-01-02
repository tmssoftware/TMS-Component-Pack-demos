unit utodoplan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Planner, TodoList, ComCtrls, StdCtrls, DB, DBTables, DBTodoList,
  Grids, DBGrids, DBPlanner, ExtCtrls
  {$IFDEF VER140}
  ,Variants, ImgList
  {$ENDIF}
  ;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    Table1: TTable;
    DBDaySource1: TDBDaySource;
    Table2: TTable;
    DataSource2: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DBTodoList1: TDBTodoList;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    DBPlanner1: TDBPlanner;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    ImageList1: TImageList;
    procedure Planner1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Planner1DragDropCell(Sender, Source: TObject; X, Y: Integer);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBTodoList1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBTodoList1EditDone(Sender: TObject);
    procedure DBTodoList1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure DBTodoList1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure DBPlanner1ItemInsert(Sender: TObject; Position, FromSel,
      FromSelPrecise, ToSel, ToSelPrecise: Integer);
    procedure DBPlanner1ItemRightClick(Sender: TObject;
      Item: TPlannerItem);
    procedure DBPlanner1ItemDelete(Sender: TObject; Item: TPlannerItem);
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

procedure TForm1.Planner1DragDropCell(Sender, Source: TObject; X,
  Y: Integer);
begin
  (Sender as TDBPlanner).SelPosition := x;
  (Sender as TDBPlanner).SelItemend := y + 1;
  (Sender as TDBPlanner).SelItemBegin := y;

  with (Sender as TDBPlanner).CreateItemAtSelection do
  begin
    CaptionText := DBTodoList1.Selected.Subject;
    Text.Assign(DBTodoList1.Selected.Notes);
    Update;
  end;
  DBTodoList1.FreeItem(DBTodoList1.Selected);
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

procedure TForm1.DBTodoList1EditDone(Sender: TObject);
begin
//  DBTodoList1.Editable := false;
end;

procedure TForm1.DBTodoList1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source = DBPlanner1);
end;

procedure TForm1.DBTodoList1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  ATodoItem: TTodoItem;

begin
  ATodoItem := dbtodolist1.CreateItem;
  with ATodoItem do
  begin
    Subject := (Source as TDBPlanner).Items.Selected.CaptionText;
    Notes.Assign((Source as TDBPlanner).Items.Selected.Text);
  end;
  DBTodoList1.UpdateItem(ATodoItem);
  with (Source as TDBPlanner) do
    if DragMove then
      FreeItem(Items.Selected);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Table1.Active := False;
  Table1.DatabaseName := GetCurrentDir;
  Table1.TableName :='tododb.db';
  Table1.Active := True;

  Table2.Active := False;
  Table2.DatabaseName := GetCurrentDir;
  Table2.TableName :='plandb.db';
  Table2.Active := True;

end;

procedure TForm1.DBPlanner1ItemInsert(Sender: TObject; Position, FromSel,
  FromSelPrecise, ToSel, ToSelPrecise: Integer);
begin
  with (Sender as TDBPlanner).CreateItemAtSelection do
  begin
    CaptionText := 'Untitled';
    Update;
  end;
end;

procedure TForm1.DBPlanner1ItemRightClick(Sender: TObject;
  Item: TPlannerItem);
var
  s: string;
begin
  s := Item.CaptionText;
  if InputQuery('Title','New title',s) then
  begin
    Item.CaptionText := s;
    Item.Update;
  end;
end;

procedure TForm1.DBPlanner1ItemDelete(Sender: TObject; Item: TPlannerItem);
begin
  (Sender as TDBPlanner).FreeItem(Item);
end;

end.
