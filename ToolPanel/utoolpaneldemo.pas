{***********************************************************************}
{ TToolPanels component                                                 }
{ for Delphi & C++Builder                                               }
{ version 1.3                                                           }
{                                                                       }
{ written by TMS Software                                               }
{            copyright © 2003 - 2004                                    }
{            Email: info@tmssoftware.com                                }
{            Web: http://www.tmssoftware.com                            }
{***********************************************************************}

unit UToolPanelDemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ToolPanels, StdCtrls, ImgList, ComCtrls, Menus, Buttons
  {$IFDEF VER150}
  , XPMan, Buttons, Menus
  {$ENDIF}
  ;

type
  TForm1 = class(TForm)
    advtoolpaneltab1: TAdvToolPanelTab;
    AdvToolPanel1: TAdvToolPanel;
    AdvToolPanel2: TAdvToolPanel;
    Memo1: TMemo;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    AdvToolPanel4: TAdvToolPanel;
    ImageList1: TImageList;
    Panel1: TPanel;
    Button1: TButton;
    AdvToolPanel3: TAdvToolPanel;
    AdvToolPanelTab2: TAdvToolPanelTab;
    AdvToolPanel5: TAdvToolPanel;
    AdvToolPanel6: TAdvToolPanel;
    Button2: TButton;
    MonthCalendar1: TMonthCalendar;
    Button3: TButton;
    ComboBox1: TComboBox;
    Image1: TImage;
    Label3: TLabel;
    Image2: TImage;
    TreeView2: TTreeView;
    Label4: TLabel;
    Memo2: TMemo;
    CheckBox1: TCheckBox;
    Edit3: TEdit;
    SpeedButton1: TSpeedButton;
    Label5: TLabel;
    ImageList2: TImageList;
    PopupMenu1: TPopupMenu;
    Copy1: TMenuItem;
    Cut1: TMenuItem;
    Paste1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure AdvToolPanel1CaptionBtnClick(Sender: TObject;
      CaptionButtonRect: TRect);
    procedure Copy1Click(Sender: TObject);
    procedure Cut1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
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
var
  i: integer;
begin
  advtoolpaneltab1.UnHidePanels;
  advtoolpaneltab2.UnHidePanels;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  AdvToolPanelTab1.CreatePanel.Caption := 'dynamic created';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Memo1.Lines.Text := 'Hello world';
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  case combobox1.ItemIndex of
  0:
    begin
      advtoolpaneltab1.Color := clInfoBk;
      advtoolpaneltab1.ColorTo := clNone;
      advtoolpaneltab1.TabColor := clBtnFace;
      advtoolpaneltab1.TabColorTo := clNone;
      advtoolpaneltab1.TabHoverColor := clWhite;
      advtoolpaneltab1.TabHoverColorTo := clNone;
      advtoolpaneltab1.TabBorderColor := clgray;
      advtoolpaneltab1.TabGlyph := nil;      
    end;
  1:
    begin
      advtoolpaneltab1.Color := $00C08000;
      advtoolpaneltab1.ColorTo := $00FFD9B3;
      advtoolpaneltab1.TabColor := $000080FF;
      advtoolpaneltab1.TabColorTo := $0087F1EC;
      advtoolpaneltab1.TabHoverColor := $00FFD9B3;
      advtoolpaneltab1.TabHoverColorTo := clWhite;
      advtoolpaneltab1.TabBorderColor := $00C08000;
      advtoolpaneltab1.TabGlyph := nil;
    end;
  2:
    begin
      advtoolpaneltab1.Color := clSilver;
      advtoolpaneltab1.ColorTo := clWhite;
      advtoolpaneltab1.TabGlyph := image1.Picture.Bitmap;
    end;
  end;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  AdvToolPanelTab1.Persist.AutoSave := CheckBox1.Checked;
  AdvToolPanelTab2.Persist.AutoSave := CheckBox1.Checked;
end;

procedure TForm1.AdvToolPanel1CaptionBtnClick(Sender: TObject;
  CaptionButtonRect: TRect);
var
  pt: TPoint;
begin
  pt := Point(captionbuttonrect.Left,captionbuttonrect.Bottom);
  pt := AdvToolPanel1.ClientToScreen(pt);
  popupmenu1.Popup(pt.X,pt.Y);
  AdvToolPanel1.Invalidate;
end;

procedure TForm1.Copy1Click(Sender: TObject);
begin
  memo1.CopyToClipboard;
end;

procedure TForm1.Cut1Click(Sender: TObject);
begin
  memo1.CutToClipboard;
end;

procedure TForm1.Paste1Click(Sender: TObject);
begin
  memo1.PasteFromClipboard;
end;

end.
