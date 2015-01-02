unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, DBAdvGrid, ExtCtrls, DBCtrls, DB,
  ADODB, StdCtrls, DBTables, IBDatabase, IBCustomDataSet, IBTable;

type
  TForm1 = class(TForm)
    DBAdvGrid1: TDBAdvGrid;
    DBNavigator1: TDBNavigator;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    IBTable1: TIBTable;
    IBTransaction1: TIBTransaction;
    IBDatabase1: TIBDatabase;
    DataSource1: TDataSource;
    Table1: TTable;
    DataSource2: TDataSource;
    DBAdvGrid2: TDBAdvGrid;
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
  if ACol = 10 then
  begin
    AEditor:= edComboEdit;
    DBAdvGrid1.Combobox.Items.Add('USA');
    DBAdvGrid1.Combobox.Items.Add('England');
    DBAdvGrid1.Combobox.Items.Add('Belgium');
    DBAdvGrid1.Combobox.Items.Add('Hong Kong');
    DBAdvGrid1.Combobox.Items.Add('Fiji');
    DBAdvGrid1.Combobox.Items.Add('Japan');
    DBAdvGrid1.Combobox.Items.Add('Switzerland');
    DBAdvGrid1.Combobox.Items.Add('Italy');
    DBAdvGrid1.Combobox.Items.Add('France');
    DBAdvGrid1.Combobox.Items.Add('Netherlands');
    DBAdvGrid1.Combobox.Items.Add('Canada');
  end;
end;

end.
