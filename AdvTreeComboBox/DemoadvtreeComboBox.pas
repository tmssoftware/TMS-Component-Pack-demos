{********************************************************************}
{ TAdvTreeComboBox demo                                              }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2003-2012                                   }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit DemoadvtreeComboBox;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, ExtCtrls, ImgList, Menus,Buttons, ShellAPI, AdvTreeComboBox
  {$IFDEF VER150}
  , XPMan
  {$ENDIF}
  {$IFDEF VER170}
  , XPMan
  {$ENDIF}
  ;

type
  TForm1 = class(TForm)
    AdvTreeComboBox1: TAdvTreeComboBox;
    ImageList1: TImageList;
    ListBox1: TListBox;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    urllabel: TLabel;
    PopupMenu1: TPopupMenu;
    TMS1: TMenuItem;
    TMSWEB1: TMenuItem;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    procedure AdvTreeComboBox1dropUp(Sender: TObject; canceld: Boolean);
    procedure AdvTreeComboBox1dropDown(Sender: TObject; var acceptdrop: Boolean);
    procedure RadioGroup1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure TMS1Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure urllabelClick(Sender: TObject);
    procedure TMSWEB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}
procedure TForm1.AdvTreeComboBox1dropUp(Sender: TObject; canceld: Boolean);
begin
if canceld then ListBox1.Items.Add('Canceld Selection')
           else ListBox1.Items.Add('Accept Selection "'+AdvTreeComboBox1.Items[AdvTreeComboBox1.selection].Text+'"');
end;

procedure TForm1.AdvTreeComboBox1dropDown(Sender: TObject;
  var acceptdrop: Boolean);
begin
   ListBox1.items.Add('OnDropDown');
   acceptdrop:=CheckBox5.Checked;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
  AdvTreeComboBox1.DropPosition:=Tdropposition(RadioGroup1.itemindex);
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  AdvTreeComboBox1.AutoOpen:=CheckBox1.Checked;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  AdvTreeComboBox1.CollapseOnDrop:=CheckBox2.Checked;
  CheckBox3.Checked := AdvTreeComboBox1.ExpandOnDrop;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
  AdvTreeComboBox1.ExpandOnDrop:=CheckBox3.Checked;
  CheckBox2.Checked := AdvTreeComboBox1.CollapseOnDrop;
end;

procedure TForm1.TMS1Click(Sender: TObject);
begin
   MessageDlg('TAdvTreeComboBox component'#13'TMS Software'#13'http://www.tmssoftware.com', mtInformation, [mbOK], 0);
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
 AdvTreeComboBox1.EditorEnabled:=CheckBox4.Checked;
end;

procedure TForm1.urllabelClick(Sender: TObject);
begin
  ShellExecute(0,'open',PChar(UrlLabel.Caption),nil,nil,SW_NORMAL);
end;

procedure TForm1.TMSWEB1Click(Sender: TObject);
begin
  ShellExecute(0,'open',PChar(UrlLabel.Caption),nil,nil,SW_NORMAL);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  itm: TTreeNode;
begin
  itm := AdvTreeComboBox1.Items.Add(AdvTreeComboBox1.Items[0],'TMS');
  itm.ImageIndex := 0;
  itm.SelectedIndex := 1;
  itm.StateIndex := -1;
  Button1.Enabled := False;
  Button2.Enabled := True;
  AdvTreeComboBox1.Treeview.SortType := stText;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  AdvTreeComboBox1.Items[AdvTreeComboBox1.Items.Count-1].Delete;
  Button2.Enabled:=false;
  Button1.Enabled:=true;
end;

end.
