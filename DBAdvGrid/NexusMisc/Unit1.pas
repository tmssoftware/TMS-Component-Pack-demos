unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, DBAdvGrid, ExtCtrls, DBCtrls, DB,
  ADODB, StdCtrls, DBTables, nxdb, nxllComponent, nxsdServerEngine,
  nxsrServerEngine, nx1xAutoComponent;

type
  TForm1 = class(TForm)
    DBAdvGrid1: TDBAdvGrid;
    DBNavigator1: TDBNavigator;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    nx1xAllEngines1: Tnx1xAllEngines;
    nxServerEngine1: TnxServerEngine;
    nxSession1: TnxSession;
    nxDatabase1: TnxDatabase;
    nxTable1: TnxTable;
    DataSource1: TDataSource;
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
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

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  DBAdvGrid1.ShowPictureFields:= CheckBox1.Checked;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  DBAdvGrid1.ShowMemoFields:= CheckBox2.Checked;
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
  //DBAdvGrid2.Columns[8].CheckTrue:= 'U.S.A.';
  //DBAdvGrid2.Columns[8].CheckFalse:= 'Canada';
  //DBAdvGrid2.Columns[8].CheckBoxField:= CheckBox4.checked;
end;

end.
