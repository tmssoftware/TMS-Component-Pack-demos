unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, W7Panels, W7ListViewItems, W7Labels, ComCtrls, W7Buttons,
  ExtCtrls, W7Classes, W7Bars, W7NaviButtons, W7Images, W7ProgressBars, ImgList,
  ShellApi, Menus, OleCtrls, SHDocVw;

type
  TForm5 = class(TForm)
    W7ToolBar1: TW7ToolBar;
    W7InformationBar1: TW7InformationBar;
    W7ToolButton1: TW7ToolButton;
    W7ToolButton2: TW7ToolButton;
    Panel1: TPanel;
    Panel2: TPanel;
    W7PageSelector2: TW7PageSelector;
    W7PageSelector1: TW7PageSelector;
    W7PageSelector0: TW7PageSelector;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    HomePage: TPanel;
    OtherComponents: TPanel;
    OrderPage: TPanel;
    W7ActiveLabel1: TW7ActiveLabel;
    W7ActiveLabel2: TW7ActiveLabel;
    W7TaskItem0: TW7TaskItem;
    W7TaskItem1: TW7TaskItem;
    W7TaskItem2: TW7TaskItem;
    W7CaptionPanel1: TW7CaptionPanel;
    Label41: TLabel;
    W7CaptionPanel2: TW7CaptionPanel;
    Label2: TLabel;
    W7LeftPanel1: TW7LeftPanel;
    W7ToolButton3: TW7ToolButton;
    Label3: TLabel;
    W7ToolButton4: TW7ToolButton;
    W7PageSelector4: TW7PageSelector;
    W7PageSelector5: TW7PageSelector;
    W7PageSelector6: TW7PageSelector;
    W7PageSelector7: TW7PageSelector;
    W7Image1: TW7Image;
    W7TaskItem4: TW7TaskItem;
    W7TaskItem5: TW7TaskItem;
    Label4: TLabel;
    W7Panel1: TW7Panel;
    W7Panel2: TW7Panel;
    W7Panel3: TW7Panel;
    W7SpeedButton1: TW7SpeedButton;
    W7SpeedButton2: TW7SpeedButton;
    W7SpeedButton3: TW7SpeedButton;
    W7SpeedButton4: TW7SpeedButton;
    W7SpeedButton5: TW7SpeedButton;
    W7SpeedButton6: TW7SpeedButton;
    W7SpeedButton7: TW7SpeedButton;
    W7SpeedButton8: TW7SpeedButton;
    W7SpeedButton9: TW7SpeedButton;
    W7SpeedButton10: TW7SpeedButton;
    W7SpeedButton11: TW7SpeedButton;
    W7ActiveLabel3: TW7ActiveLabel;
    Timer1: TTimer;
    W7ProgressBar1: TW7ProgressBar;
    W7NavigationButton1: TW7NavigationButton;
    W7NavigationButton2: TW7NavigationButton;
    W7NavigationFrame1: TW7NavigationFrame;
    HelpPanel: TPanel;
    Panel3: TPanel;
    ImageList16: TImageList;
    ImageList24: TImageList;
    ImageList48: TImageList;
    W7ToolButton5: TW7ToolButton;
    SettingsMenu: TPopupMenu;
    Options1: TMenuItem;
    Ordernow1: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    W7ToolBar2: TW7ToolBar;
    Label1: TLabel;
    Label5: TLabel;
    W7Image2: TW7Image;
    W7Image3: TW7Image;
    Label6: TLabel;
    W7Image4: TW7Image;
    Label7: TLabel;
    W7TaskItem3: TW7TaskItem;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure W7PageSelector0MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure W7PageSelector0KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure W7TaskItem1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure W7TaskItem1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure W7ActiveLabel4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure W7ActiveLabel2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure W7ActiveLabel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure W7TaskItem0MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure W7TaskItem0KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Options1Click(Sender: TObject);
    procedure Ordernow1Click(Sender: TObject);
    procedure W7ToolButton5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure W7ToolButton5KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure W7ToolButton1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure W7ToolButton1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure W7ToolButton2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure W7ToolButton2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure W7TaskItem3Click(Sender: TObject);
  private
    { Private declarations }
  public
    Pages: array [0..2] of TPanel;
    CurrentPage: integer;
    WebBrowser1: TWebBrowser;
    procedure OpenPage(Index: integer);
    procedure OpenURL(URL: string);
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.FormCreate(Sender: TObject);
var
  Ver: integer;
