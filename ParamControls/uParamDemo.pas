{**************************************************************************}
{ Parameter controls demo                                                  }
{                                                                          }
{ Copyright © 2001 - 2006                                                  }
{  TMS Software                                                            }
{  Email : info@tmssoftware.com                                            }
{  Web : http://www.tmssoftware.com                                        }
{                                                                          }
{**************************************************************************}

unit uParamDemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Spin,
  paramlabel, paramchklist, paramtreeview, paramlistbox, ImgList, Menus, XPMan
  {$IFDEF VER150}
  , XPMan
  {$ENDIF}
  ;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    ParamLabel1: TParamLabel;
    ParamCheckList1: TParamCheckList;
    StatusBar1: TStatusBar;
    Button1: TButton;
    Button7: TButton;
    TabSheet4: TTabSheet;
    ParamTreeview1: TParamTreeview;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button13: TButton;
    Button14: TButton;
    SpinEdit3: TSpinEdit;
    Label5: TLabel;
    Label6: TLabel;
    Button15: TButton;
    Button16: TButton;
    SpinEdit4: TSpinEdit;
    Label7: TLabel;
    Label8: TLabel;
    Button3: TButton;
    TabSheet2: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    ParamListBox1: TParamListBox;
    Button6: TButton;
    Button11: TButton;
    Button12: TButton;
    SpinEdit2: TSpinEdit;
    Button4: TButton;
    Button5: TButton;
    Button17: TButton;
    ImageList1: TImageList;
    XPManifest1: TXPManifest;
    PopupMenu1: TPopupMenu;
    procedure FormCreate(Sender: TObject);
    procedure ParamListBox1ParamQuery(Sender: TObject; idx: Integer;
      href: String; var value: String);
    procedure ParamTreeview1ParamQuery(Sender: TObject; ANode: TTreeNode;
      href: String; var value: String);
    procedure ParamLabel1ParamQuery(Sender: TObject; href: String;
      var value: String);
    procedure ParamLabel1ParamEnter(Sender: TObject; href, value: String);
    procedure ParamLabel1ParamExit(Sender: TObject; href, value: String);
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure ParamCheckList1ParamEnter(Sender: TObject; idx: Integer;
      href, value: String);
    procedure ParamListBox1ParamExit(Sender: TObject; idx: Integer; href,
      value: String);
    procedure ParamTreeview1ParamEnter(Sender: TObject; ANode: TTreeNode;
      href, value: String);
    procedure ParamTreeview1ParamExit(Sender: TObject; ANode: TTreeNode;
      href, value: String);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ParamCheckList1ParamQuery(Sender: TObject; idx: Integer;
      href: String; var value: String);
    procedure ParamLabel1ParamClick(Sender: TObject; href: String;
      var value: String);
  private
    { Private declarations }
  public
    { Public declarations }
//    popupadvedit: tPopupAdvEdit;
  end;

var
  Form1: TForm1;

implementation

uses
  ShellAPI;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  ParamCheckList1.Comment[0] := true;
  ParamCheckList1.Comment[5] := true;
end;

procedure TForm1.ParamListBox1ParamQuery(Sender: TObject; idx: Integer;
  href: String; var value: String);
begin
  inputquery('Value','Input',value);
end;

procedure TForm1.ParamTreeview1ParamQuery(Sender: TObject;
  ANode: TTreeNode; href: String; var value: String);
begin
  inputquery('Value','Input',value);
end;

procedure TForm1.ParamLabel1ParamQuery(Sender: TObject; href: String;
  var value: String);
begin
  inputquery('Value','Input',value);
end;

procedure TForm1.ParamCheckList1ParamQuery(Sender: TObject; idx: Integer;
  href: String; var value: String);
begin
  inputquery('Value','Input',value);
end;

procedure TForm1.ParamLabel1ParamEnter(Sender: TObject; href,
  value: String);
begin
  statusbar1.SimpleText := href +' : ' + value;
end;

procedure TForm1.ParamLabel1ParamExit(Sender: TObject; href,
  value: String);
begin
   statusbar1.SimpleText := '';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  paramlabel1.EditParam('edit');
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  if paramlistbox1.itemindex >= 0 then
    paramlistbox1.EditParam(paramlistbox1.itemindex,'edit');
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  paramchecklist1.EditParam('edit');
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  paramtreeview1.EditParam('edit');
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  label2.caption := paramlabel1.Parameter['spin'];
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  paramlabel1.Parameter['spin'] := inttostr(spinedit1.Value);
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  label4.Caption := paramlistbox1.Parameter['spin'];
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  paramlistbox1.Parameter['spin'] := inttostr(spinedit2.Value);
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  label6.Caption := paramchecklist1.Parameter['spin'];
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  paramchecklist1.Parameter['spin'] := inttostr(spinedit3.Value);
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  label8.Caption := paramtreeview1.Parameter['spin'];
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  paramtreeview1.Parameter['spin'] := inttostr(spinedit4.Value);
end;

procedure TForm1.ParamCheckList1ParamEnter(Sender: TObject; idx: Integer;
  href, value: String);
begin
  statusbar1.SimpleText := href + ' : ' + value;
end;

procedure TForm1.ParamListBox1ParamExit(Sender: TObject; idx: Integer;
  href, value: String);
begin
  statusbar1.SimpleText := '';
end;

procedure TForm1.ParamTreeview1ParamEnter(Sender: TObject;
  ANode: TTreeNode; href, value: String);
begin
  statusbar1.SimpleText := href + ' : ' + value;
end;

procedure TForm1.ParamTreeview1ParamExit(Sender: TObject; ANode: TTreeNode;
  href, value: String);
begin
  statusbar1.SimpleText := '';
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i:integer;
  s: string;

begin
  s := 'List of parameter references:';
  for i := 1 to paramlabel1.ParamRefCount do
  begin
    s := s + #13#10;
    s := s + paramlabel1.ParamRefs[i - 1];
  end;
  ShowMessage(s);

end;

procedure TForm1.Button4Click(Sender: TObject);
var
  i:integer;
  s: string;

begin
  s := 'List of parameter references:';
  for i := 1 to paramchecklist1.ParamRefCount do
  begin
    s := s + #13#10;
    s := s + paramchecklist1.ParamRefs[i - 1];
  end;
  ShowMessage(s);

end;

procedure TForm1.Button17Click(Sender: TObject);
var
  i:integer;
  s: string;
begin
  s := 'List of parameter references:';
  for i := 1 to paramlistbox1.ParamRefCount do
  begin
    s := s + #13#10;
    s := s + paramlistbox1.ParamRefs[i - 1];
  end;
  ShowMessage(s);

end;

procedure TForm1.Button5Click(Sender: TObject);
var
  i:integer;
  s: string;
begin
  s := 'List of parameter references:';
  for i := 1 to paramtreeview1.ParamRefCount do
  begin
    s := s + #13#10;
    s := s + paramtreeview1.ParamRefs[i - 1];
  end;
  ShowMessage(s);

end;


procedure TForm1.ParamLabel1ParamClick(Sender: TObject; href: String;
  var value: String);
begin
  shellexecute(0,'open',pchar(href),nil,nil,SW_NORMAL);
end;

end.
