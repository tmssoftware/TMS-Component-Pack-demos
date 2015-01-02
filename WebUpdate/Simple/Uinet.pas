
unit Uinet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, wininet,
  StdCtrls, wupdate, ComCtrls, lzexpand, Menus, ImgList, ExtCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    Help1: TMenuItem;
    Update1: TMenuItem;
    N1: TMenuItem;
    About1: TMenuItem;
    Label1: TLabel;
    Button1: TButton;
    WebUpdate1: TWebUpdate;
    CheckBox1: TCheckBox;
    Button2: TButton;
    Threadedupdate1: TMenuItem;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    proxy: TEdit;
    Label2: TLabel;
    usr: TEdit;
    Label3: TLabel;
    pwd: TEdit;
    Label5: TLabel;
    procedure WebUpdateFileProgress(Sender: TObject; filename: String;
      pos, size: Integer);
    procedure About1Click(Sender: TObject);
    procedure WebUpdateStatus(Sender: TObject; statusstr: String;
      statuscode, errcode: Integer);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure WebUpdate1ThreadUpdateDone(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.WebUpdateFileProgress(Sender: TObject; filename: String;
  pos, size: Integer);
begin
 statusbar1.simpletext:='Downloading '+filename+' '+inttostr(pos);
end;

procedure TForm1.About1Click(Sender: TObject);
begin
 messagedlg('Web Update v1.1'#13#10'© 1998-2000 by TMS software',mtInformation,[mbok],0);
end;

procedure TForm1.WebUpdateStatus(Sender: TObject; statusstr: String;
  statuscode, errcode: Integer);
begin
 statusbar1.simpletext:=statusstr;
 listbox1.items.add(statusstr);
 application.processmessages;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 webupdate1.LastURLEntry.Save := checkbox1.checked;
 webupdate1.proxyuserid:=usr.text;
 webupdate1.proxypassword:=pwd.text;
 webupdate1.Proxy := proxy.text;
 webupdate1.doupdate;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 webupdate1.LastURLEntry.Save := checkbox1.checked;
 webupdate1.proxyuserid:=usr.text;
 webupdate1.proxypassword:=pwd.text;
 webupdate1.Proxy := proxy.text;
 webupdate1.dothreadupdate;
end;



procedure TForm1.WebUpdate1ThreadUpdateDone(Sender: TObject);
begin
 messagedlg('Thread update done',mtinformation,[mbok],0);
end;

end.
