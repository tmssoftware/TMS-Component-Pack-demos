unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, DBAdvGrid, ExtCtrls, DBCtrls, DB,
  ADODB, StdCtrls, DBTables;

type
  TForm1 = class(TForm)
    DBAdvGrid1: TDBAdvGrid;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Table1: TTable;
    Table2: TTable;
    DBAdvGrid2: TDBAdvGrid;
    DataSource2: TDataSource;
    CheckBox4: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
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
begin
  Table1.Active := true;
  Table2.Active := true;
  dbadvgrid1.Colwidths[dbadvgrid1.ColCount - 2] := 256;
  dbadvgrid1.AutoSizeRows(false,4);
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  DBAdvGrid1.ShowPictureFields:= CheckBox1.Checked;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  DBAdvGrid1.ShowMemoFields:= CheckBox2.Checked;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
  DBAdvGrid2.ShowBooleanFields:= CheckBox3.Checked;
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
  DBAdvGrid2.Columns[8].CheckTrue:= 'U.S.A.';
  DBAdvGrid2.Columns[8].CheckFalse:= 'Canada';
  DBAdvGrid2.Columns[8].CheckBoxField:= CheckBox4.checked;
end;

end.
