{*************************************************************************}
{ TMS ToolBars component                                                  }
{ for Delphi & C++Builder                                                 }
{                                                                         }
{ written by TMS Software                                                 }
{           copyright © 2006 - 2012                                       }
{           Email : info@tmssoftware.com                                  }
{           Web : http://www.tmssoftware.com                              }
{                                                                         }
{ The source code is given as is. The author is not responsible           }
{ for any possible damage done due to the use of this code.               }
{ The component can be freely used in any application. The complete       }
{ source code remains property of the author and may not be distributed,  }
{ published, given or sold in any form as such. No parts of the source    }
{ code can be included in any other component or application without      }
{ written authorization of the author.                                    }
{*************************************************************************}

unit UOffice2007;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvToolBar, AdvToolBarStylers, AdvGlowButton, Menus, AdvMenus,
  ImgList, AdvOfficeHint, AdvMenuStylers, StdCtrls, ExtCtrls,Math, ExtActns,
  StdActns, ActnList, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPreviewMenu, AdvPreviewMenuStylers, ComCtrls, AdvShapeButton
  {$IFDEF VER150}
  ,XPMan
  {$ENDIF}
  {$IFDEF VER160}
  ,XPMan
  {$ENDIF}
  {$IFDEF VER170}
  ,XPMan
  {$ENDIF}
  {$IFDEF VER180}
  ,XPMan
  {$ENDIF}
  ;

type
  TAppAdvShapeButton = class(TAdvShapeButton);
  Ts = class(TadvtoolbarForm)
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvToolBarPager1: TAdvToolBarPager;
    AdvPage1: TAdvPage;
    AdvToolBar2: TAdvToolBar;
    agb_Paste: TAdvGlowButton;
    AdvToolBar3: TAdvToolBar;
    agb_Bold: TAdvGlowButton;
    AdvToolBar5: TAdvToolBar;
    AdvToolBar6: TAdvToolBar;
    AdvPage2: TAdvPage;
    AdvToolBar1: TAdvToolBar;
    AdvGlowButton1: TAdvGlowButton;
    AdvToolBar4: TAdvToolBar;
    AdvPage3: TAdvPage;
    AdvPopupMenu1: TAdvPopupMenu;
    file1: TMenuItem;
    open1: TMenuItem;
    save1: TMenuItem;
    AdvGlowButton10: TAdvGlowButton;
    Olive1: TMenuItem;
    Silver1: TMenuItem;
    XP1: TMenuItem;
    ImageList1: TImageList;
    agb_Cut: TAdvGlowButton;
    agb_Underline: TAdvGlowButton;
    agb_StrickOut: TAdvGlowButton;
    agb_Copy: TAdvGlowButton;
    agb_Clear: TAdvGlowButton;
    agb_Italic: TAdvGlowButton;
    agb_AlignLeft: TAdvGlowButton;
    agb_AlignCenter: TAdvGlowButton;
    agb_AlignRight: TAdvGlowButton;
    agb_Bullet: TAdvGlowButton;
    AdvGlowButton23: TAdvGlowButton;
    AdvGlowButton24: TAdvGlowButton;
    AdvGlowButton25: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton26: TAdvGlowButton;
    AdvGlowButton27: TAdvGlowButton;
    AdvToolBar7: TAdvToolBar;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton28: TAdvGlowButton;
    AdvGlowButton29: TAdvGlowButton;
    AdvGlowButton30: TAdvGlowButton;
    AdvGlowButton31: TAdvGlowButton;
    AdvGlowButton32: TAdvGlowButton;
    AdvGlowButton33: TAdvGlowButton;
    AdvGlowButton34: TAdvGlowButton;
    AdvToolBar8: TAdvToolBar;
    AdvGlowButton35: TAdvGlowButton;
    AdvGlowButton36: TAdvGlowButton;
    AdvGlowButton37: TAdvGlowButton;
    AdvGlowButton38: TAdvGlowButton;
    AdvGlowButton39: TAdvGlowButton;
    AdvToolBar9: TAdvToolBar;
    AdvGlowButton40: TAdvGlowButton;
    AdvGlowButton41: TAdvGlowButton;
    AdvGlowButton42: TAdvGlowButton;
    AdvGlowButton43: TAdvGlowButton;
    AdvOfficeHint1: TAdvOfficeHint;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    Panel1: TPanel;
    Office2007Silver1: TMenuItem;
    AdvPreviewMenu1: TAdvPreviewMenu;
    AdvPreviewMenuOfficeStyler1: TAdvPreviewMenuOfficeStyler;
    ImageList2: TImageList;
    ImageList3: TImageList;
    AdvQuickAccessToolBar1: TAdvQuickAccessToolBar;
    AdvGlowButton12: TAdvGlowButton;
    AdvGlowButton13: TAdvGlowButton;
    AdvPopupMenu2: TAdvPopupMenu;
    Showtoolbarontop1: TMenuItem;
    Showtoolbarbelow1: TMenuItem;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvPopupMenu3: TAdvPopupMenu;
    UsersnAddremoveandchangeusersinthenetwork1: TMenuItem;
    InternetnAllowstoconfigurehowtoconnecttotheinternet1: TMenuItem;
    GallerynViewthegalleryofuserimages1: TMenuItem;
    ImageList4: TImageList;
    AdvMenuOfficeStyler2: TAdvMenuOfficeStyler;
    Timer1: TTimer;
    RichEdit1: TRichEdit;
    AdvPopupMenu4: TAdvPopupMenu;
    MenuItem1: TMenuItem;
    ActionList1: TActionList;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    FileOpen1: TFileOpen;
    FileSaveAs1: TFileSaveAs;
    FileExit1: TFileExit;
    RichEditBold1: TRichEditBold;
    RichEditItalic1: TRichEditItalic;
    RichEditUnderline1: TRichEditUnderline;
    RichEditStrikeOut1: TRichEditStrikeOut;
    RichEditBullets1: TRichEditBullets;
    RichEditAlignLeft1: TRichEditAlignLeft;
    RichEditAlignRight1: TRichEditAlignRight;
    RichEditAlignCenter1: TRichEditAlignCenter;
    Office2003Classic1: TMenuItem;
    AdvPage5: TAdvPage;
    AdvToolBar12: TAdvToolBar;
    AdvGlowButton7: TAdvGlowButton;
    AdvGlowButton8: TAdvGlowButton;
    AdvGlowButton9: TAdvGlowButton;
    AdvGlowButton11: TAdvGlowButton;
    AdvGlowButton14: TAdvGlowButton;
    AdvGlowButton66: TAdvGlowButton;
    AdvToolBar14: TAdvToolBar;
    AdvGlowButton15: TAdvGlowButton;
    AdvGlowButton16: TAdvGlowButton;
    AdvGlowButton17: TAdvGlowButton;
    AdvToolBar16: TAdvToolBar;
    AdvGlowButton67: TAdvGlowButton;
    AdvGlowButton68: TAdvGlowButton;
    AdvGlowButton69: TAdvGlowButton;
    AdvGlowButton70: TAdvGlowButton;
    AdvGlowButton71: TAdvGlowButton;
    AdvGlowButton72: TAdvGlowButton;
    AdvGlowButton73: TAdvGlowButton;
    AdvPage6: TAdvPage;
    AdvToolBar15: TAdvToolBar;
    AdvGlowButton18: TAdvGlowButton;
    AdvGlowButton52: TAdvGlowButton;
    AdvGlowButton53: TAdvGlowButton;
    AdvToolBar17: TAdvToolBar;
    AdvGlowButton54: TAdvGlowButton;
    AdvGlowButton55: TAdvGlowButton;
    AdvGlowButton56: TAdvGlowButton;
    AdvGlowButton57: TAdvGlowButton;
    AdvGlowButton58: TAdvGlowButton;
    AdvToolBar18: TAdvToolBar;
    AdvGlowButton59: TAdvGlowButton;
    AdvGlowButton60: TAdvGlowButton;
    AdvGlowButton61: TAdvGlowButton;
    AdvToolBar19: TAdvToolBar;
    AdvGlowButton62: TAdvGlowButton;
    AdvGlowButton63: TAdvGlowButton;
    AdvGlowButton64: TAdvGlowButton;
    AdvGlowButton65: TAdvGlowButton;
    AdvGlowButton19: TAdvGlowButton;
    AdvToolBar10: TAdvToolBar;
    AdvGlowMenuButton1: TAdvGlowMenuButton;
    GlowBtn: TAdvGlowButton;
    AdvGlowButton20: TAdvGlowButton;
    AdvGlowButton21: TAdvGlowButton;
    AdvGlowButton22: TAdvGlowButton;
    AdvGlowButton44: TAdvGlowButton;
    AdvGlowButton45: TAdvGlowButton;
    AdvGlowButton46: TAdvGlowButton;
    AdvGlowButton47: TAdvGlowButton;
    AdvGlowButton48: TAdvGlowButton;
    AdvGlowButton49: TAdvGlowButton;
    AdvGlowButton50: TAdvGlowButton;
    agb_font: TAdvGlowButton;
    FontDialog1: TFontDialog;
    FontFormat: TAction;
    Filenew: TAction;
    AdvShapeButton1: TAdvShapeButton;
    AdvShapeButton2: TAdvShapeButton;
    AdvGlowButton51: TAdvGlowButton;
    WindowsVista1: TMenuItem;
    Windows71: TMenuItem;
    procedure AdvToolBar2OptionClick(Sender: TObject; ClientPoint,
      ScreenPoint: TPoint);
    procedure file1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvGlowButton24Click(Sender: TObject);
    procedure GlowBtnClick(Sender: TObject);
    procedure AdvPreviewMenu1ButtonClick(Sender: TObject; ButtonIndex: Integer);
    procedure Showtoolbarontop1Click(Sender: TObject);
    procedure Showtoolbarbelow1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure AdvGlowMenuButton1Click(Sender: TObject);
    procedure ActionList1Execute(Action: TBasicAction;
      var Handled: Boolean);
    procedure ActionList1Update(Action: TBasicAction;
      var Handled: Boolean);
    procedure Office2003Classic1Click(Sender: TObject);
    procedure WindowsXp1Click(Sender: TObject);
    procedure WhiteBayStyle1Click(Sender: TObject);
    procedure AdvGlowButton10Click(Sender: TObject);
    procedure AdvGlowButton25Click(Sender: TObject);
    procedure FontFormatExecute(Sender: TObject);
    procedure FilenewExecute(Sender: TObject);
    procedure AdvShapeButton2DblClick(Sender: TObject);
    procedure AdvToolBarPager1HelpClick(Sender: TObject);
    procedure AdvOfficeCheckBox1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  s: Ts;
  FResize: Boolean;

implementation

{$R *.dfm}


procedure Ts.FormCreate(Sender: TObject);
begin
  if Screen.PixelsPerInch <> PixelsPerInch then
    ScaleBy(Screen.PixelsPerInch, PixelsPerInch);

  //--- Force style to Luna at startup whatever setting applied at design time
  AdvToolBarOfficeStyler1.Style := bsOffice2007Obsidian;
  AdvToolBarOfficeStyler1.Style := bsOffice2007Luna;
  AdvPreviewMenuOfficeStyler1.Style := AdvPreviewMenuStylers.psOffice2007Luna;
  AdvOfficeStatusBarOfficeStyler1.Style := AdvOfficeStatusBarStylers.psOffice2007Luna;
  AdvToolBar6.CompactPicture.Assign(AdvGlowButton10.Picture);

  //--- AdvToolBarPager persistence
  AdvToolBarPager1.Persistence.Key := ExtractFileDir(ParamStr(0)) + '\Test.Ini';
  AdvToolBarPager1.Persistence.Location := plIniFile;
  AdvToolBarPager1.Persistence.Section := 'Pager';
  AdvToolBarPager1.Persistence.Enabled := True;

  //--- Restore ribbon minimized state from registry
  AdvToolBarPager1.LoadState;

  //--- Automatic Offiec 2007 compliant shortcut hint positions
  agb_Paste.ShortCutHintPos := shpAuto;
  agb_Copy.ShortCutHintPos := shpAuto;
  agb_Bold.ShortCutHintPos := shpAuto;
  agb_Underline.ShortCutHintPos := shpAuto;
  agb_StrickOut.ShortCutHintPos := shpAuto;
  agb_Italic.ShortCutHintPos := shpAuto;
  agb_AlignLeft.ShortCutHintPos := shpAuto;
  agb_AlignCenter.ShortCutHintPos := shpAuto;
  agb_AlignRight.ShortCutHintPos := shpAuto;
  agb_Bullet.ShortCutHintPos := shpAuto;
  agb_Clear.ShortCutHintPos := shpAuto;
  agb_Cut.ShortCutHintPos := shpAuto;
  agb_Font.ShortCutHintPos := shpAuto;


  AdvGlowButton23.ShortCutHintPos := shpAuto;
  AdvGlowButton22.ShortCutHintPos := shpAuto;

  //--- Disabled selection hiding
  RichEdit1.HideSelection := False;

  RichEdit1.Lines.LoadFromFile('Office2007Demo.rtf');

  with AdvToolBarPager1.TabGroups[1] do
    SetcustomColor(clYellow);

  AdvToolBar5.CompactPicture.Assign(AdvGlowButton50.Picture);


end;

procedure Ts.FormResize(Sender: TObject);
begin
  if not FResize then
  begin
    FResize := true;
    width := Max(100, Width);
    Height := Max(100, Height);
    FResize := false;
  end;
end;

procedure Ts.GlowBtnClick(Sender: TObject);
begin
  if GlowBtn.Caption = 'Glow off' then
  begin
    AdvToolBarPager1.SetGlowSpeed(1);
    GlowBtn.Caption := 'Glow on';
  end
  else
  begin
    AdvToolBarPager1.SetGlowSpeed(50);
    GlowBtn.Caption := 'Glow off';
  end;
end;

procedure Ts.Showtoolbarbelow1Click(Sender: TObject);
begin
  AdvToolBarPager1.ShowQATBelow := true;
end;

procedure Ts.Showtoolbarontop1Click(Sender: TObject);
begin
  AdvToolBarPager1.ShowQATBelow := false;
end;

procedure Ts.Timer1Timer(Sender: TObject);
begin
  if AdvOfficeStatusBar1.Panels[1].Progress.Position < 100 then
    AdvOfficeStatusBar1.Panels[1].Progress.Position :=  AdvOfficeStatusBar1.Panels[1].Progress.Position + 2
  else
   AdvOfficeStatusBar1.Panels[1].Progress.Position := 0;

end;

procedure Ts.AdvGlowButton24Click(Sender: TObject);
begin
  ShowMessage('Implement the GoTo function here');
end;

procedure Ts.AdvGlowButton25Click(Sender: TObject);
begin
  ShowMessage('Implement the Select function here');
end;

procedure Ts.AdvPreviewMenu1ButtonClick(Sender: TObject; ButtonIndex: Integer);
begin
  case ButtonIndex of
  0: Close;
  1: begin
       AdvPreviewMenu1.HideMenu;
       ShowMessage('Handle options here');
     end;
  end;
end;

procedure Ts.AdvShapeButton2DblClick(Sender: TObject);
begin
  Close;
end;

procedure Ts.AdvToolBar2OptionClick(Sender: TObject; ClientPoint,
  ScreenPoint: TPoint);
begin
  ShowMessage('Toolbar options can be made available here');
end;

procedure Ts.AdvToolBarPager1HelpClick(Sender: TObject);
begin
  ShowMessage('Help can be invoked from this button');
end;

procedure Ts.file1Click(Sender: TObject);
begin
  case (Sender as TMenuItem).Tag of
  0:begin
      AdvGlowMenuButton1.Caption := 'Office 2007 Luna';
      AdvToolBarOfficeStyler1.Style := bsOffice2007Luna;
      AdvMenuOfficeStyler1.Style := osOffice2007Luna;
      AdvPreviewMenuOfficeStyler1.Style := AdvPreviewMenuStylers.psOffice2007Luna;
      AdvOfficeStatusBarOfficeStyler1.Style := AdvOfficeStatusBarStylers.psOffice2007Luna;
      AdvMenuOfficeStyler2.Style := osOffice2007Luna;
    end;
  1:begin
      AdvGlowMenuButton1.Caption := 'Office 2007 Obsidian';
      AdvToolBarOfficeStyler1.Style := bsOffice2007Obsidian;
      AdvMenuOfficeStyler1.Style := osOffice2007Obsidian;
      AdvPreviewMenuOfficeStyler1.Style := AdvPreviewMenuStylers.psOffice2007Obsidian;
      AdvOfficeStatusBarOfficeStyler1.Style := AdvOfficeStatusBarStylers.psOffice2007Obsidian;
      AdvMenuOfficeStyler2.Style := osOffice2007Obsidian;
    end;
  2:begin
      AdvGlowMenuButton1.Caption := 'Office 2003 Blue';
      AdvToolBarOfficeStyler1.Style := bsOffice2003Blue;
      AdvMenuOfficeStyler1.Style := osOffice2003Blue;
      AdvPreviewMenuOfficeStyler1.Style := AdvPreviewMenuStylers.psOffice2003Blue;
      AdvOfficeStatusBarOfficeStyler1.Style := AdvOfficeStatusBarStylers.psOffice2003Blue;
      AdvMenuOfficeStyler2.Style := osOffice2003Blue;
    end;
  3:begin
      AdvGlowMenuButton1.Caption := 'Office 2003 Olive';
      AdvToolBarOfficeStyler1.Style := bsOffice2003Olive;
      AdvMenuOfficeStyler1.Style := osOffice2003Olive;
      AdvPreviewMenuOfficeStyler1.Style := AdvPreviewMenuStylers.psOffice2003Olive;
      AdvOfficeStatusBarOfficeStyler1.Style := AdvOfficeStatusBarStylers.psOffice2003Olive;
      AdvMenuOfficeStyler2.Style := osOffice2003Olive;
    end;
  4:begin
      AdvGlowMenuButton1.Caption := 'Office 2003 Silver';
      AdvToolBarOfficeStyler1.Style := bsOffice2003Silver;
      AdvMenuOfficeStyler1.Style := osOffice2003Silver;
      AdvPreviewMenuOfficeStyler1.Style := AdvPreviewMenuStylers.psOffice2003Silver;
      AdvOfficeStatusBarOfficeStyler1.Style := AdvOfficeStatusBarStylers.psOffice2003Silver;
      AdvMenuOfficeStyler2.Style := osOffice2003Silver;
    end;
  5:begin
      AdvGlowMenuButton1.Caption := 'Office XP';
      AdvToolBarOfficeStyler1.Style := bsWindowsXP;
      AdvMenuOfficeStyler1.Style := osOfficeXP;
      AdvPreviewMenuOfficeStyler1.Style := AdvPreviewMenuStylers.psOfficeXP;
      AdvOfficeStatusBarOfficeStyler1.Style := AdvOfficeStatusBarStylers.psWindowsXP;
      AdvMenuOfficeStyler2.Style := osOfficeXP;
    end;
  6:begin
      AdvGlowMenuButton1.Caption := 'Office 2007 Silver';
      AdvToolBarOfficeStyler1.Style := bsOffice2007Silver;
      AdvMenuOfficeStyler1.Style := osOffice2007Silver;
      AdvPreviewMenuOfficeStyler1.Style := AdvPreviewMenuStylers.psOffice2007Silver;
      AdvOfficeStatusBarOfficeStyler1.Style := AdvOfficeStatusBarStylers.psOffice2007Silver;
      AdvMenuOfficeStyler2.Style := osOffice2007Silver;
    end;

  7:begin
      AdvGlowMenuButton1.Caption := 'Office 2003 Classic';
      AdvToolBarOfficeStyler1.Style := bsOffice2003Classic;
      AdvMenuOfficeStyler1.Style := osOfficeXP;
      AdvPreviewMenuOfficeStyler1.Style := AdvPreviewMenuStylers.psOffice2003Classic;
      AdvOfficeStatusBarOfficeStyler1.Style := AdvOfficeStatusBarStylers.psOffice2003Classic;
      AdvMenuOfficeStyler2.Style := osOfficeXP;
    end;
  8:begin
      AdvGlowMenuButton1.Caption := 'Windows Vista';
      AdvToolBarOfficeStyler1.Style := bsWindowsVista;
      AdvMenuOfficeStyler1.Style := osVista;
      AdvPreviewMenuOfficeStyler1.Style := AdvPreviewMenuStylers.psWindowsVista;
      AdvOfficeStatusBarOfficeStyler1.Style := AdvOfficeStatusBarStylers.psWindowsVista;
      AdvMenuOfficeStyler2.Style := osVista;
    end;
  9:begin
      AdvGlowMenuButton1.Caption := 'Windows 7';
      AdvToolBarOfficeStyler1.Style := bsWindows7;
      AdvMenuOfficeStyler1.Style := osWindows7;
      AdvPreviewMenuOfficeStyler1.Style := AdvPreviewMenuStylers.psWindows7;
      AdvOfficeStatusBarOfficeStyler1.Style := AdvOfficeStatusBarStylers.psWindows7;
      AdvMenuOfficeStyler2.Style := osWindows7;
    end;
  end;
  with AdvToolBarPager1.TabGroups[1] do
    SetcustomColor(clYellow);
  Invalidate;
end;

procedure Ts.MenuItem1Click(Sender: TObject);
begin
  if AdvtoolBarPager1.Expanded then
    AdvToolBarPager1.Collaps
  else
    AdvToolBarPager1.Expand;
end;

procedure Ts.AdvGlowMenuButton1Click(Sender: TObject);
begin
  showmessage('Click');
end;

procedure Ts.AdvOfficeCheckBox1Click(Sender: TObject);
begin
  if AdvGlowButton51.Tag = 0 then
    AdvGlowButton51.Tag := 1
  else
    AdvGlowButton51.Tag := 0;

  AdvToolBarPager1.Win7ScenicRibbon := (AdvGlowButton51.Tag = 1);
  if AdvToolBarPager1.Win7ScenicRibbon then
  begin
    AdvToolBarPager1.TabSettings.StartMargin := 60;
    AdvToolBarOfficeStyler1.Style := bsWindows7;
    AdvPreviewMenuOfficeStyler1.Style := psWindows7;
    AdvShapeButton1.InitializeStyle;
    AdvShapeButton1.Text := '';
    AdvGlowMenuButton1.Caption := 'Windows 7';
    AdvOfficeStatusBarOfficeStyler1.Style := TOfficeStatusBarStyle(psWindowsXP);
    AdvMenuOfficeStyler1.Style := osWindows7;
    AdvMenuOfficeStyler2.Style := osWindows7;
  end
  else
  begin
    AdvToolBarPager1.TabSettings.StartMargin := 50;
    AdvToolBarOfficeStyler1.Style := bsOffice2007Luna;
    AdvPreviewMenuOfficeStyler1.Style := psOffice2007Luna;
    AdvShapeButton1.Text := 'TMS';
    AdvShapeButton1.Appearance.ShowMenuShape := false;
    AdvShapeButton1.Appearance.AssignColors(AdvShapeButton2.Appearance);
    AdvGlowMenuButton1.Caption := 'Office 2007 Luna';
    AdvOfficeStatusBarOfficeStyler1.Style := TOfficeStatusBarStyle(psOffice2007Luna);
    AdvMenuOfficeStyler1.Style := osOffice2007Luna;
    AdvMenuOfficeStyler2.Style := osOffice2007Luna;
  end;

  with AdvToolBarPager1.TabGroups[1] do
    SetcustomColor(clYellow);
end;

procedure Ts.FontFormatExecute(Sender: TObject);
begin
  if FontDialog1.Execute then
  begin
    richedit1.SelAttributes.Name := fontdialog1.Font.Name;
    richedit1.SelAttributes.Size := fontdialog1.Font.Size;
    richedit1.SelAttributes.Color := fontdialog1.Font.Color;
    richedit1.SelAttributes.Style := fontdialog1.Font.Style;
  end;
end;

procedure Ts.FilenewExecute(Sender: TObject);
begin
  richedit1.Lines.Clear;
end;

procedure Ts.ActionList1Execute(Action: TBasicAction;
  var Handled: Boolean);
begin
  if (Action = RichEditBold1) then
  begin
    RichEditBold1.ExecuteTarget(RichEdit1);
    Handled := True;
  end;

  if (Action = RichEditItalic1) then
  begin
    RichEditItalic1.ExecuteTarget(RichEdit1);
    Handled := True;
  end;

  if (Action = RichEditUnderline1) then
  begin
    RichEditUnderline1.ExecuteTarget(RichEdit1);
    Handled := True;
  end;

  if (Action = RichEditStrikeOut1) then
  begin
    RichEditStrikeOut1.ExecuteTarget(RichEdit1);
    Handled := True;
  end;

  if (Action = RichEditBullets1) then
  begin
    RichEditBullets1.ExecuteTarget(RichEdit1);
    Handled := True;
  end;

  if (Action = RichEditAlignLeft1) then
  begin
    RichEditAlignLeft1.ExecuteTarget(RichEdit1);
    Handled := True;
  end;

  if (Action = RichEditAlignRight1) then
  begin
    RichEditAlignRight1.ExecuteTarget(RichEdit1);
    Handled := True;
  end;

  if (Action = RichEditAlignCenter1) then
  begin
    RichEditAlignCenter1.ExecuteTarget(RichEdit1);
    Handled := True;
  end;

  if (Action = EditPaste1) then
  begin
    EditPaste1.ExecuteTarget(RichEdit1);
    Handled := True;
  end;

  if (Action = EditCopy1) then
  begin
    EditCopy1.ExecuteTarget(RichEdit1);
    Handled := True;
  end;

  if (Action = EditCut1) then
  begin
    EditCut1.ExecuteTarget(RichEdit1);
    Handled := True;
  end;

  if (Action = EditDelete1) then
  begin
    EditDelete1.ExecuteTarget(RichEdit1);
    Handled := True;
  end;
end;

procedure Ts.ActionList1Update(Action: TBasicAction; var Handled: Boolean);
begin
  //-- Update Actions here ie: Enable/check etc

  if (Action = FontFormat) then
  begin
    FontFormat.Enabled := True;
    FontFormat.UpdateTarget(RichEdit1);
    Handled := True;
  end;


  if (Action = RichEditBold1) then
  begin
    RichEditBold1.Enabled := True;
    RichEditBold1.UpdateTarget(RichEdit1);
    Handled := True;
  end;

  if (Action = RichEditItalic1) then
  begin
    RichEditItalic1.Enabled := True;
    RichEditItalic1.UpdateTarget(RichEdit1);
    Handled := True;
  end;

  if (Action = RichEditUnderline1) then
  begin
    RichEditUnderline1.Enabled := True;
    RichEditUnderline1.UpdateTarget(RichEdit1);
    Handled := True;
  end;

  if (Action = RichEditStrikeOut1) then
  begin
    RichEditStrikeOut1.UpdateTarget(RichEdit1);
    RichEditStrikeOut1.Enabled := True;
    Handled := True;
  end;

  if (Action = RichEditBullets1) then
  begin
    RichEditBullets1.UpdateTarget(RichEdit1);
    RichEditBullets1.Enabled := True;
    Handled := True;
  end;

  if (Action = RichEditAlignLeft1) then
  begin
    RichEditAlignLeft1.UpdateTarget(RichEdit1);
    RichEditAlignLeft1.Enabled := True;
    Handled := True;
  end;

  if (Action = RichEditAlignRight1) then
  begin
    RichEditAlignRight1.UpdateTarget(RichEdit1);
    RichEditAlignRight1.Enabled := True;
    Handled := True;
  end;

  if (Action = RichEditAlignCenter1) then
  begin
    RichEditAlignCenter1.UpdateTarget(RichEdit1);
    RichEditAlignCenter1.Enabled := True;
    Handled := True;
  end;

  if (Action = EditPaste1) then
  begin
    EditPaste1.UpdateTarget(RichEdit1);
    Handled := True;
  end;

  if (Action = EditCopy1) then
  begin
    EditCopy1.UpdateTarget(RichEdit1);
    Handled := True;
  end;

  if (Action = EditCut1) then
  begin
    EditCut1.UpdateTarget(RichEdit1);
    Handled := True;
  end;

  if (Action = EditDelete1) then
  begin
    EditDelete1.UpdateTarget(RichEdit1);
    Handled := True;
  end;
end;

procedure Ts.Office2003Classic1Click(Sender: TObject);
begin
  AdvToolBarOfficeStyler1.Style := bsOffice2003Classic;
end;

procedure Ts.WindowsXp1Click(Sender: TObject);
begin
  AdvToolBarOfficeStyler1.Style := bsWindowsXP;
end;

procedure Ts.WhiteBayStyle1Click(Sender: TObject);
begin
  AdvToolBarOfficeStyler1.Style := bsWhidbeyStyle;
end;

procedure Ts.AdvGlowButton10Click(Sender: TObject);
begin
  ShowMessage('Implement the Find function from here');
end;

end.
