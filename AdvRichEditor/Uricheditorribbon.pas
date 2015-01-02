unit Uricheditorribbon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvToolBar, StdActns, ActnList, AdvToolBarExt, AdvGlowButton, PNGImage,
  StdCtrls, ExtActns, AdvRichEditorToolBar, AdvScrollControl, AdvRichEditorBase,
  AdvRichEditor, AdvToolBarStylers, AdvOfficeHint, AdvAppStyler,
  PlatformDefaultStyleActnCtrls, ActnMan;

type
  TForm1 = class(TAdvToolBarForm)
    AdvGlowButton1: TAdvGlowButton;
    AdvToolBarPager1: TAdvToolBarPager;
    AdvToolBarPager11: TAdvPage;
    AdvToolBarPager12: TAdvPage;
    AdvRichEditor1: TAdvRichEditor;
    AdvRichEditorClipboardRibbonToolBar1: TAdvRichEditorClipboardRibbonToolBar;
    AdvRichEditorFontRibbonToolBar1: TAdvRichEditorFontRibbonToolBar;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvOfficeHint1: TAdvOfficeHint;
    AdvFormStyler1: TAdvFormStyler;
    AdvRichEditorParagraphRibbonToolBar1: TAdvRichEditorParagraphRibbonToolBar;
    AdvToolBar2: TAdvToolBar;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    ActionManager1: TActionManager;
    AdvRichEditorEditingRibbonToolBar1: TAdvRichEditorEditingRibbonToolBar;
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  ExtDlgs;

procedure TForm1.AdvGlowButton1Click(Sender: TObject);
var
  rb: TAdvClipboardRibbonToolBar;
begin
  rb := TAdvClipboardRibbonToolBar.Create(Self);
  rb.Parent := AdvToolBarPager11;
end;

procedure TForm1.AdvGlowButton2Click(Sender: TObject);
var
  pd: TOpenPictureDialog;
begin
  if Assigned(AdvRichEditor1) then
  begin
    pd := TOpenPictureDialog.Create(Self);
    try
      if pd.Execute then
      begin
        AdvRichEditor1.InsertImage(pd.FileName);
        AdvRichEditor1.SetFocus;
      end;
    finally
      pd.Free;
    end;
  end;
end;

procedure TForm1.AdvGlowButton3Click(Sender: TObject);
var
  url: string;
begin
  url := '';
  InputQuery('Hyperlink','URL',url);
  AdvRichEditor1.SetSelectionHyperlink(url);
end;

end.
