{**************************************************************************}
{Demo of HTML controls :                                                   }
{ THTMLListBox version 1.8                                                 )
{ THTMLLabel version 1.6                                                   )
{ THTMLChecklist version 1.8                                               )
{ THTMLCombobox version 1.5                                                )
{ THTMLTreeview version 1.1                                                )
{ THTMLHint version 1.3                                                    )
{ THTMLButtons version 1.4                                                 )
{ THTMLStaticText version 1.2                                              )
{                                                                          }
{ for Delphi 5,6,7 & C++Builder 5,6                                        }
{                                                                          }
{ Copyright © 1999-2004                                                    }
{   TMS Software                                                           }
{   Email : info@tmssoftware.com                                           }
{   Web : http://www.tmssoftware.com                                       }
{**************************************************************************}

unit Uhtml;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ImgList, StdCtrls, HTMListb, ComCtrls, htmlabel, htmcombo, htmltv,
  htmlhint, htmlbtns, htmltext, PictureContainer, HTMLChkList, shellApi;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    HTMListbox1: THTMListbox;
    ImageList1: TImageList;
    StatusBar1: TStatusBar;
    HTMLComboBox1: THTMLComboBox;
    HTMLComboBox2: THTMLComboBox;
    HTMLComboBox3: THTMLComboBox;
    ImageList2: TImageList;
    TabSheet4: TTabSheet;
    ImageList3: TImageList;
    StatusBar2: TStatusBar;
    TabSheet5: TTabSheet;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    HTMLHint1: THTMLHint;
    ImageList4: TImageList;
    TabSheet6: TTabSheet;
    HTMLabel2: THTMLabel;
    ImageList5: TImageList;
    TabSheet7: TTabSheet;
    HTMLStaticText1: THTMLStaticText;
    HTMLStaticText2: THTMLStaticText;
    CheckBox1: TCheckBox;
    TabSheet8: TTabSheet;
    HTMListBox2: THTMListBox;
    CheckBox2: TCheckBox;
    TabSheet9: TTabSheet;
    HTMListBox3: THTMListBox;
    HiCheck: TCheckBox;
    MarkCheck: TCheckBox;
    TabSheet10: TTabSheet;
    HTMLCheckList1: THTMLCheckList;
    PictureContainer1: TPictureContainer;
    Label5: TLabel;
    mainlabel: THTMLabel;
    sublabel: THTMLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    HTMLComboBox4: THTMLComboBox;
    Label11: TLabel;
    HTMLComboBox5: THTMLComboBox;
    PictureContainer2: TPictureContainer;
    HTMLTreeview1: THTMLTreeview;
    GroupBox1: TGroupBox;
    Button4: TButton;
    Button5: TButton;
    GroupBox2: TGroupBox;
    Button6: TButton;
    HTMLRadioGroup1: THTMLRadioGroup;
    HTMLButton2: THTMLButton;
    HTMLButton1: THTMLButton;
    PictureContainer3: TPictureContainer;
    HTMLButton3: THTMLButton;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    CheckBox3: TCheckBox;
    HTMLRadioButton1: THTMLRadioButton;
    HTMLRadioButton2: THTMLRadioButton;
    HTMLRadioButton3: THTMLRadioButton;
    HTMLRadioButton4: THTMLRadioButton;
    HTMLRadioButton5: THTMLRadioButton;
    HTMLCheckBox1: THTMLCheckBox;
    HTMLCheckBox2: THTMLCheckBox;
    HTMLCheckBox3: THTMLCheckBox;
    HTMLCheckBox4: THTMLCheckBox;
    HTMLCheckBox5: THTMLCheckBox;
    Label15: TLabel;
    HTMLStaticText3: THTMLStaticText;
    HTMLStaticText4: THTMLStaticText;
    PictureContainer4: TPictureContainer;
    procedure HTMListbox1AnchorClick(Sender: TObject; index: Integer;
      anchor: String);
    procedure HTMListbox1AnchorEnter(Sender: TObject; index: Integer;
      anchor: String);
    procedure HTMListbox1Click(Sender: TObject);
    procedure HTMLabel1AnchorClick(Sender: TObject; Anchor: String);
    procedure HTMLabel1AnchorEnter(Sender: TObject; Anchor: String);
    procedure HTMLabel1AnchorExit(Sender: TObject; Anchor: String);
    procedure HTMLHint1ShowHint(var HintStr: String; var CanShow: Boolean;
      var HintInfo: THintInfo);
    procedure HTMLStaticText1AnchorClick(Sender: TObject; Anchor: String);
    procedure HTMLCheckBox4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure HiCheckClick(Sender: TObject);
    procedure MarkCheckClick(Sender: TObject);
    procedure mainlabelAnchorEnter(Sender: TObject; Anchor: String);
    procedure Label6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure HTMLTreeview1AnchorClick(Sender: TObject; Node: TTreeNode;
      anchor: String);
    procedure HTMLRadioButton1Click(Sender: TObject);
    procedure HTMLRadioButton2Click(Sender: TObject);
    procedure HTMLRadioButton3Click(Sender: TObject);
    procedure HTMLRadioButton4Click(Sender: TObject);
    procedure HTMLRadioButton5Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure HTMLStaticText3AnchorEnter(Sender: TObject; Anchor: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
{$R EXTRA.RES}
{$R *.DFM}

procedure TForm1.HTMListbox1AnchorClick(Sender: TObject; index: Integer;
  anchor: String);
begin
 messagedlg('Anchor : '+anchor+' clicked',mtinformation,[mbok],0);
end;

procedure TForm1.HTMListbox1AnchorEnter(Sender: TObject; index: Integer;
  anchor: String);
begin
 label4.caption:=anchor;
end;

procedure TForm1.HTMListbox1Click(Sender: TObject);
begin
  label2.caption:=HTMListbox1.TextItems[HTMListbox1.ItemIndex];
end;

procedure TForm1.HTMLabel1AnchorClick(Sender: TObject; Anchor: String);
begin
  messagedlg('You clicked : '+anchor,mtinformation,[mbok],0);
end;

procedure TForm1.HTMLabel1AnchorEnter(Sender: TObject; Anchor: String);
begin
  statusbar1.simpletext:=anchor;
end;

procedure TForm1.HTMLabel1AnchorExit(Sender: TObject; Anchor: String);
begin
 statusbar1.simpletext:='';
end;

procedure TForm1.HTMLHint1ShowHint(var HintStr: String;
  var CanShow: Boolean; var HintInfo: THintInfo);
begin
 if hintinfo.HintControl =Button1 then hintinfo.hintcolor:=clLime;
 if hintinfo.HintControl =Button2 then hintinfo.hintcolor:=clAqua;
 if hintinfo.HintControl =Button3 then hintinfo.hintcolor:=clYellow;
end;

procedure TForm1.HTMLStaticText1AnchorClick(Sender: TObject;
  Anchor: String);
begin
 if anchor='button' then   PageControl1.ActivePage:=Tabsheet6;
 if anchor='treeview' then   PageControl1.ActivePage:=Tabsheet4;
 if anchor='listbox' then   PageControl1.ActivePage:=Tabsheet1;
 if anchor='label' then   PageControl1.ActivePage:=Tabsheet2;
end;

procedure TForm1.HTMLCheckBox4Click(Sender: TObject);
begin
 showmessage('click');
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  tn: TTreeNode;
begin
  htmlistbox1.itemIndex := 0;
  sublabel.htmltext.Add('THTMLabel supports hovering by <U>underlining</U> or even changing <FONT bgcolor="clLime">background</FONT> and font <FONT color="clred"><B>color</B></FONT>');
  htmltreeview1.Items.BeginUpdate;
  htmltreeview1.Items.Add(nil,'<img src="ssys:word.doc"> <a href="Clicked on my Word file">My Word file</a> ');
  htmltreeview1.Items.Add(nil,'<img src="ssys:word.xls"> <a href="Clicked on my Excel file">My Excel file</a> ');
  htmltreeview1.Items.Add(nil,'<img src="ssys:word.htm"> <a href="Clicked on my HTML file">My HTML file</a> ');

  tn := htmltreeview1.Items.Add(nil,'Programmatic added item with checkbox');
  htmltreeview1.SetNodeCheck(tn,true);

  htmltreeview1.Items.AddChild(tn,'<IMG src="idx:0">Programmatic added subitem');
  htmltreeview1.Items.AddChild(tn,'<IMG src="idx:1">Programmatic added subitem');
  tn := htmltreeview1.Items.AddChild(tn,'<IMG src="idx:0">Programmatic added subitem with checkbox');
  htmltreeview1.SetNodeCheck(tn,False);

  htmltreeview1.Items.EndUpdate;

  htmltreeview1.ItemHeight := 22;
  HtmlStaticText4.HTMLText.Add('THTMLStaticText supports hovering by <U>underlining</U> or even changing <FONT bgcolor="clLime">background</FONT> and font <FONT color="clred"><B>color</B></FONT>');

  htmlchecklist1.Comment[0] := true;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  htmListBox1.EnableBlink := CheckBox1.Checked;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  htmlistbox2.enableblink := checkbox2.checked;
end;

procedure TForm1.HiCheckClick(Sender: TObject);
begin
  if HiCheck.Checked then
    HTMListbox3.HilightInList('BMW',False)
  else
    HTMListbox3.UnHilightInList;

end;

procedure TForm1.MarkCheckClick(Sender: TObject);
begin
  if MarkCheck.Checked then
    HTMListbox3.MarkInList('Mercedes',False)
  else
    HTMListbox3.UnMarkInList;
end;

procedure TForm1.mainlabelAnchorEnter(Sender: TObject; Anchor: String);
begin
  sublabel.htmltext.clear;
  if anchor='hover' then sublabel.htmltext.Add('THTMLabel supports hovering by <U>underlining</U> or even changing <FONT bgcolor="clLime">background</FONT> and font <FONT color="clred"><B>color</B></FONT>');
  if anchor='blink' then sublabel.htmltext.Add('Text in THTMLabel can have a <B><SHAD>shadow</SHAD></B> with programmable shadow offset and color');
  if anchor='list'  then sublabel.htmltext.Add('Support for HTML lists makes building lists easy<BR><UL><LI>Item 1<LI>Item 2<UL><LI>Subitem 1<LI>Subitem 2</UL><LI>Item 3</UL>');
  if anchor='anchor'  then sublabel.htmltext.Add('Anchors to <A href="http://www.tmssoftware.com">websites</A>,<A href="mailto:info@tmssoftware.com">email</A>,<A href="ftp://ftp.borland.com">ftp</A>,<A href="file://c:\">folders</A> or custom actions are provided');
  if anchor='image'  then sublabel.htmltext.Add('Images and imagelist elements <IMG src="idx:1"> can be mixed <IMG src="idx:2"> with HTML formatted text.<BR>Images can be :<BR>BMP <IMG src="res://BMPIMG" align="top"> JPEG <IMG src="res://JPEGIMG" align="top"> GIF <IMG src="res://GIFIMG" align="top">');
  if anchor='paragraph' then sublabel.htmltext.Add('<BR>Paragraphs provide :<BR> <P align="left" bgcolor="clWhite"><B>left</B> alignment </P><P align="right" bgcolor="clYellow"><B>right</B> alignment</P><P align="center" bgcolor="clLime"> and <B>centered</B> alignment with background color</P>');

end;

procedure TForm1.Label6Click(Sender: TObject);
begin
 shellexecute(self.handle,'open',pchar(label2.caption),nil,nil,SW_NORMAL);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  chk: Boolean;
begin
  htmltreeview1.GetNodeCheck(htmltreeview1.Items[0],chk);
  chk := not chk;
  htmltreeview1.SetNodeCheck(htmltreeview1.Items[0],chk);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  htmltreeview1.RemoveNodeCheck(htmltreeview1.Items[0]);
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  chk: Boolean;
  radidx: Integer;
begin
  radidx := 0;
  HTMLTreeView1.GetRadioButton(htmltreeview1.items[4],chk);
  if chk then
    radidx := 1;
  HTMLTreeView1.GetRadioButton(htmltreeview1.items[5],chk);
  if chk then
    radidx := 2;

  HTMLTreeView1.GetRadioButton(htmltreeview1.items[6],chk);
  if chk then
    radidx := 3;

  inc(radidx);
  if radidx = 4 then
    radidx := 1;

  htmltreeview1.SetRadioButton(htmltreeview1.items[4],radidx = 1);
  htmltreeview1.SetRadioButton(htmltreeview1.items[5],radidx = 2);
  htmltreeview1.SetRadioButton(htmltreeview1.items[6],radidx = 3);
end;

procedure TForm1.HTMLTreeview1AnchorClick(Sender: TObject; Node: TTreeNode;
  anchor: String);
begin
  showmessage('anchor:'+anchor);
end;

procedure TForm1.HTMLRadioButton1Click(Sender: TObject);
begin
  HTMLRadioGroup1.ButtonType := btClassic;
end;

procedure TForm1.HTMLRadioButton2Click(Sender: TObject);
begin
  HTMLRadioGroup1.ButtonType := btFlat;
end;

procedure TForm1.HTMLRadioButton3Click(Sender: TObject);
begin
  HTMLRadioGroup1.ButtonType := btBorland;
end;

procedure TForm1.HTMLRadioButton4Click(Sender: TObject);
begin
  HTMLRadioGroup1.ButtonType := btTMS;
end;

procedure TForm1.HTMLRadioButton5Click(Sender: TObject);
begin
  HTMLRadioGroup1.ButtonType := btWinXP;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
var
  Al: TLeftRight;
begin
  if CheckBox3.Checked then
    Al := taRightJustify
  else
    Al := taLeftJustify;

  HTMLRadioButton1.Alignment := Al;
  HTMLRadioButton2.Alignment := Al;
  HTMLRadioButton3.Alignment := Al;
  HTMLRadioButton4.Alignment := Al;
  HTMLRadioButton5.Alignment := Al;

  HTMLCheckBox1.Alignment := Al;
  HTMLCheckBox2.Alignment := Al;
  HTMLCheckBox3.Alignment := Al;
  HTMLCheckBox4.Alignment := Al;
  HTMLCheckBox5.Alignment := Al;

end;

procedure TForm1.HTMLStaticText3AnchorEnter(Sender: TObject;
  Anchor: String);
var
  i:  Integer;

begin
  htmlStaticText4.htmltext.clear;
  HtmlStaticText4.EnableBlink := False;
  if anchor='hover' then HtmlStaticText4.htmltext.Add('<BODY background="WALL">THTMLStaticText supports hovering by <U>underlining</U> or even changing <FONT bgcolor="clLime">background</FONT> and font <FONT color="clred"><B>color</B></FONT>');
  if anchor='blink' then HtmlStaticText4.htmltext.Add('Text in THTMLStaticText can <FONT color="clred"><B><BLINK>blink</BLINK></B></FONT> to draw attention');
  if anchor='list'  then HtmlStaticText4.htmltext.Add('Support for HTML lists makes building lists easy<BR><UL><LI>Item 1<LI>Item 2<UL><LI>Subitem 1<LI>Subitem 2</UL><LI>Item 3</UL>');
  if anchor='anchor' then HtmlStaticText4.htmltext.Add('Anchors to <A href="http://www.tmssoftware.com">websites</A>,<A href="mailto:info@tmssoftware.com">email</A>,<A href="ftp://ftp.borland.com">ftp</A>,<A href="file://c:\">folders</A> or custom actions are provided');
  if anchor='image' then HtmlStaticText4.htmltext.Add('Images and imagelist elements <IMG src="idx:1"> can be mixed <IMG src="idx:2"> with HTML formatted text.<BR>Images can be :<BR>BMP <IMG src="res://BMPIMG" align="top"> JPEG <IMG src="res://JPEGIMG" align="top"> GIF <IMG src="res://GIFIMG" align="top">');
  if anchor='paragraph' then HtmlStaticText4.htmltext.Add('<BR>Paragraphs provide :<BR> <P align="left" bgcolor="clWhite"><B>left</B> alignment </P><P align="right" bgcolor="clYellow"><B>right</B> alignment</P><P align="center" bgcolor="clLime"> and <B>centered</B> alignment with background color</P>');
  if anchor='animation' then HtmlStaticText4.htmltext.Add('<BR>Now supports pictures like animated GIFs <IMG src="FLOWER"> from the attached PictureContainer in the label and image hover effects <A href="This is a fly-over image"><IMG src="GREY" ALT="COLOR"></A>');
  if anchor='scroll' then
  begin
    for i := 1 to 6 do
      HtmlStaticText4.htmltext.Add('<BR><IMG src="COLOR" align="middle"><A href="Option '+inttostr(i)+'"> Option '+inttostr(i)+'</A>');
  end;
  if (anchor = 'animation') or
     (anchor = 'blink') or
     (anchor = 'scroll') then
    HtmlStaticText4.Enableblink := True;


end;

end.
