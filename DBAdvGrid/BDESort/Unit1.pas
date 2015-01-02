unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, DB, DBTables, DBAdvGrid, StdCtrls;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    DBAdvGrid1: TDBAdvGrid;
    Query1: TQuery;
    CheckBox1: TCheckBox;
    DBAdvGrid2: TDBAdvGrid;
    DataSource2: TDataSource;
    Query2: TQuery;
    CheckBox2: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    procedure DBAdvGrid1CanSort(Sender: TObject; ACol: Integer;
      var DoSort: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
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

procedure TForm1.DBAdvGrid1CanSort(Sender: TObject; ACol: Integer;
  var DoSort: Boolean);
var
  fldname:string;
begin
  DoSort := False; // disable internal sort

  // toggle sort order
  if dbadvgrid1.SortSettings.Direction = sdAscending then
    dbadvgrid1.SortSettings.Direction := sdDescending
  else
    dbadvgrid1.SortSettings.Direction := sdAscending;

  // get field name of the column clicked
  fldname :=  query1.FieldList.Fields[ACol - 1].FieldName;

  if pos(' ',fldname) > 0 then
    fldname := 'biolife.db."'+fldname+'"';

  // add ORDER BY clause to the query
  query1.SQL.Text := 'select * from biolife.db ORDER BY '+fldname;

  if dbadvgrid1.SortSettings.Direction = sdDescending then
   query1.SQL.Text := query1.SQL.Text + ' DESC';

  query1.Active := true;
  DBAdvGrid1.SortSettings.Column := ACol;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Query1.Active:= true;
  Query2.Active:= true;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  DBAdvGrid1.SortSettings.Show:= CheckBox1.Checked;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  DBAdvGrid2.SortSettings.Show:= CheckBox2.Checked;
end;

end.
