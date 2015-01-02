unit UDemo;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvToolBar, AdvToolBarStylers, AdvPreviewMenu, CustomItemsContainer,
  AdvPreviewMenuStylers, AdvShapeButton, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, UDemoFrame, AdvGlowButton, StdCtrls, ComCtrls,
  Grids, GDIPCustomItem, ImgList, AdvOfficeHint, AdvAppStyler;

type
  TTMSForm2 = class(TAdvToolBarForm)
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    TMSFrame11: TTMSFrame1;
    AdvToolBarPager1: TAdvToolBarPager;
    AdvPage1: TAdvPage;
    AdvQuickAccessToolBar1: TAdvQuickAccessToolBar;
    AdvShapeButton1: TAdvShapeButton;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    AdvToolBar2: TAdvToolBar;
    AdvToolBar4: TAdvToolBar;
    AdvGlowButton7: TAdvGlowButton;
    AdvGlowButton8: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    ImageList1: TImageList;
    AdvToolBar3: TAdvToolBar;
    agb_Bold: TAdvGlowButton;
    agb_Underline: TAdvGlowButton;
    agb_StrickOut: TAdvGlowButton;
    agb_Italic: TAdvGlowButton;
    agb_font: TAdvGlowButton;
    FontDialog1: TFontDialog;
    AdvOfficeHint1: TAdvOfficeHint;
    AdvToolBar1: TAdvToolBar;
    ComboBox1: TComboBox;
    Label1: TLabel;
    AdvGlowButton2: TAdvGlowButton;
    ColorDialog1: TColorDialog;
    AdvFormStyler1: TAdvFormStyler;
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure TMSFrame11ImageTextItem1ItemClick(Sender: TObject;
      Item: TCustomItem);
    procedure TMSFrame11ImageTextItem2ItemClick(Sender: TObject;
      Item: TCustomItem);
    procedure TMSFrame11ImageTextItem3ItemClick(Sender: TObject;
      Item: TCustomItem);
    procedure TMSFrame11ImageTextItem4ItemClick(Sender: TObject;
      Item: TCustomItem);
    procedure TMSFrame11ImageTextItem6ItemClick(Sender: TObject;
      Item: TCustomItem);
    procedure AdvOfficeFontSizeSelector1SelectFontSize(Sender: TObject;
      ASize: Integer);
    procedure AdvOfficeFontSelector1SelectFontName(Sender: TObject;
      AName: string);
    procedure AdvOfficeTextColorSelector1SelectColor(Sender: TObject;
      AColor: TColor);
    procedure agb_BoldClick(Sender: TObject);
    procedure agb_ItalicClick(Sender: TObject);
    procedure agb_UnderlineClick(Sender: TObject);
    procedure AdvGlowButton8Click(Sender: TObject);
    procedure AdvGlowButton7Click(Sender: TObject);
    procedure agb_fontClick(Sender: TObject);
    procedure agb_StrickOutClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure AdvFormStyler1ApplyStyle(Sender: TObject; AComponent: TComponent;
      var Allow: Boolean);
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure AddValues;
    procedure ClearValues;
    procedure SaveValues(AFile: String);
    procedure LoadValues(AFile: String);
  end;

var
  TMSForm2: TTMSForm2;

implementation

{$R *.dfm}

uses
  AdvStyleIF;


procedure TTMSForm2.AddValues;
var
  I, j: Integer;
  ro,co,re,ce: Integer;
begin
  for I := 0 to StringGrid1.ColCount - 1 do
  begin
    StringGrid1.Cols[I + 1].Text := chr(I + 65);
  end;

  for I := 0 to StringGrid1.RowCount - 1 do
  begin
    StringGrid1.Rows[i + 1].Text := inttostr(I);
  end;

  ro := StringGrid1.FixedRows;
  co := StringGrid1.FixedCols;
  re := StringGrid1.RowCount - 1;
  ce := StringGrid1.ColCount - 1;

  for i := ro to re do
    for j := co to ce do
      StringGrid1.Cells[j,i] := inttostr(Random(100));
end;

procedure TTMSForm2.AdvFormStyler1ApplyStyle(Sender: TObject;
  AComponent: TComponent; var Allow: Boolean);
begin
  if Assigned(TMSFrame11.FindComponent(AComponent.Name)) then
  begin
    Allow := false;
    if AComponent is TCustomItemsContainer then
      (AComponent as TCustomItemsContainer).ApplyDefaultItemStyle;
  end;
