unit UDBFormLayoutDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, DBClient, AdvDBFormPanel, StdCtrls, ExtCtrls, DBCtrls,
  ADODB, ExtDlgs, AdvGDIPicture, DBAdvGDIPPicture, Mask, AdvSpin, DBAdvSp,
  AdvEdit, DBAdvEd, AdvDBFormLayouter;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    AdvDBFormPanel1: TAdvDBFormPanel;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    DBNavigator1: TDBNavigator;
    RadioGroup1: TRadioGroup;
    ClientDataSet2: TClientDataSet;
    DataSource2: TDataSource;
    StaticText1: TStaticText;
    AdvDBFormPanel2: TAdvDBFormPanel;
    ADOTable1: TADOTable;
    DataSource3: TDataSource;
    DBNavigator2: TDBNavigator;
    DataSource4: TDataSource;
    ADOTable2: TADOTable;
    ADOConnection1: TADOConnection;
    StaticText2: TStaticText;
    ADOTable1Brand: TWideStringField;
    ADOTable1Type: TWideStringField;
    ADOTable1CC: TIntegerField;
    ADOTable1PK: TIntegerField;
    ADOTable1Cyl: TIntegerField;
    ADOTable1KW: TIntegerField;
    ADOTable1Price: TIntegerField;
    ADOTable1Available: TBooleanField;
    ADOTable1Description: TWideMemoField;
    ADOTable1Picture: TBlobField;
    ADOTable1RichText: TBlobField;
    ADOTable1CountryName: TStringField;
    ADOTable1Country: TWordField;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    Button1: TButton;
    Button2: TButton;
    OpenTextFileDialog1: TOpenTextFileDialog;
    SaveTextFileDialog1: TSaveTextFileDialog;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    AdvDBFormBox1: TAdvDBFormBox;
    TabSheet4: TTabSheet;
    DBNavigator3: TDBNavigator;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    DBNavigator4: TDBNavigator;
    StaticText18: TStaticText;
    AdvDBFormBox2: TAdvDBFormBox;
    StaticText5: TStaticText;
    DBAdvEdit1: TDBAdvEdit;
    StaticText6: TStaticText;
    DBAdvEdit2: TDBAdvEdit;
    StaticText7: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    StaticText8: TStaticText;
    DBAdvSpinEdit1: TDBAdvSpinEdit;
    StaticText9: TStaticText;
    DBAdvSpinEdit2: TDBAdvSpinEdit;
    StaticText10: TStaticText;
    DBAdvSpinEdit3: TDBAdvSpinEdit;
    StaticText11: TStaticText;
    DBAdvSpinEdit4: TDBAdvSpinEdit;
    StaticText12: TStaticText;
    DBAdvSpinEdit5: TDBAdvSpinEdit;
    StaticText13: TStaticText;
    DBCheckBox1: TDBCheckBox;
    StaticText14: TStaticText;
    DBMemo1: TDBMemo;
    StaticText15: TStaticText;
    DBAdvGDIPPicture1: TDBAdvGDIPPicture;
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure AdvDBFormPanel2ControlCreated(Sender: TObject; ALayoutItem: TLayoutItem;
      AControl: TControl; AField: TField);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CreateDataSets;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.AdvDBFormPanel2ControlCreated(Sender: TObject;
  ALayoutItem: TLayoutItem; AControl: TControl; AField: TField);
begin
  if AControl is TDBAdvGDIPPicture then
  begin
    (AControl as TDBAdvGDIPPicture).ButtonSelect.Position := bpTopLeft;
    (AControl as TDBAdvGDIPPicture).ButtonSelect.Show := sAlways;
    (AControl as TDBAdvGDIPPicture).ButtonSelect.Hint := 'Select image';
    (AControl as TDBAdvGDIPPicture).ButtonClear.Position := bpTopLeft;
    (AControl as TDBAdvGDIPPicture).ButtonClear.Show := sAlways;
    (AControl as TDBAdvGDIPPicture).ButtonClear.Hint := 'Clear image';
    (AControl as TDBAdvGDIPPicture).ShowHint := true;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  sl: TStringList;
begin
  if SaveTextFileDialog1.Execute then
  begin
    sl := TStringList.Create;
    try
      sl.Text := AdvDBFormPanel2.Layout.ToJSon;
      sl.SaveToFile(SaveTextFileDialog1.FileName);
    finally
      sl.Free;
    end;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  sl: TStringList;
