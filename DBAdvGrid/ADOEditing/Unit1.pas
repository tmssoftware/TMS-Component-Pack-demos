unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, DBAdvGrid, ExtCtrls, DBCtrls, DB,
  ADODB, StdCtrls, AdvObj;

type
  TForm1 = class(TForm)
    DBAdvGrid1: TDBAdvGrid;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    ADOTable1Brand: TWideStringField;
    ADOTable1Type: TWideStringField;
    ADOTable1CC: TIntegerField;
    ADOTable1PK: TIntegerField;
    ADOTable1Cyl: TIntegerField;
    ADOTable1KW: TIntegerField;
    ADOTable1Price: TIntegerField;
    ADOTable1Country: TWideStringField;
    ADOTable1Available: TBooleanField;
    procedure FormCreate(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBAdvGrid1GetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
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
  adotable1.Active := false;
  adotable1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\cars.mdb;Persist Security Info=False';
  adotable1.TableName := 'Cars';
  adotable1.Active := true;

  dbadvgrid1.FloatingFooter.ColumnCalc[4] := acSum;
  dbadvgrid1.FloatingFooter.ColumnCalc[5] := acAvg;
  dbadvgrid1.FloatingFooter.ColumnCalc[6] := acMin;

  dbadvgrid1.Cells[1,0] := 'Car';
  dbadvgrid1.MergeCells(1,0,2,1);
  dbadvgrid1.Cells[3,0] := 'Performance';
  dbadvgrid1.MergeCells(3,0,4,1);
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

procedure TForm1.Button1Click(Sender: TObject);
begin
  DBAdvGrid1.CopySelectionToClipboard;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  DBAdvGrid1.PasteSelectionFromClipboard;
end;

procedure TForm1.DBAdvGrid1GetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
begin
  case ACol of
    3, 4, 5: AEditor:= edPositiveNumeric;
    6: AEditor:= edSpinEdit;
    8:
    begin
      AEditor:= edComboEdit;
      DBAdvGrid1.Combobox.Items.Add('Germany');
      DBAdvGrid1.Combobox.Items.Add('USA');
      DBAdvGrid1.Combobox.Items.Add('JAPAN');
    end;
  end;
end;

end.
