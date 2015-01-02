unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, BaseGrid, AdvGrid, DBAdvGrid;

type
  TForm1 = class(TForm)
    Database1: TDatabase;
    Table1: TTable;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Table1Name: TStringField;
    Table1Age: TFloatField;
    Table1Dep: TFloatField;
    Table1Country: TFloatField;
    Table2: TTable;
    Table1Place: TStringField;
    Table3: TTable;
    Table1Depart: TStringField;
    DBAdvGrid1: TDBAdvGrid;
    Query1: TQuery;
    DataSource2: TDataSource;
    DBAdvGrid2: TDBAdvGrid;
    DBGrid2: TDBGrid;
    Query1Name: TStringField;
    Query1Age: TFloatField;
    Query1Dep: TFloatField;
    Query1Country: TFloatField;
    Query1Place: TStringField;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    Query1Depart: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