begin
  if OpenTextFileDialog1.Execute then
  begin
    sl := TStringList.Create;
    try
      sl.LoadFromFile(OpenTextFileDialog1.FileName);
      AdvDBFormPanel2.Layout.FromJSon(sl.Text);
    finally
      sl.Free;
    end;
  end;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  AdvDBFormPanel2.RemoveLayout;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  AdvDBFormPanel2.RemoveLayout;
  AdvDBFormPanel2.Layout.Columns := 2;
  AdvDBFormPanel2.InitLayout;
  AdvDBFormPanel2.ShowLayout;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  AdvDBFormPanel2.RemoveLayout;
  AdvDBFormPanel2.Layout.Columns := 1;
  AdvDBFormPanel2.InitLayout;
  AdvDBFormPanel2.Layout.Items.ItemByField('RichText').DataControl := dcRichEdit;
  AdvDBFormPanel2.Layout.Items.ItemByField('Available').ColumnBreak := true;
  AdvDBFormPanel2.Layout.Items.ItemByField('Country').Free;
  AdvDBFormPanel2.ShowLayout;
end;

procedure TForm1.CreateDataSets;
begin
  with ClientDataSet1.FieldDefs do
  begin
    Clear;
    Add('ID',ftInteger, 0, True);
    Add('First Name',ftString, 20);
    Add('Last Name',ftString, 25);
    Add('Date of Birth',ftDate);
    Add('Active',ftBoolean);
  end; //with ClientDataSet1.FieldDefs
  ClientDataSet1.CreateDataSet;
  ClientDataSet1.Active := true;

  ClientDataSet1.Insert;
  ClientDataSet1.FieldByName('ID').AsInteger := 0;
  ClientDataSet1.FieldByName('First Name').AsString := 'Anders';
  ClientDataSet1.FieldByName('Last Name').AsString := 'Hejlsberg';
  ClientDataSet1.FieldByName('Date of Birth').AsDateTime := encodedate(1960,12,1);
  ClientDataSet1.FieldByName('Active').AsBoolean := true;
  ClientDataSet1.Post;

  with ClientDataSet2.FieldDefs do
  begin
    Clear;
    Add('Brand',ftString, 20);
    Add('Type',ftString, 25);
    Add('CC',ftInteger, 0, True);
    Add('Pk',ftInteger, 0, True);
    Add('Price',ftFloat, 0, True);
    Add('Description',ftMemo,100);
  end; //with ClientDataSet2.FieldDefs

  ClientDataSet2.CreateDataSet;
  ClientDataSet2.Active := true;

  ClientDataSet2.Insert;
  ClientDataSet2.FieldByName('Brand').AsString := 'BMW';
  ClientDataSet2.FieldByName('Type').AsString := '320';
  ClientDataSet2.FieldByName('CC').AsInteger := 1998;
  ClientDataSet2.FieldByName('Pk').AsInteger := 136;
  ClientDataSet2.FieldByName('Price').AsFloat := 43566.23;
  ClientDataSet2.FieldByName('Description').AsString := 'Sedan from BMW auch Münich, Germany';
  ClientDataSet2.Post;

  ClientDataSet2.Insert;
  ClientDataSet2.FieldByName('Brand').AsString := 'Mercedes';
  ClientDataSet2.FieldByName('Type').AsString := 'SL500';
  ClientDataSet2.FieldByName('CC').AsInteger := 4998;
  ClientDataSet2.FieldByName('Pk').AsInteger := 470;
  ClientDataSet2.FieldByName('Price').AsFloat := 118121.99;
  ClientDataSet2.FieldByName('Description').AsString := 'Gran Tourismo luxury car from Mercedes, Stuttgart';
  ClientDataSet2.Post;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  CreateDataSets;
  AdvDBFormPanel1.DataSource := DataSource1;
  AdoConnection1.Close;
  AdoConnection1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\CARS.mdb;Persist Security Info=False';
  Adotable1.Active := true;
  Adotable2.Active := true;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
  0:
    begin
      AdvDBFormPanel1.DataSource := DataSource1;
      DBNavigator1.DataSource := DataSource1;
    end;
  1:
    begin
      AdvDBFormPanel1.DataSource := DataSource2;
      DBNavigator1.DataSource := DataSource2;
    end;
  end;
end;

end.
