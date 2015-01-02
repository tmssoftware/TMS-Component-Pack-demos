unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, ExtCtrls, InspectorBar,
  DBInspectorBar, DB, DBTables, ADODB;

type
  TForm5 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    DBInspectorBar1: TDBInspectorBar;
    ADOTable1: TADOTable;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
  adotable1.Active := false;
  with dbinspectorbar1.Panels.Add do
  begin
    Caption :='Cars DB';
  end;

  dbinspectorbar1.Panels[0].DataSource := DataSource1;
  dbinspectorbar1.Panels[0].Style :=psProperties;

  with dbinspectorbar1.Panels[0].Items.Add as TDBInspectorItem do
  begin
    DataField := 'Brand';
    Caption := 'Brand';
    PropertyType := ptText;
  end;
  with dbinspectorbar1.Panels[0].Items.Add as TDBInspectorItem do
  begin
    DataField := 'Type';
    Caption := 'Type';
    PropertyType := ptText;
  end;
  with dbinspectorbar1.Panels[0].Items.Add as TDBInspectorItem do
  begin
    DataField := 'CC';
    Caption := 'CC';
    PropertyType := ptIntSpin;
    SpinMin := 0;
    SpinMax := 1001;
  end;
  with dbinspectorbar1.Panels[0].Items.Add as TDBInspectorItem do
  begin
    DataField := 'Country';
    Caption := 'Country';
    PropertyType := ptValues;
    Values.Add('France');
    Values.Add('Germany');
    Values.Add('Japan');
    Values.Add('USA');
  end;
  adotable1.Active := true;
end;

end.