end;

procedure TTMSForm2.AdvGlowButton1Click(Sender: TObject);
begin
  if WindowState = wsNormal then
  begin
    WindowState := wsMaximized;
    AdvGlowButton1.Caption := 'Normal';
  end
  else
  begin
    WindowState := wsNormal;
    AdvGlowButton1.Caption := 'Maximize';
  end;
end;

procedure TTMSForm2.AdvGlowButton2Click(Sender: TObject);
begin
  ColorDialog1.Color := AdvShapeButton1.Appearance.Color;
  if ColorDialog1.Execute then
  begin
    AdvShapeButton1.UseGlobalColor := True;
    AdvShapeButton1.Appearance.Color := ColorDialog1.Color;
  end;
end;

procedure TTMSForm2.AdvGlowButton4Click(Sender: TObject);
begin
  AddValues;
end;

procedure TTMSForm2.AdvGlowButton7Click(Sender: TObject);
begin
  AddValues;
end;

procedure TTMSForm2.AdvGlowButton8Click(Sender: TObject);
begin
  ClearValues;
end;

procedure TTMSForm2.AdvOfficeFontSelector1SelectFontName(Sender: TObject;
  AName: string);
begin
  StringGrid1.Font.Name := AName;
end;

procedure TTMSForm2.AdvOfficeFontSizeSelector1SelectFontSize(Sender: TObject;
  ASize: Integer);
begin
  StringGrid1.Font.Size := ASize;
end;

procedure TTMSForm2.AdvOfficeTextColorSelector1SelectColor(Sender: TObject;
  AColor: TColor);
begin
  StringGrid1.Font.Color := AColor;
end;

procedure TTMSForm2.agb_BoldClick(Sender: TObject);
begin
  if fsbold in StringGrid1.Font.Style then
    StringGrid1.Font.Style := StringGrid1.Font.Style -[fsBold]
  else
    StringGrid1.Font.Style := StringGrid1.Font.Style + [fsBold];
end;

procedure TTMSForm2.agb_fontClick(Sender: TObject);
begin
  if FontDialog1.Execute then
  begin
    StringGrid1.Font.Name := fontdialog1.Font.Name;
    StringGrid1.Font.Size := fontdialog1.Font.Size;
    StringGrid1.Font.Color := fontdialog1.Font.Color;
    StringGrid1.Font.Style := fontdialog1.Font.Style;
  end;
end;

procedure TTMSForm2.agb_ItalicClick(Sender: TObject);
begin
  if fsItalic in StringGrid1.Font.Style then
    StringGrid1.Font.Style := StringGrid1.Font.Style - [fsItalic]
  else
    StringGrid1.Font.Style := StringGrid1.Font.Style + [fsItalic];
end;

procedure TTMSForm2.agb_StrickOutClick(Sender: TObject);
begin
  if fsStrikeOut in StringGrid1.Font.Style then
    StringGrid1.Font.Style := StringGrid1.Font.Style - [fsStrikeOut]
  else
    StringGrid1.Font.Style := StringGrid1.Font.Style + [fsStrikeOut];
end;

procedure TTMSForm2.agb_UnderlineClick(Sender: TObject);
begin
  if fsUnderline in StringGrid1.Font.Style then
    StringGrid1.Font.Style := StringGrid1.Font.Style - [fsUnderline]
  else
    StringGrid1.Font.Style := StringGrid1.Font.Style + [fsUnderline];
end;

procedure TTMSForm2.ClearValues;
var
  nCol:integer;
begin
  for nCol := 0 to StringGrid1.ColCount - 1 do
    StringGrid1.Cols[nCol].Clear;
end;

