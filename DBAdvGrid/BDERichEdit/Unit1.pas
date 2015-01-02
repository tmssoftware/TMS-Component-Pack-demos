unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, BaseGrid, AdvGrid, DBAdvGrid,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, AdvUtil, AdvObj;

type
  TForm1 = class(TForm)
    DBAdvGrid1: TDBAdvGrid;
    Table1: TTable;
    DataSource1: TDataSource;
    Database1: TDatabase;
    ItalBtn: TSpeedButton;
    BoldBtn: TSpeedButton;
    UnderBtn: TSpeedButton;
    ColorBtn: TSpeedButton;
    FontBtn: TSpeedButton;
    LeftBtn: TSpeedButton;
    CenterBtn: TSpeedButton;
    RightBtn: TSpeedButton;
    FontName: TComboBox;
    FontSize: TComboBox;
    ColorDialog1: TColorDialog;
    FontDialog1: TFontDialog;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure Database1BeforeConnect(Sender: TObject);
    procedure DBAdvGrid1GetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
    procedure BoldBtnClick(Sender: TObject);
    procedure ItalBtnClick(Sender: TObject);
    procedure UnderBtnClick(Sender: TObject);
    procedure ColorBtnClick(Sender: TObject);
    procedure FontBtnClick(Sender: TObject);
    procedure FontNameChange(Sender: TObject);
    procedure FontSizeChange(Sender: TObject);
    procedure LeftBtnClick(Sender: TObject);
    procedure CenterBtnClick(Sender: TObject);
    procedure RightBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function EnumFontsProc(var LogFont: TLogFont; var TextMetric: TTextMetric;
  FontType: Integer; Data: Pointer): Integer; stdcall;
begin
  TStrings(Data).Add(LogFont.lfFaceName);
  Result := 1;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  DC: HDC;
begin
  DC := GetDC(0);
  EnumFonts(DC, nil, @EnumFontsProc, Pointer(FontName.Items));
  ReleaseDC(0, DC);
  FontName.Sorted := True;
  FontName.ItemIndex:=0;
  FontSize.ItemIndex:=0;

  Table1.Active:= true;
end;

procedure TForm1.Database1BeforeConnect(Sender: TObject);
begin
  Database1.Params.Values['PATH'] :=
    ExtractFilePath(Application.ExeName);
end;

procedure TForm1.DBAdvGrid1GetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
begin
  if ACol = 3 then
    aEditor := edRichEdit;
end;

procedure TForm1.BoldBtnClick(Sender: TObject);
begin
  if DBAdvGrid1.InplaceRichEdit.Visible then
  if fsBold in DBAdvGrid1.InplaceRichEdit.SelAttributes.Style then
   DBAdvGrid1.InplaceRichEdit.SelAttributes.Style := DBAdvGrid1.InplaceRichEdit.SelAttributes.Style-[fsBold]
  else
   DBAdvGrid1.InplaceRichEdit.SelAttributes.Style := DBAdvGrid1.InplaceRichEdit.SelAttributes.Style+[fsBold]
end;

procedure TForm1.ItalBtnClick(Sender: TObject);
begin
  if DBAdvGrid1.InplaceRichEdit.Visible then
  if fsItalic in DBAdvGrid1.InplaceRichEdit.SelAttributes.Style then
   DBAdvGrid1.InplaceRichEdit.SelAttributes.Style := DBAdvGrid1.InplaceRichEdit.SelAttributes.Style-[fsItalic]
  else
   DBAdvGrid1.InplaceRichEdit.SelAttributes.Style := DBAdvGrid1.InplaceRichEdit.SelAttributes.Style+[fsItalic]
end;

procedure TForm1.UnderBtnClick(Sender: TObject);
begin
  if DBAdvGrid1.InplaceRichEdit.Visible then
  if fsUnderline in DBAdvGrid1.InplaceRichEdit.SelAttributes.Style then
   DBAdvGrid1.InplaceRichEdit.SelAttributes.Style := DBAdvGrid1.InplaceRichEdit.SelAttributes.Style-[fsUnderline]
  else
   DBAdvGrid1.InplaceRichEdit.SelAttributes.Style := DBAdvGrid1.InplaceRichEdit.SelAttributes.Style+[fsUnderline]
end;

procedure TForm1.ColorBtnClick(Sender: TObject);
begin
  if not DBAdvGrid1.InplaceRichEdit.Visible then Exit;

  ColorDialog1.Color := DBAdvGrid1.InplaceRichEdit.SelAttributes.Color;
  if ColorDialog1.Execute then
  begin
    DBAdvGrid1.InplaceRichEdit.SelAttributes.Color := ColorDialog1.Color;
  end;

end;

procedure TForm1.FontBtnClick(Sender: TObject);
begin
  if not DBAdvGrid1.InplaceRichEdit.Visible then Exit;

  FontDialog1.Font.Name := DBAdvGrid1.InplaceRichEdit.SelAttributes.Name;
  FontDialog1.Font.Style := DBAdvGrid1.InplaceRichEdit.SelAttributes.Style;
  FontDialog1.Font.Size := DBAdvGrid1.InplaceRichEdit.SelAttributes.Size;

  if FontDialog1.Execute then
  begin
    DBAdvGrid1.InplaceRichEdit.SelAttributes.Name := FontDialog1.Font.Name;
    DBAdvGrid1.InplaceRichEdit.SelAttributes.Style := FontDialog1.Font.Style;
    DBAdvGrid1.InplaceRichEdit.SelAttributes.Size := FontDialog1.Font.Size;
  end;
end;

procedure TForm1.FontNameChange(Sender: TObject);
begin
  if DBAdvGrid1.InplaceRichEdit.Visible then
  DBAdvGrid1.InplaceRichEdit.SelAttributes.Name := FontName.Items[FontName.ItemIndex];

end;

procedure TForm1.FontSizeChange(Sender: TObject);
begin
  if DBAdvGrid1.InplaceRichEdit.Visible then
    DBAdvGrid1.InplaceRichEdit.SelAttributes.Size := StrToInt(FontSize.Items[FontSize.ItemIndex]);

end;

procedure TForm1.LeftBtnClick(Sender: TObject);
begin
  if DBAdvGrid1.InplaceRichEdit.Visible then
    DBAdvGrid1.InplaceRichEdit.Paragraph.Alignment := taLeftJustify;

end;

procedure TForm1.CenterBtnClick(Sender: TObject);
begin
  if DBAdvGrid1.InplaceRichEdit.Visible then
    DBAdvGrid1.InplaceRichEdit.Paragraph.Alignment := taCenter;

end;

procedure TForm1.RightBtnClick(Sender: TObject);
begin
  if DBAdvGrid1.InplaceRichEdit.Visible then
    DBAdvGrid1.InplaceRichEdit.Paragraph.Alignment := taRightJustify;
end;

end.
