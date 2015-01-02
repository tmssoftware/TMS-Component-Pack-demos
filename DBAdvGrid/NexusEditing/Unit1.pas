unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, DBAdvGrid, ExtCtrls, DBCtrls, DB,
  ADODB, StdCtrls, nx1xAutoComponent, nxsdServerEngine, nxsrServerEngine,
  nxdb, nxllComponent;

type
  TForm1 = class(TForm)
    DBAdvGrid1: TDBAdvGrid;
    DBNavigator1: TDBNavigator;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    nxTable1: TnxTable;
    DataSource1: TDataSource;
    nxDatabase1: TnxDatabase;
    nxSession1: TnxSession;
    nxServerEngine1: TnxServerEngine;
    nx1xAllEngines1: Tnx1xAllEngines;
    procedure FormCreate(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
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
  nxDatabase1.AliasPath:= ExtractFilePath(Application.ExeName);
  nxTable1.Active:= true;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
  if CheckBox3.Checked then
    DBAdvGrid1.Options:= DBAdvGrid1.Options + [goEditing]
  else
    DBAdvGrid1.Options:= DBAdvGrid1.Options - [goEditing];
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  DBAdvGrid1.Navigation.AdvanceOnEnter:= CheckBox1.Checked;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  DBAdvGrid1.Navigation.AdvanceInsert:= CheckBox2.Checked;
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
  DBAdvGrid1.Navigation.AllowInsertRow:= CheckBox4.Checked;
end;

procedure TForm1.CheckBox5Click(Sender: TObject);
begin
  DBAdvGrid1.Navigation.AllowDeleteRow:= CheckBox5.Checked;
end;

end.
