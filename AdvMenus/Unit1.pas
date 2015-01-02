{********************************************************************}
{ TMS Advanced Menus demo                                            }
{ for Delphi & C++Builder                                            }
{                                                                    }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2012                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, AdvMenus, AdvMenuStylers, ImgList, ExtCtrls, XPMan,
  StdCtrls;

type
  TForm1 = class(TForm)
    AdvMainMenu1: TAdvMainMenu;
    FIle1: TMenuItem;
    Open1: TMenuItem;
    Sace1: TMenuItem;
    SQaveas1: TMenuItem;
    Edit1: TMenuItem;
    Copy1: TMenuItem;
    paste1: TMenuItem;
    cut1: TMenuItem;
    More1: TMenuItem;
    zoomin1: TMenuItem;
    zoomin2: TMenuItem;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    AdvMenuFantasyStyler1: TAdvMenuFantasyStyler;
    N1: TMenuItem;
    Styles1: TMenuItem;
    Office1: TMenuItem;
    Fantasy1: TMenuItem;
    Office2003Blue1: TMenuItem;
    Office2003Olive1: TMenuItem;
    Office2003Silver1: TMenuItem;
    OfficeXP1: TMenuItem;
    Arctic1: TMenuItem;
    AquaBlue1: TMenuItem;
    Chocolate1: TMenuItem;
    MacOS1: TMenuItem;
    SoftSand1: TMenuItem;
    SoftSand2: TMenuItem;
    erminalGreen1: TMenuItem;
    WindowsClassic1: TMenuItem;
    ImageList1: TImageList;
    extured1: TMenuItem;
    New1: TMenuItem;
    Close1: TMenuItem;
    Clear1: TMenuItem;
    Help1: TMenuItem;
    Help2: TMenuItem;
    About1: TMenuItem;
    N2: TMenuItem;
    MSSite1: TMenuItem;
    N3: TMenuItem;
    Exit1: TMenuItem;
    Panel1: TPanel;
    AdvPopupMenu1: TAdvPopupMenu;
    Cut2: TMenuItem;
    Copy2: TMenuItem;
    Paste2: TMenuItem;
    SelectAll1: TMenuItem;
    Print1: TMenuItem;
    N4: TMenuItem;
    SendTo1: TMenuItem;
    Notepad1: TMenuItem;
    MailRecipient1: TMenuItem;
    N5: TMenuItem;
    Undo1: TMenuItem;
    Redo1: TMenuItem;
    N3FloppyA1: TMenuItem;
    N6: TMenuItem;
    Window1: TMenuItem;
    Button1: TButton;
    Office2007Luna1: TMenuItem;
    Office2007Obsidian1: TMenuItem;
    procedure Office2003Olive1Click(Sender: TObject);
    procedure Arctic1Click(Sender: TObject);
    procedure zoomin1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure Notepad1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Office2003Olive1Click(Sender: TObject);
begin
  if (AdvMainMenu1.MenuStyler = AdvMenuFantasyStyler1) then
  begin
    AdvPopupMenu1.MenuStyler := AdvMenuOfficeStyler1;
    AdvMainMenu1.MenuStyler := AdvMenuOfficeStyler1;
    (Sender as TMenuItem).Parent.Checked := true;
  end;

  AdvMenuOfficeStyler1.Style := TOfficeStyle((Sender as TMenuItem).Tag);
  (Sender as TMenuItem).Checked := true;
end;

procedure TForm1.Open1Click(Sender: TObject);
begin
  ShowMessage('Open file selected');
end;

procedure TForm1.Arctic1Click(Sender: TObject);
begin
  if (AdvMainMenu1.MenuStyler = AdvMenuOfficeStyler1) then
  begin
    AdvPopupMenu1.MenuStyler := AdvMenuFantasyStyler1;
    AdvMainMenu1.MenuStyler := AdvMenuFantasyStyler1;
    (Sender as TMenuItem).Parent.Checked := true;
  end;

  AdvMenuFantasyStyler1.Style := TFantasyStyle((Sender as TMenuItem).Tag);
  (Sender as TMenuItem).Checked := true;
end;

procedure TForm1.zoomin1Click(Sender: TObject);
begin
 if ((Sender as TMenuItem).Checked = false) then
  (Sender as TMenuItem).Checked := true
 else
  (Sender as TMenuItem).Checked := false;
end;



procedure TForm1.About1Click(Sender: TObject);
begin
 ShowMessage('TMS Advanced Menus'#13#10'Copyright © 2004 - 2012 by tmssoftware.com');
 (Sender as TMenuItem).Caption := 'About new';
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  // Make sure that the menu that is assigned to the styler is the mainmenu
  // to cause menu updates when the styler changes. The popupmenu does not need forced updates
  AdvMenuOfficeStyler1.Menu := AdvMainMenu1;
  AdvMenuFantasyStyler1.Menu := AdvMainMenu1;
end;

procedure TForm1.Notepad1Click(Sender: TObject);
begin
  WinExec('notepad',SW_SHOW)
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  mnu,mnus:TMenuItem;

begin
  mnu := TMenuitem.Create(advmainmenu1);
  mnu.Caption := 'New Menu';

  mnus := TMenuitem.Create(advmainmenu1);
  mnus.Caption := 'New Sub Menu';

  advmainmenu1.BeginUpdate;
  advmainmenu1.items.Add(mnu);
  advmainmenu1.Items[4].Add(mnus);
  advmainmenu1.EndUpdate;

  Button1.Enabled := false;


end;


end.
