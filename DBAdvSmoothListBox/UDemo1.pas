unit UDemo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ExtCtrls, DBCtrls, StdCtrls, Grids, DBGrids,
  AdvSmoothListBox, DBAdvSmoothListBox, AdvSmoothComboBox, DBAdvSmoothComboBox,
  ComCtrls, AdvStyleIF, AdvGDIP;

type
  TForm1 = class(TForm)
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBAdvSmoothListBox1: TDBAdvSmoothListBox;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    DBAdvSmoothComboBox1: TDBAdvSmoothComboBox;
    TabSheet2: TTabSheet;
    DataSource2: TDataSource;
    ADOTable2: TADOTable;
    DBAdvSmoothListBox2: TDBAdvSmoothListBox;
    DBAdvSmoothComboBox2: TDBAdvSmoothComboBox;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBAdvSmoothListBox2ItemBkgDraw(Sender: TObject; Canvas: TCanvas;
      itemindex: Integer; itemRect: TRect; var defaultdraw: Boolean);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  ADOTable2.Active := true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ADOTable2.Active := false;
end;

procedure TForm1.DBAdvSmoothListBox2ItemBkgDraw(Sender: TObject;
  Canvas: TCanvas; itemindex: Integer; itemRect: TRect;
  var defaultdraw: Boolean);
var
  f: TGPGraphics;
  b: TGPSolidBrush;
  ir: TGPRectf;
begin
  if Odd(ItemIndex) then
  begin
    defaultdraw := false;
    f := TGPGraphics.Create(Canvas.Handle);
    f.SetSmoothingMode(SmoothingModeAntiAlias);
    b := TGPSolidBrush.Create(MakeColor(150, clWhite));
    ir := MakeRect(itemrect.Left, itemrect.Top, itemrect.Right - itemrect.Left, itemrect.Bottom - itemrect.Top);
    if DBAdvSmoothListBox2.SelectedItemIndex = itemindex then
    begin
      DBAdvSmoothListBox2.ItemAppearance.FillSelected.Fill(f, ir);
    end
    else
      f.FillRectangle(b, ir);

    b.free;
    f.Free;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  DBAdvSmoothListBox1.Items.BeginUpdate;
  DBAdvSmoothComboBox1.Items.BeginUpdate;
  DBAdvSmoothListBox2.Items.BeginUpdate;
  DBAdvSmoothComboBox2.Items.BeginUpdate;

  DBAdvSmoothListBox1.PageMode := true;
  DBAdvSmoothComboBox1.PageMode := true;
  ADOTable1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Database.mdb;Persist Security Info=False';
  ADOTable1.Active := true;
  for I := 0 to DBGrid1.Columns.Count - 1 do
  begin
    DBGrid1.Columns[I].Width := 60;
  end;


  DBAdvSmoothListBox2.PageMode := false;
  DBAdvSmoothComboBox2.PageMode := false;
  ADOTable2.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Database.mdb;Persist Security Info=False';
  ADOTable2.Active := true;
  DBAdvSmoothComboBox2.Assign(DBAdvSmoothListBox2);
  DBAdvSmoothComboBox2.SetComponentStyle(tsOffice2007Obsidian);
  DBAdvSmoothComboBox2.Fill.BorderColor := clNone;
  DBAdvSmoothListBox1.Items.EndUpdate;
  DBAdvSmoothComboBox1.Items.EndUpdate;
  DBAdvSmoothListBox2.Items.EndUpdate;
  DBAdvSmoothComboBox2.Items.EndUpdate;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
  DBAdvSmoothListBox1.DataBinding.CaptionTemplate := RadioButton1.Caption;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
  DBAdvSmoothListBox1.DataBinding.CaptionTemplate := RadioButton2.Caption;
end;

end.