procedure TTMSForm2.ComboBox1Change(Sender: TObject);
begin
  AdvFormStyler1.Metro := false;
  AdvFormStyler1.Style := tsCustom;
  AdvToolBarOfficeStyler1.Style := AdvToolbarStylers.bsCustom;
  AdvShapeButton1.UseGlobalColor := false;

  case ComboBox1.ItemIndex of
    0: AdvFormStyler1.Style := tsOffice2010Blue;
    1: AdvFormStyler1.Style := tsOffice2010Silver;
    2: AdvFormStyler1.Style := tsOffice2010Black;
    3:
    begin
      AdvFormStyler1.MetroColor := clHighlight;
      AdvFormStyler1.MetroStyle := msLight;
    end;
    4:
    begin
      AdvFormStyler1.MetroColor := clFuchsia;
      AdvFormStyler1.MetroStyle := msDark;
    end;
  end;

  AdvFormStyler1.Metro := ComboBox1.ItemIndex in [3,4];
  AdvShapeButton1.UseGlobalColor := not AdvFormStyler1.Metro;

  if AdvFormStyler1.Metro then
    AdvToolBarPager1.Caption.Caption := 'TMS software - Metro ribbon and menu'
  else
    AdvToolBarPager1.Caption.Caption := 'TMS software - Office 2010 ribbon and menu';

  if not AdvFormStyler1.Metro then
  begin
    TMSFrame11.AdvVerticalPolyList2.ApplyDefaultItemStyle;  // apply default again
    AdvShapeButton1.Appearance.Color := ColorDialog1.Color;
    AdvShapeButton1.UseGlobalColor := true;
  end;
end;

procedure TTMSForm2.FormCreate(Sender: TObject);
begin
  if Screen.PixelsPerInch <> PixelsPerInch then
    ScaleBy(Screen.PixelsPerInch, PixelsPerInch);

  StringGrid1.ColCount := 27;
  StringGrid1.RowCount := 102;

  ColorDialog1.Color := AdvShapeButton1.Appearance.ColorDownMirror;
  AdvShapeButton1.UseGlobalColor := true;

  AdvQuickAccessToolBar1.AppIconAlphaBlended := not AdvQuickAccessToolBar1.AppIconAlphaBlended;
  AddValues;
end;

procedure TTMSForm2.LoadValues(AFile: String);
var
  I: Integer;
  sl: TStringList;
begin
  sl := TStringList.Create;
  sl.LoadFromFile(AFile);
  for I := 0 to sl.Count - 1 do
    StringGrid1.Rows[i].CommaText := sl[i];
  sl.free;

  AdvToolBarPager1.Caption.Caption := 'TMS software - Office 2010 ribbon and menu ['+ExtractFileName(AFile)+']';
  AdvOfficeStatusBar1.Panels[0].Text := ExtractFileName(AFile);
end;

procedure TTMSForm2.SaveValues(AFile: String);
var
  I: Integer;
  sl: TStringList;
begin
  sl := TStringList.Create;
  for I := 0 to StringGrid1.RowCount - 1 do
    sl.Add(StringGrid1.Rows[i].CommaText);

  sl.SaveToFile(AFile);
  sl.free;
end;

procedure TTMSForm2.TMSFrame11ImageTextItem1ItemClick(Sender: TObject;
  Item: TCustomItem);
var
  fn: String;
begin
  TMSFrame11.ImageTextItem1ItemClick(Sender, Item);
  //Save as
  AdvShapeButton1.HideFrame;
  if SaveDialog1.Execute then
  begin
    fn := SaveDialog1.FileName;
    SaveValues(fn);
  end;
end;

procedure TTMSForm2.TMSFrame11ImageTextItem2ItemClick(Sender: TObject;
  Item: TCustomItem);
var
  fn: String;
begin
  TMSFrame11.ImageTextItem1ItemClick(Sender, Item);
  //open
  AdvShapeButton1.HideFrame;
  if OpenDialog1.Execute then
  begin
    fn := OpenDialog1.FileName;
    if FileExists(fn) and (UpperCase(ExtractFileExt(fn)) = '.TXT') then
      LoadValues(fn);
  end;
end;

procedure TTMSForm2.TMSFrame11ImageTextItem3ItemClick(Sender: TObject;
  Item: TCustomItem);
var
  fn: String;
begin
  TMSFrame11.ImageTextItem1ItemClick(Sender, Item);
  //Save as
  AdvShapeButton1.HideFrame;
  if SaveDialog1.Execute then
  begin
    fn := SaveDialog1.FileName;
    SaveValues(fn);
  end;
end;

procedure TTMSForm2.TMSFrame11ImageTextItem4ItemClick(Sender: TObject;
  Item: TCustomItem);
begin
  TMSFrame11.ImageTextItem1ItemClick(Sender, Item);
  AdvShapeButton1.HideFrame;
  ClearValues;
end;

procedure TTMSForm2.TMSFrame11ImageTextItem6ItemClick(Sender: TObject;
  Item: TCustomItem);
begin
  Close;
end;

end.
