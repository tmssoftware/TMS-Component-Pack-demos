{***************************************************************************}
{ TInspectorBar demo                                                        }
{ for Delphi & C++Builder                                                   }
{ version 1.4                                                               }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2001 - 2005                                        }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{                                                                           }
{***************************************************************************}

unit UInspectorBarDemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ExtCtrls, InspectorBar, ComCtrls, StdCtrls, Mask,
  RTTIInspectorBar, Menus, ShellApi, XPMan;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    InspectorBar1: TInspectorBar;
    ImageList1: TImageList;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    InspectorBar2: TInspectorBar;
    RTTIInspectorBar1: TRTTIInspectorBar;
    Button2: TButton;
    Button3: TButton;
    GroupBox1: TGroupBox;
    ListBox1: TListBox;
    Edit1: TEdit;
    TabSheet3: TTabSheet;
    InspectorBar3: TInspectorBar;
    ListBox2: TListBox;
    Label5: TLabel;
    InspectorBar4: TInspectorBar;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    Largeicons1: TMenuItem;
    Largeicons2: TMenuItem;
    Button4: TButton;
    Button5: TButton;
    ColorDialog1: TColorDialog;
    InspectorBar5: TInspectorBar;
    ComboBox1: TComboBox;
    Label6: TLabel;
    TreeView1: TTreeView;
    ListBox3: TListBox;
    Memo1: TMemo;
    urllabel: TLabel;
    TabSheet7: TTabSheet;
    InspectorBar6: TInspectorBar;
    ListBox4: TListBox;
    Label7: TLabel;
    XPManifest1: TXPManifest;
    TabSheet8: TTabSheet;
    InspectorBar7: TInspectorBar;
    Label8: TLabel;
    MultiSel: TCheckBox;
    lbledit: TCheckBox;
    Button6: TButton;
    TabSheet9: TTabSheet;
    InspectorBar8: TInspectorBar;
    TabSheet10: TTabSheet;
    InspectorBar9: TInspectorBar;
    ImageList2: TImageList;
    procedure InspectorBar1ItemClick(Sender: TObject;
      AInspectorPanel: TInspectorPanel; AInspectorItem: TInspectorItem);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure RTTIInspectorBar1EditBtnClick(Sender: TObject;
      AInspectorPanel: TInspectorPanel; AInspectorItem: TInspectorItem);
    procedure InspectorBar3EditStart(Sender: TObject;
      AInspectorPanel: TInspectorPanel; AInspectorItem: TInspectorItem);
    procedure InspectorBar3EditStop(Sender: TObject;
      AInspectorPanel: TInspectorPanel; AInspectorItem: TInspectorItem);
    procedure Button1Click(Sender: TObject);
    procedure Largeicons1Click(Sender: TObject);
    procedure Largeicons2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure urllabelClick(Sender: TObject);
    procedure InspectorBar6ItemAnchorClick(Sender: TObject;
      AInspectorPanel: TInspectorPanel; AInspectorItem: TInspectorItem;
      Anchor: String);
    procedure InspectorBar6ItemClick(Sender: TObject;
      AInspectorPanel: TInspectorPanel; AInspectorItem: TInspectorItem);
    procedure InspectorBar7ItemClick(Sender: TObject;
      AInspectorPanel: TInspectorPanel; AInspectorItem: TInspectorItem);
    procedure lbleditClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure InspectorBar4ItemClick(Sender: TObject;
      AInspectorPanel: TInspectorPanel; AInspectorItem: TInspectorItem);
    procedure InspectorBar9ItemClick(Sender: TObject;
      AInspectorPanel: TInspectorPanel; AInspectorItem: TInspectorItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.InspectorBar1ItemClick(Sender: TObject;
  AInspectorPanel: TInspectorPanel; AInspectorItem: TInspectorItem);
begin
  if AInspectorPanel.Index = 0 then
    label3.Caption := AInspectorItem.Caption;
  if AInspectorPanel.Index = 1 then
    label4.Caption := AInspectorItem.Caption;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  IPanel: TRTTIInspectorPanel;
begin
  IPanel := RTTIInspectorBar1.Panels.Add;

  IPanel.RTTIComponent := ListBox1;
  IPanel.ItemHeight := 28;
  IPanel.Style := psProperties;
  IPanel.CaptionWidth := 80;
  IPanel.GridLines := True;
  IPanel.Color := clSilver;
  IPanel.Indent := 14;
  IPanel.EditBorderColor := clGray;

  IPanel.EditBox := True;
  IPanel.Background := pbGradient;
  IPanel.GradientDirection := gdHorizontal;

  IPanel.Caption := Listbox1.Name;
  IPanel.AllowResize := True;

  IPanel.Open := True;
  Button2.Enabled := False;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  IPanel: TRTTIInspectorPanel;
begin
  IPanel := RTTIInspectorBar1.Panels.Add;

  IPanel.RTTIComponent := Edit1;
  IPanel.ItemHeight := 28;
  IPanel.Style := psProperties;
  IPanel.CaptionWidth := 80;
  IPanel.GridLines := True;
  IPanel.Color := clSilver;
  IPanel.Indent := 14;

  IPanel.EditBox := True;
  IPanel.Background := pbGradient;
  IPanel.GradientDirection := gdHorizontal;

  IPanel.Caption := Edit1.Name;
  IPanel.AllowResize := True;

  IPanel.Open := True;
  Button3.Enabled := False;
end;

procedure TForm1.RTTIInspectorBar1EditBtnClick(Sender: TObject;
  AInspectorPanel: TInspectorPanel; AInspectorItem: TInspectorItem);
begin
  ShowMessage('Handle special property here');
end;

procedure TForm1.InspectorBar3EditStart(Sender: TObject;
  AInspectorPanel: TInspectorPanel; AInspectorItem: TInspectorItem);
begin
  ListBox2.Items.Add('Editing start for item : '+AInspectorItem.Caption);
end;

procedure TForm1.InspectorBar3EditStop(Sender: TObject;
  AInspectorPanel: TInspectorPanel; AInspectorItem: TInspectorItem);
begin
  ListBox2.Items.Add('Editing stop for item : '+AInspectorItem.Caption);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  with InspectorBar4.Panels.Add do
  begin
    ItemHeight := 20;
    Style := psSmallIcon;
    Alignment := taLeftJustify;
    Caption := 'Dynamic created panel';
    HoverCaption := True;
    with Items.Add do
    begin
      Caption := 'Borland';
      URL := 'http://www.borland.com';
      AutoIcon := True;
    end;
    with Items.Add do
    begin
      Caption := 'Microsoft';
      URL := 'http://www.microsoft.com';
      AutoIcon := True;
    end;
    with Items.Add do
    begin
      Caption := 'Sun';
      URL := 'http://www.sun.com';
      AutoIcon := True;
    end;
  end;

  InspectorBar4.TopPanel := InspectorBar4.Panels.Count - 1;
  Button1.Enabled := False;
  Button4.Enabled := True;
end;

procedure TForm1.Largeicons1Click(Sender: TObject);
begin
  InspectorBar4.Panels[InspectorBar4.TopPanel].Style := psSmallIcon;
  InspectorBar4.Panels[InspectorBar4.TopPanel].ItemHeight := 20;
end;

procedure TForm1.Largeicons2Click(Sender: TObject);
begin
  InspectorBar4.Panels[InspectorBar4.TopPanel].Style := psLargeIcon;
  InspectorBar4.Panels[InspectorBar4.TopPanel].ItemHeight := 54;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  InspectorBar4.Panels[InspectorBar4.Panels.Count - 1].Free;
  Button4.Enabled := False;
  Button1.Enabled := True;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  if InspectorBar4.TopPanel = 0 then
  begin
    ShowMessage('Cannot set color for gradient background panel here'#13'Choose another panel');
    Exit;
  end;
  ColorDialog1.Color := InspectorBar4.Panels[InspectorBar4.TopPanel].Color;
  if ColorDialog1.Execute then
   InspectorBar4.Panels[InspectorBar4.TopPanel].Color := ColorDialog1.Color;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ComboBox1.Items.AddObject('Normal',TObject(0));
  ComboBox1.Items.AddObject('Noise',TObject(1));
  ComboBox1.Items.AddObject('Diagonal shade',TObject(2));
  ComboBox1.Items.AddObject('Horiz. shade',TObject(3));
  ComboBox1.Items.AddObject('Vert. shade',TObject(4));
  ComboBox1.Items.AddObject('Horiz. bump',TObject(5));
  ComboBox1.Items.AddObject('Vert. bump',TObject(6));
  ComboBox1.Items.AddObject('Soft bump',TObject(7));
  ComboBox1.Items.AddObject('Hard bump',TObject(8));
  ComboBox1.Items.AddObject('Left metal shine',TObject(9));
  ComboBox1.Items.AddObject('Right metal shine',TObject(10));
  ComboBox1.Items.AddObject('Inwards radial ',TObject(11));
  ComboBox1.Items.AddObject('Outwards radial ',TObject(12));
  ComboBox1.Items.AddObject('Inverse Horiz. Shade',TObject(13));
  ComboBox1.Items.AddObject('Inverse Vert. Shade',TObject(14));
  ComboBox1.ItemIndex := 0;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  InspectorBar4.PanelCaption.ShadeType := TShadeType(Combobox1.Items.Objects[ComboBox1.ItemIndex]);
end;

procedure TForm1.urllabelClick(Sender: TObject);
begin
  ShellExecute(0,'open',PChar(UrlLabel.Caption),nil,nil,SW_NORMAL);
end;

procedure TForm1.InspectorBar6ItemAnchorClick(Sender: TObject;
  AInspectorPanel: TInspectorPanel; AInspectorItem: TInspectorItem;
  Anchor: String);
begin
  if AInspectorPanel.Index = 1 then
    ShellExecute(0,'open',pchar(Anchor),nil,nil,SW_NORMAL)
  else
    ShowMessage('Link pressed');
end;

procedure TForm1.InspectorBar6ItemClick(Sender: TObject;
  AInspectorPanel: TInspectorPanel; AInspectorItem: TInspectorItem);
begin
  listbox4.Items.Add('Click for : '+AInspectorItem.Caption);
end;

procedure TForm1.InspectorBar7ItemClick(Sender: TObject;
  AInspectorPanel: TInspectorPanel; AInspectorItem: TInspectorItem);
begin
  if MultiSel.Checked then
  begin
    AInspectorItem.Selected := not AInspectorItem.Selected;
    AInspectorPanel.ItemIndex := -1;
  end
  else
    AInspectorPanel.ItemIndex := AInspectorItem.Index;
end;

procedure TForm1.lbleditClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 1 to InspectorBar4.Panels.Count do
    InspectorBar4.Panels[i - 1].LabelEdit := lbledit.Checked;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin

  if InspectorBar4.TopPanel <> 0 then
    InspectorBar4.TopPanel := 0
  else
    InspectorBar4.TopPanel  := 1; 
end;

procedure TForm1.InspectorBar4ItemClick(Sender: TObject;
  AInspectorPanel: TInspectorPanel; AInspectorItem: TInspectorItem);
begin
  ShowMessage('You clicked on item ' + AInspectorItem.Caption);
end;

procedure TForm1.InspectorBar9ItemClick(Sender: TObject;
  AInspectorPanel: TInspectorPanel; AInspectorItem: TInspectorItem);
begin
  if AInspectorPanel.Index = 0 then
  begin
    case AInspectorItem.Index of
    0: ShowMessage('Start chat');
    1: ShowMessage('Start browser');
    2: ShowMessage('Start Notepad');
    3: ShowMessage('Start Email');
    4: ShowMessage('Start Mediaplayer');
    end;
  end;

  if AInspectorPanel.Index = 1 then
  begin
    case AInspectorItem.Index of
    0: InspectorBar9.Style := esOffice2003Blue;
    1: InspectorBar9.Style := esOffice2003Olive;
    2: InspectorBar9.Style := esOffice2003Silver;
    3: InspectorBar9.Style := esOffice2003Classic;
    4: InspectorBar9.Style := esWhidbey;
    end;
  end;
end;

end.