begin
  Ver := 0;
  Pages[0] := HomePage;
  Pages[1] := OtherComponents;
  Pages[2] := OrderPage;
  CurrentPage := 0;
  OpenPage(0);
  {$IFDEF VER200}
  Ver := 13;
  {$DEFINE NEW_COMPILER}
  {$ENDIF}
  {$IFDEF VER210}
  Ver := 14;
  {$DEFINE NEW_COMPILER}
  {$ENDIF}
  if Ver >= 13 then
  begin
    {$IFDEF NEW_COMPILER}
    W7ToolBar1.Padding.Left := 3;
    W7ToolBar1.Padding.Top := 3;
    W7ToolBar1.Padding.Right := 3;
    W7ToolBar1.Padding.Bottom := 4;
    W7ToolButton1.Align := alLeft;
    W7ToolButton2.Align := alLeft;
    W7ToolButton5.Align := alRight;
    {$ENDIF}
  end;
  W7LeftPanel1.DoubleBuffered := True;
  W7Panel1.DoubleBuffered := True;
  HomePage.DoubleBuffered := True;
  OtherComponents.DoubleBuffered := True;
  OrderPage.DoubleBuffered := True;
  W7TaskItem0.DoubleBuffered := True;
  W7TaskItem1.DoubleBuffered := True;
  W7TaskItem2.DoubleBuffered := True;
  W7TaskItem4.DoubleBuffered := True;
  W7TaskItem5.DoubleBuffered := True;
  W7ToolBar1.DoubleBuffered := True;
  W7InformationBar1.DoubleBuffered := True;
  W7ToolButton1.DoubleBuffered := True;
  W7ToolButton2.DoubleBuffered := True;
  W7ToolButton3.DoubleBuffered := True;
  W7ToolButton4.DoubleBuffered := True;
  W7ToolButton5.DoubleBuffered := True;
  DoubleBuffered := True;
  WebBrowser1 := TWebBrowser.Create(OrderPage);
end;

procedure TForm5.OpenPage(Index: integer);
var
  PageSelector: TW7PageSelector;
begin
  Pages[CurrentPage].Visible := False;
  Pages[Index].Visible := True;
  Pages[Index].Parent := Self;
  PageSelector := TW7PageSelector(FindComponent('W7PageSelector' + IntToStr(Index)));
  if PageSelector <> nil then
    PageSelector.Active := True;
  CurrentPage := Index;
  if Index = 2 then
  begin
    WebBrowser1.Navigate('https://secure.element5.com/shareit/checkout.html?prognr=102300');
    WebBrowser1.ParentWindow := OrderPage.Handle;
    WebBrowser1.Align := alClient;
    WebBrowser1.Width := OrderPage.Width;
    WebBrowser1.Height := OrderPage.Height;
  end;
end;

procedure TForm5.OpenURL(URL: string);
begin
  ShellExecute(Handle, PChar('open'), PChar(URL), nil, nil, SW_NORMAL);
end;

procedure TForm5.Options1Click(Sender: TObject);
begin
  ShowMessage('Hello world!');
end;

procedure TForm5.Ordernow1Click(Sender: TObject);
begin
  OpenURL('http://www.tmssoftware.com/site/orders.asp');
end;

procedure TForm5.Timer1Timer(Sender: TObject);
begin
  W7ProgressBar1.Position := W7ProgressBar1.Position + 2;
  if W7ProgressBar1.Position >= W7ProgressBar1.Max then
    W7ProgressBar1.Position := W7ProgressBar1.Min;
  if W7ProgressBar1.Position > 80 then
    W7ProgressBar1.Style := pbsRed
  else
    W7ProgressBar1.Style := pbsBlue;

end;

procedure TForm5.W7ActiveLabel1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  OpenURL('http://www.tmssoftware.com/');
end;

procedure TForm5.W7ActiveLabel2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
    OpenURL('http://www.tmssoftware.com/site/support.asp');
end;

procedure TForm5.W7ActiveLabel4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
    OpenURL('http://www.visualpharm.com');
end;

procedure TForm5.W7PageSelector0KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    W7PageSelector0MouseUp(Sender, mbLeft, [], 0, 0);
end;

procedure TForm5.W7PageSelector0MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
    try
      OpenPage(StrToInt(TW7PageSelector(Sender).Name[Length(TW7PageSelector(Sender).Name)]));
    except
      MessageDlg('Wrong sender', mtError,[mbOK], 0);
    end;
end;

procedure TForm5.W7TaskItem0KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETuRN then
    W7TaskItem0MouseUp(Sender, mbLeft, [], 0, 0);
end;

procedure TForm5.W7TaskItem0MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
    OpenURL('http://www.tmssoftware.com/');
end;

procedure TForm5.W7TaskItem1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETuRN then
    W7TaskItem1MouseUp(Sender, mbLeft, [], 0, 0);
end;

procedure TForm5.W7TaskItem1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
    try
      OpenPage(StrToInt(TW7TaskItem(Sender).Name[Length(TW7TaskItem(Sender).Name)]));
    except
      MessageDlg('Wrong sender', mtError,[mbOK], 0);
    end;
end;

procedure TForm5.W7TaskItem3Click(Sender: TObject);
begin
  ShowMessage('Perform the search command here');
end;

procedure TForm5.W7ToolButton1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    W7ToolButton1MouseUp(Sender, mbLeft, [], 0, 0);
end;

procedure TForm5.W7ToolButton1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if OpenDialog1.Execute then
    ShowMessage('Open file: ' + OpenDialog1.FileName);
end;

procedure TForm5.W7ToolButton2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    W7ToolButton2MouseUp(Sender, mbLeft, [], 0, 0);
end;

procedure TForm5.W7ToolButton2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if SaveDialog1.Execute then
    ShowMessage('Save file: ' + SaveDialog1.FileName);
end;

procedure TForm5.W7ToolButton5KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETuRN then
    W7ToolButton5MouseUp(Sender, mbLeft, [], 0, 0);
end;

procedure TForm5.W7ToolButton5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Pos: TPoint;
begin
  Pos := ClientToScreen(Point(W7ToolBar1.Left + W7ToolButton5.Left, W7ToolBar1.Top + W7ToolButton5.Top));
  if Button = mbLeft then
    SettingsMenu.Popup(Pos.X, Pos.Y + W7ToolButton5.Height + 2);
end;

end.

