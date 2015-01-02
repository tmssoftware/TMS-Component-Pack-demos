unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, StdActns, ActnList, StdCtrls, Menus, AdvMenus,
  AdvToolBar, AdvMenuStylers, AdvToolBarStylers, StrUtils, ComCtrls, ExtActns
  {$IFDEF VER150}
  , XPMan
  {$ENDIF}
  {$IFDEF VER160}
  , XPMan
  {$ENDIF}
  {$IFDEF VER170}
  , XPMan
  {$ENDIF}
  {$IFDEF VER180}
  , XPMan, AdvGlowButton
  {$ENDIF}
  ;

type
  TForm1 = class(TForm)
    AdvDockPanel1: TAdvDockPanel;
    AdvDockPanel2: TAdvDockPanel;
    AdvDockPanel3: TAdvDockPanel;
    AdvDockPanel4: TAdvDockPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBar2: TAdvToolBar;
    AdvMainMenu1: TAdvMainMenu;
    File1: TMenuItem;
    Open1: TMenuItem;
    Save1: TMenuItem;
    SaveAs1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    Edit1: TMenuItem;
    Copy1: TMenuItem;
    Cut1: TMenuItem;
    Paste1: TMenuItem;
    ActionList1: TActionList;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    N2: TMenuItem;
    Undo1: TMenuItem;
    FileOpen1: TFileOpen;
    FileSaveAs1: TFileSaveAs;
    FileExit1: TFileExit;
    ImageList1: TImageList;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvToolBarFantasyStyler1: TAdvToolBarFantasyStyler;
    AdvMenuFantasyStyler1: TAdvMenuFantasyStyler;
    AdvToolBarButton1: TAdvToolBarButton;
    AdvToolBarButton2: TAdvToolBarButton;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarButton3: TAdvToolBarButton;
    AdvToolBarButton4: TAdvToolBarButton;
    AdvToolBarButton5: TAdvToolBarButton;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarButton6: TAdvToolBarButton;
    AdvToolBar3: TAdvToolBar;
    ComboBox1: TComboBox;
    RichEdit1: TRichEdit;
    AdvToolBar4: TAdvToolBar;
    AdvToolBarButton7: TAdvToolBarButton;
    AdvToolBarButton8: TAdvToolBarButton;
    AdvToolBarButton9: TAdvToolBarButton;
    RichEditBold1: TRichEditBold;
    RichEditItalic1: TRichEditItalic;
    RichEditUnderline1: TRichEditUnderline;
    RichEditStrikeOut1: TRichEditStrikeOut;
    RichEditBullets1: TRichEditBullets;
    RichEditAlignLeft1: TRichEditAlignLeft;
    RichEditAlignRight1: TRichEditAlignRight;
    RichEditAlignCenter1: TRichEditAlignCenter;
    AdvToolBarButton10: TAdvToolBarButton;
    AdvToolBarButton11: TAdvToolBarButton;
    AdvToolBarButton12: TAdvToolBarButton;
    AdvToolBarButton13: TAdvToolBarButton;
    AdvToolBarButton14: TAdvToolBarButton;
    AdvToolBar5: TAdvToolBar;
    AdvPopupMenu1: TAdvPopupMenu;
    Arial1: TMenuItem;
    Verdana1: TMenuItem;
    ahoma1: TMenuItem;
    imesNewRoman1: TMenuItem;
    System1: TMenuItem;
    Courier1: TMenuItem;
    AdvToolBarButton15: TAdvToolBarButton;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    procedure ComboBox1Change(Sender: TObject);
    procedure FileOpen1Accept(Sender: TObject);
    procedure FileSaveAs1Accept(Sender: TObject);
    procedure RichEdit1SelectionChange(Sender: TObject);
    procedure Arial1Click(Sender: TObject);
    procedure AdvToolBarButton15Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
{
  if combobox1.itemindex in [0..3] then
    advmainmenu1.MenuStyler := AdvMenuOfficeStyler1
  else
    advmainmenu1.MenuStyler := AdvMenuFantasyStyler1;
}

  case combobox1.itemindex of
  0:begin
      AdvToolBarOfficeStyler1.Style := bsOffice2003Blue;
      AdvMenuOfficeStyler1.Style := osOffice2003Blue;
    end;
  1:begin
      AdvToolBarOfficeStyler1.Style := bsOffice2003Silver;
      AdvMenuOfficeStyler1.Style := osOffice2003Silver;
    end;
  2:begin
      AdvToolBarOfficeStyler1.Style := bsOffice2003Olive;
      AdvMenuOfficeStyler1.Style := osOffice2003Olive;
    end;
  3:begin
      AdvToolBarOfficeStyler1.Style := bsOfficeXP;
      AdvMenuOfficeStyler1.Style := osOfficeXP;
    end;
  4:begin
      AdvToolBarFantasyStyler1.Style := bsChocolate;
      AdvMenuFantasyStyler1.Style := fsChocolate;
    end;
  5:begin
      AdvToolBarFantasyStyler1.Style := bsArctic;
      AdvMenuFantasyStyler1.Style := fsArctic;
    end;
  6:begin
      AdvToolBarFantasyStyler1.Style := bsSilverfox;
      AdvMenuFantasyStyler1.Style := fsSilverfox;
    end;
  7:begin
      AdvToolBarFantasyStyler1.Style := bsSoftsand;
      AdvMenuFantasyStyler1.Style := fsSoftsand;
    end;
  8:begin
      AdvToolBarFantasyStyler1.Style := bsAquablue;
      AdvMenuFantasyStyler1.Style := fsAquablue;
    end;
  9:begin
      AdvToolBarFantasyStyler1.Style := bsMacOS;
      AdvMenuFantasyStyler1.Style := fsMacOS;
    end;
  10:begin
      AdvToolBarFantasyStyler1.Style := bsWhidbey;
      AdvMenuFantasyStyler1.Style := fsWhidbey;
     end;
  end;

  if combobox1.itemindex in [0..3] then
  begin
    advdockpanel1.ToolBarStyler := AdvToolBarOfficeStyler1;
    advdockpanel2.ToolBarStyler := AdvToolBarOfficeStyler1;
    advdockpanel3.ToolBarStyler := AdvToolBarOfficeStyler1;
    advdockpanel4.ToolBarStyler := AdvToolBarOfficeStyler1;
  end
  else
  begin
    advdockpanel1.ToolBarStyler := AdvToolBarFantasyStyler1;
    advdockpanel2.ToolBarStyler := AdvToolBarFantasyStyler1;
    advdockpanel3.ToolBarStyler := AdvToolBarFantasyStyler1;
    advdockpanel4.ToolBarStyler := AdvToolBarFantasyStyler1;
  end;
