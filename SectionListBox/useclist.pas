{**************************************************************************}
{ TSectionListBox demo                                                     )
{ for Delphi 5,6,7 & C++Builder 5,6                                        }
{ version 1.9                                                              }
{                                                                          }
{ Copyright © 1998-2004                                                    }
{   TMS Software                                                           }
{   Email : info@tmssoftware.com                                           }
{   Web : http://www.tmssoftware.com                                       }
{**************************************************************************}
unit useclist;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, slstbox, ExtCtrls, ComCtrls {$IFDEF VER120}, ImgList {$ENDIF}, ShellApi;

type
  TForm1 = class(TForm)
    ImageList1: TImageList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    SectionListBox2: TSectionListBox;
    Button1: TButton;
    Button4: TButton;
    Button2: TButton;
    Button3: TButton;
    Button5: TButton;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    ListBox1: TListBox;
    GroupBox1: TGroupBox;
    subitem: TLabel;
    Label2: TLabel;
    SectionListBox1: TSectionListBox;
    SectionListBox3: TSectionListBox;
    CheckBox3: TCheckBox;
    RadioGroup1: TRadioGroup;
    CheckBox2: TCheckBox;
    CheckBox4: TCheckBox;
    TabSheet4: TTabSheet;
    SectionListBox4: TSectionListBox;
    TabSheet5: TTabSheet;
    SectionListBox5: TSectionListBox;
    Button6: TButton;
    Button7: TButton;
    TabSheet6: TTabSheet;
    SectionListBox6: TSectionListBox;
    TabSheet7: TTabSheet;
    SectionListBox7: TSectionListBox;
    TabSheet8: TTabSheet;
    SectionListBox8: TSectionListBox;
    TabSheet9: TTabSheet;
    SectionListBox9: TSectionListBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SectionListBox2ExpandSection(Sender: TObject;
      sectionidx: Integer);
    procedure SectionListBox2ContractSection(Sender: TObject;
      sectionidx: Integer);
    procedure SectionListBox2SubItemClick(Sender: TObject; sectionidx,
      subitemidx: Integer);
    procedure SectionListBox2DeleteSubItem(Sender: TObject; sectionidx,
      subitemidx: Integer; var allow: Boolean);
    procedure SectionListBox2InsertSubItem(Sender: TObject; sectionidx,
      subitemidx: Integer; var subitem: String);
    procedure SectionListBox2DeleteSection(Sender: TObject;
      sectionidx: Integer; var allow: Boolean);
    procedure SectionListBox2InsertSection(Sender: TObject;
      sectionidx: Integer; section: TListSection);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure SectionListBox7DrawItem(Sender: TObject;
      section: TListSection; sectionidx, subitemidx: Integer;
      canvas: TCanvas; arect: TRect; astate: TOwnerDrawState);
    procedure SectionListBox9AnchorClick(Sender: TObject; index: Integer;
      anchor: String);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
  sectionlistbox2.expandall;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 sectionlistbox2.contractall;
end;

procedure TForm1.SectionListBox2ExpandSection(Sender: TObject;
  sectionidx: Integer);
begin
 listbox1.items.Add('expand section '+inttostr(sectionidx));
end;

procedure TForm1.SectionListBox2ContractSection(Sender: TObject;
  sectionidx: Integer);
begin
 listbox1.items.Add('contract section '+inttostr(sectionidx));

end;

procedure TForm1.SectionListBox2SubItemClick(Sender: TObject; sectionidx,
  subitemidx: Integer);
begin
 subitem.caption:=sectionlistbox2.GetSectionSubItem(sectionidx,subitemidx);
 listbox1.items.add('section: '+inttostr(sectionidx)+' subitem:'+inttostr(subitemidx));

 if sectionidx<=5 then
  begin
   if sectionlistbox2.sections.Items[sectionidx].SubItemImageIdx[subitemidx]=6 then
    sectionlistbox2.sections.Items[sectionidx].SubItemImageIdx[subitemidx]:=7
   else
    sectionlistbox2.sections.Items[sectionidx].SubItemImageIdx[subitemidx]:=6;
  end;  
end;

procedure TForm1.SectionListBox2DeleteSubItem(Sender: TObject; sectionidx,
  subitemidx: Integer; var allow: Boolean);
begin
 with SectionListBox2 do
 allow:=messagedlg('Delete item '+GetSectionSubItem(sectionidx,subitemidx)+' ?',
                    mtConfirmation,[mbYes,mbNo],0)=mrYes;
end;

procedure TForm1.SectionListBox2InsertSubItem(Sender: TObject; sectionidx,
  subitemidx: Integer; var subitem: String);
begin
 subitem:='This is a new subitem';
end;

procedure TForm1.SectionListBox2DeleteSection(Sender: TObject;
  sectionidx: Integer; var allow: Boolean);
begin
 with (SectionListBox2.Sections.Items[sectionidx] as TListSection) do
 allow:=messagedlg('Delete section '+caption+' ?',
                    mtConfirmation,[mbYes,mbNo],0)=mrYes;
end;

procedure TForm1.SectionListBox2InsertSection(Sender: TObject;
  sectionidx: Integer; section: TListSection);
begin
 section.Caption:='Second hand cars';
 section.Subitems.Add('BMW'+#9+'750iL'+#9+'1995');
 section.Subitems.Add('Mercedes'+#9+'SLK230'+#9+'1997');
 section.Subitems.Add('Audi'+#9+'A4'+#9+'1996');

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 with SectionListBox2.Sections.Add  do
  begin
   Caption:='Italian sport cars';
   Subitems.Add('Ferrari'+#9+'F355'+#9+'1995');
   Subitems.Add('Lamborghini'+#9+'Diablo'+#9+'1997');
   Subitems.Add('DeTomaso'+#9+'Pantera'+#9+'1985');
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 with SectionListBox2.Sections do
  begin
   if (Count>0) then (Items[Count-1]).Free;
  end;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
 (sectionlistbox2.sections.items[0]).Fixed:=checkbox1.checked;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 sectionlistbox2.optimizetabs(10);
end;

procedure TForm1.FormCreate(Sender: TObject);
var
 i,j:integer;
 lis:tlistsection;
 s:string;
begin
for i:=1 to sectionlistbox2.Sections.Count do
 with sectionlistbox2.sections.items[i-1] do
  begin
   for j:=1 to subitems.Count do
    begin
     if odd(random(100)) then
      subitemimageidx[j-1]:=6
     else
      subitemimageidx[j-1]:=7;
    end;
 end;

 with (sectionlistbox2.Sections.Add) do
  begin
   caption:='Multiline varia';
   subitems.add('To do for sales'#13'- Send email to salesperson'#13'- Make presentation');
   subitems.add('To do for R&D'#13'- Start up research project');
  end;

 with sectionlistbox2 do
  begin
   lis:=SectionListBox2.Sections.Add;
   lis.caption:='Rich text';
   with richedit do
    begin
     text:='This is some rich text here';
     selstart:=0;
     sellength:=4;
     selattributes.style:=[fsBold];
     selstart:=13;
     sellength:=9;
     selattributes.style:=[fsBold];
     selattributes.color:=clred;
    end;
   s:=RichToString(RichEdit);
   lis.SubItems.Add(s);


   with richedit do
    begin
     clear;
     selattributes.name:='';
     selattributes.Style:=[];
     selattributes.color:=clBlack;
     text:='Exposing the power  of RTF in the list ';
     selstart:=0;
     sellength:=8;
     selattributes.name:='Courier';
     selstart:=13;
     sellength:=5;
     selattributes.style:=[fsBold,fsItalic];
     selattributes.color:=clGreen;
    end;
   s:=RichToString(RichEdit);
   lis.SubItems.Add(s);

  end;



with (SectionListBox3.Sections.Items[1] as TListSection).SubItems do
 begin
  add('function GetItemSection(idx:integer):TListSection;'#13+
      ' Gets section associated with listbox item idx');
  add('function GetItemSectionIndex(idx:integer):integer;'#13+
      ' Gets the section index of the listbox item idx');
  add('function GetSectionListIndex(idx:integer):integer;'#13+
      ' Gets the index in the listbox of the section');
  add('function GetSectionSubItem(sectionidx,subitemidx:integer):string;'#13+
      ' Gets subitem text in section');
  add('function GetListItemIndex(listindex:integer;var sectionidx,subitemidx:integer):boolean;'#13+
      ' Gets section and subitemindex of listbox item listindex ');
  add('function GetSelection(var sectionidx,subitemidx:integer;var selstring:string):boolean;'#13+
      ' Gets section and subitem index of the current selected listbox item');
  add('function SetSelection(sectionidx,subitemidx:integer):boolean;'#13+
      ' Sets the listbox selection based on sectionidx and subitemidx');
  add('function IsSection(idx:integer):boolean;'#13+
      ' Returns true if the listbox item idx is a section header');
  add('procedure ExpandAll;'#13+
      ' Sets all sections into the expanded state');
  add('procedure ContractAll;'#13+
      ' Sets all sections into the contracted state');
  add('procedure SaveToFile(filename:string);'#13+
      ' Saves sections and its subitems to a file');
  add('procedure LoadFromFile(filename:string);'#13+
      ' Retrieves sections and its subitems from a file');
  add('procedure OptimizeTabs(padding:integer);'#13+
      ' Sets the TabPosition elements to the min. required settings');
  add('procedure Clear;'#13+
      ' Removes all sections and subitems from the listbox');
  add('procedure BeginUpdate;'#13+
      ' Disables redrawing during lengthy item changes');
  add('procedure EndUpdate;'#13+
      ' Enables redrawing');
 end;

 sectionlistbox4.loadfrominifile('win.ini');

end;

procedure TForm1.Label2Click(Sender: TObject);
begin
 shellexecute(self.handle,'open','http://www.tmssoftware.com',nil,nil,SW_NORMAL);
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
 sectionlistbox3.oneexpanded:=checkbox3.checked;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
 case radiogroup1.itemindex of
 0:sectionlistbox2.nodetype:=lnFlat;
 1:sectionlistbox2.nodetype:=ln3D;
 2:sectionlistbox2.nodetype:=lnGlyph;
 end;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
 if checkbox2.checked then
 sectionlistbox2.Activesection:=asFull else
 sectionlistbox2.Activesection:=asNodeOnly;
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
 if checkbox4.checked then
 sectionlistbox2.sectionfocus:=sf3D else
 sectionlistbox2.sectionfocus:=sfDash;
end;

procedure TForm1.Button7Click(Sender: TObject);
var
 i:integer;
begin
 with sectionlistbox5.Sections.Items[0] do
 for i:=1 to Subitems.Count do
  begin
   SubItemCheckState[i-1]:=false;
  end;
 with sectionlistbox5.Sections.items[1] do RadioIndex:=0;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
 i:integer;
begin
 with sectionlistbox5.Sections.Items[0] do
 for i:=1 to Subitems.Count do
  begin
   SubItemCheckState[i-1]:=(i=1);
  end;

 with sectionlistbox5.Sections.Items[1] do RadioIndex:=3;

end;

procedure TForm1.SectionListBox7DrawItem(Sender: TObject;
  section: TListSection; sectionidx, subitemidx: Integer; canvas: TCanvas;
  arect: TRect; astate: TOwnerDrawState);
var
 oldcol:tcolor;
 r:trect;
begin
 r:=arect;
 case sectionidx of
 0:begin
    oldcol:=canvas.brush.color;
    case subitemidx of
    0:canvas.brush.color:=clYellow;
    1:canvas.brush.color:=clLime;
    2:canvas.brush.color:=clRed;
    3:canvas.brush.color:=clBlue;
    4:canvas.brush.color:=clFuchsia;
    5:canvas.brush.color:=clAqua;
    6:canvas.brush.color:=clWhite;
    7:canvas.brush.color:=clBlack;
    end;
    inflaterect(arect,-10,-2);
    arect.right:=arect.left+25;
    canvas.fillrect(arect);
    canvas.brush.Color:=clBlack;
    canvas.framerect(arect);
    canvas.brush.color:=oldcol;
    canvas.textout(arect.left+35,arect.top,section.subitems[subitemidx]);
   end;
 1:begin
    canvas.font.name:=section.subitems[subitemidx];
    canvas.textout(arect.left+10,arect.top,section.subitems[subitemidx]);
   end;
 2:begin
    oldcol:=canvas.brush.color;
    case subitemidx of
    0:canvas.brush.Style:=bsSolid;
    1:canvas.brush.Style:=bsCross;
    2:canvas.brush.Style:=bsBDiagonal;
    3:canvas.brush.Style:=bsHorizontal;
    4:canvas.brush.Style:=bsVertical;
    end;
    canvas.brush.color:=clBlack;
    inflaterect(arect,-10,-2);
    arect.right:=arect.left+25;
    canvas.fillrect(arect);
    canvas.brush.style:=bsSolid;
    canvas.brush.Color:=clBlack;
    canvas.framerect(arect);
    canvas.brush.color:=oldcol;
    canvas.textout(arect.left+35,arect.top,section.subitems[subitemidx]);
   end;
 end;
 
 if odFocused in astate then drawfocusrect(canvas.handle,r);

end;

procedure TForm1.SectionListBox9AnchorClick(Sender: TObject;
  index: Integer; anchor: String);
begin
 messagedlg('You clicked : '+anchor,mtinformation,[mbok],0);
end;

procedure TForm1.CheckBox5Click(Sender: TObject);
begin
 sectionlistbox1.TabPosMove:=checkbox5.checked;
end;

procedure TForm1.CheckBox6Click(Sender: TObject);
begin
 sectionlistbox5.FullFocus:=checkbox6.Checked;
end;

end.
