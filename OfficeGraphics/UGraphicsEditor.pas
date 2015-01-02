unit UGraphicsEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvOfficeComboBox, AdvGlowButton, AdvToolBar, AdvAppStyler,
  AdvToolBarStylers, AdvOfficeSelectors, ExtActns, ActnList, StdActns, ComCtrls,
  Menus, AdvMenus, AdvMenuStylers, AdvStyleIF, ExtCtrls, ImgList;

type
  TForm1 = class(TForm)
    AdvToolBarPager1: TAdvToolBarPager;
    AdvPage1: TAdvPage;
    AdvToolBar1: TAdvToolBar;
    AdvToolBar2: TAdvToolBar;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvOfficeFontSelector1: TAdvOfficeFontSelector;
    AdvOfficeFontSizeSelector1: TAdvOfficeFontSizeSelector;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    AdvOfficeColorSelector1: TAdvOfficeColorSelector;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvFormStyler1: TAdvFormStyler;
    ActionList1: TActionList;
    RichEditBold1: TRichEditBold;
    RichEditItalic1: TRichEditItalic;
    RichEditUnderline1: TRichEditUnderline;
    AdvToolBar3: TAdvToolBar;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    AdvOfficeColorSelector2: TAdvOfficeColorSelector;
    AdvPopupMenu1: TAdvPopupMenu;
    file1: TMenuItem;
    open1: TMenuItem;
    save1: TMenuItem;
    Olive1: TMenuItem;
    Silver1: TMenuItem;
    XP1: TMenuItem;
    AdvGlowMenuButton1: TAdvGlowMenuButton;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    AdvOfficeCharacterSelector1: TAdvOfficeCharacterSelector;
    AdvPage2: TAdvPage;
    Notebook1: TNotebook;
    RichEdit1: TRichEdit;
    Panel1: TPanel;
    PaintBox1: TPaintBox;
    AdvToolBar4: TAdvToolBar;
    AdvOfficePenStyleSelector1: TAdvOfficePenStyleSelector;
    AdvOfficeColorSelector3: TAdvOfficeColorSelector;
    AdvToolBar5: TAdvToolBar;
    AdvOfficeBrushStyleSelector1: TAdvOfficeBrushStyleSelector;
    AdvOfficePenWidthSelector1: TAdvOfficePenWidthSelector;
    AdvOfficeColorSelector4: TAdvOfficeColorSelector;
    AdvOfficeColorSelector5: TAdvOfficeColorSelector;
    AdvToolBar6: TAdvToolBar;
    AdvOfficeTableSelector1: TAdvOfficeTableSelector;
    AdvOfficeShadowSelector1: TAdvOfficeShadowSelector;
    AdvOfficeTableBorderSelector1: TAdvOfficeTableBorderSelector;
    AdvOfficeToolSelector1: TAdvOfficeToolSelector;
    ImageList1: TImageList;
    AdvToolBar7: TAdvToolBar;
    AdvOfficeScrollSelector1: TAdvOfficeScrollSelector;
    ImageList2: TImageList;
    procedure AdvOfficeColorSelector1SelectColor(Sender: TObject;
      AColor: TColor);
    procedure RichEdit1SelectionChange(Sender: TObject);
    procedure AdvOfficeFontSelector1Select(Sender: TObject);
    procedure AdvOfficeFontSizeSelector1Select(Sender: TObject);
    procedure AdvOfficeColorSelector2SelectColor(Sender: TObject;
      AColor: TColor);
    procedure file1Click(Sender: TObject);
    procedure AdvOfficeCharacterSelector1Select(Sender: TObject);
    procedure AdvOfficeCharacterSelector1Click(Sender: TObject);
    procedure AdvToolBarPager1Changing(Sender: TObject; FromPage,
      ToPage: Integer; var AllowChange: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure AdvOfficePenStyleSelector1Select(Sender: TObject; Index: Integer;
      Item: TAdvSelectorItem);
    procedure AdvOfficePenWidthSelector1Select(Sender: TObject; Index: Integer;
      Item: TAdvSelectorItem);
    procedure AdvOfficeBrushStyleSelector1SelectBrushStyle(Sender: TObject;
      AStyle: TBrushStyle);
    procedure AdvOfficeColorSelector3SelectColor(Sender: TObject;
      AColor: TColor);
    procedure AdvOfficeColorSelector4SelectColor(Sender: TObject;
      AColor: TColor);
    procedure AdvOfficeColorSelector5SelectColor(Sender: TObject;
      AColor: TColor);
  private
    { Private declarations }
  public
    { Public declarations }
    APen: TPen;
    ABrush: TBrush;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AdvOfficeBrushStyleSelector1SelectBrushStyle(Sender: TObject;
  AStyle: TBrushStyle);
begin
  PaintBox1.Repaint;
end;

procedure TForm1.AdvOfficeCharacterSelector1Click(Sender: TObject);
begin
  RichEdit1.SelText := AdvOfficeCharacterSelector1.SelectedChar;
end;

procedure TForm1.AdvOfficeCharacterSelector1Select(Sender: TObject);
begin
  RichEdit1.SelText := AdvOfficeCharacterSelector1.SelectedChar;
end;

procedure TForm1.AdvOfficeColorSelector1SelectColor(Sender: TObject;
  AColor: TColor);
begin
  RichEdit1.SelAttributes.Color := AColor;
end;

procedure TForm1.AdvOfficeColorSelector2SelectColor(Sender: TObject;
  AColor: TColor);
begin
  RichEdit1.Color := AColor;
end;

procedure TForm1.AdvOfficeColorSelector3SelectColor(Sender: TObject;
  AColor: TColor);
begin
  AdvOfficePenStyleSelector1.PenColor := AColor;
  PaintBox1.Repaint;
end;

procedure TForm1.AdvOfficeColorSelector4SelectColor(Sender: TObject;
  AColor: TColor);
begin
  AdvOfficeBrushStyleSelector1.BrushColor := AdvOfficeColorSelector4.SelectedColor;
  PaintBox1.Repaint;
end;

procedure TForm1.AdvOfficeColorSelector5SelectColor(Sender: TObject;
  AColor: TColor);
begin
  PaintBox1.Repaint;
end;

procedure TForm1.AdvOfficeFontSelector1Select(Sender: TObject);
begin
  RichEdit1.SelAttributes.Name := AdvOfficeFontSelector1.Text;
end;

procedure TForm1.AdvOfficeFontSizeSelector1Select(Sender: TObject);
begin
  RichEdit1.SelAttributes.Size := StrToInt(AdvOfficeFontSizeSelector1.Text);
end;

procedure TForm1.AdvOfficePenStyleSelector1Select(Sender: TObject;
  Index: Integer; Item: TAdvSelectorItem);
begin
  PaintBox1.Repaint;
end;

procedure TForm1.AdvOfficePenWidthSelector1Select(Sender: TObject;
  Index: Integer; Item: TAdvSelectorItem);
begin
  PaintBox1.Repaint;
end;

procedure TForm1.AdvToolBarPager1Changing(Sender: TObject; FromPage,
  ToPage: Integer; var AllowChange: Boolean);
begin
  notebook1.PageIndex := ToPage;
end;

procedure TForm1.file1Click(Sender: TObject);
begin
  case (Sender as TMenuItem).Tag of
  0:begin
      AdvGlowMenuButton1.Caption := 'Office 2007 Luna';
      AdvFormStyler1.Style := tsOffice2007Luna;
    end;
  1:begin
      AdvGlowMenuButton1.Caption := 'Office 2007 Obsidian';
      AdvFormStyler1.Style := tsOffice2007Obsidian;
    end;
  2:begin
      AdvGlowMenuButton1.Caption := 'Office 2003 Blue';
      AdvFormStyler1.Style := tsOffice2003Blue;
    end;
  3:begin
      AdvGlowMenuButton1.Caption := 'Office 2003 Olive';
      AdvFormStyler1.Style := tsOffice2003Olive;
    end;
  4:begin
      AdvGlowMenuButton1.Caption := 'Office 2003 Silver';
      AdvFormStyler1.Style := tsOffice2003Silver;
    end;
  5:begin
      AdvGlowMenuButton1.Caption := 'Visual Studio 2005';
      AdvFormStyler1.Style := tsWhidbey;
    end;
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  APen := TPen.Create;
  ABrush := TBrush.Create;

  AdvFormStyler1.Style := tsOffice2007Luna;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  APen.Free;
  ABrush.Free;
end;

procedure TForm1.PaintBox1Paint(Sender: TObject);
var
  r: TRect;
begin

  PaintBox1.Canvas.Brush.Style := AdvOfficeBrushStyleSelector1.SelectedBrushStyle;
  PaintBox1.Canvas.Brush.Color := AdvOfficeColorSelector4.SelectedColor;

  SetBkMode(Canvas.Handle, TRANSPARENT);
  SetBkColor(PaintBox1.Canvas.Handle, ColorToRGB(AdvOfficeColorSelector5.SelectedColor));

  r := Rect(20,20,200,200);
  PaintBox1.Canvas.FillRect(r);

  Canvas.Brush.Style := bsClear;

  PaintBox1.Canvas.Pen.Color := AdvOfficeColorSelector3.SelectedColor;
  PaintBox1.Canvas.Pen.Width := AdvOfficePenWidthSelector1.SelectedPenWidth;
  PaintBox1.Canvas.Pen.Style := AdvOfficePenStyleSelector1.SelectedPenStyle;

  PaintBox1.Canvas.Rectangle(r);

end;

procedure TForm1.RichEdit1SelectionChange(Sender: TObject);
begin
  AdvOfficeColorSelector1.SelectedColor := RichEdit1.SelAttributes.Color;
  AdvOfficeFontSelector1.Text := RichEdit1.SelAttributes.Name;
  AdvOfficeFontSizeSelector1.Text := IntToStr(RichEdit1.SelAttributes.Size);
end;

end.