end;

procedure TForm1.FileOpen1Accept(Sender: TObject);
begin
  richedit1.Lines.LoadFromFile(fileopen1.Dialog.FileName);
end;

procedure TForm1.FileSaveAs1Accept(Sender: TObject);
begin
  richedit1.Lines.SaveToFile(fileSaveAs1.Dialog.FileName);
end;

procedure TForm1.RichEdit1SelectionChange(Sender: TObject);
begin
  AdvToolBarButton7.Down := fsBold in richedit1.SelAttributes.Style;
  AdvToolBarButton8.Down := fsItalic in richedit1.SelAttributes.Style;
  AdvToolBarButton9.Down := fsUnderline in richedit1.SelAttributes.Style;
  AdvToolBarButton10.Down := fsStrikeOut in richedit1.SelAttributes.Style;

  case richedit1.Paragraph.Alignment of
  taCenter: AdvToolbarButton11.Down := true;
  taLeftJustify: AdvToolbarButton12.Down := true;
  taRightJustify:  AdvToolbarButton13.Down := true;
  end;

  {
  AdvToolbarButton11.Down := richedit1.Paragraph.Alignment = taCenter;
  AdvToolbarButton12.Down := richedit1.Paragraph.Alignment = taLeftJustify;
  AdvToolbarButton13.Down := richedit1.Paragraph.Alignment = taRightJustify;
  }
end;

procedure TForm1.Arial1Click(Sender: TObject);
var
  s:string;
begin
  s := (Sender as TMenuItem).Caption;
  s := StringReplace(s, '&','',[rfReplaceAll]);
  richedit1.SelAttributes.Name := s;
  AdvToolBarButton15.Caption := s;
end;

procedure TForm1.AdvGlowButton1Click(Sender: TObject);
begin
  ShowMessage('Hello world');
end;

procedure TForm1.AdvToolBarButton15Click(Sender: TObject);
var
  s:string;
begin
  s := AdvToolBarButton15.Caption;
  s := StringReplace(s, '&','',[rfReplaceAll]);
  richedit1.SelAttributes.Name := s;
end;

end.
