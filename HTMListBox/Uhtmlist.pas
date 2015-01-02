unit Uhtmlist;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, HTMListb, ComCtrls, PictureContainer, AdvStyleIF, HTMLChkList
 {$IFNDEF VER100}
  ,ImgList
  {$ENDIF}
  ;

type
  TForm1 = class(TForm)
    ImageList1: TImageList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    HTMListbox1: THTMListBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CheckBox1: TCheckBox;
    HTMListBox2: THTMListBox;
    PictureContainer1: TPictureContainer;
    CheckBox2: TCheckBox;
    TabSheet3: TTabSheet;
    HiCheck: TCheckBox;
    MarkCheck: TCheckBox;
    HTMListBox3: THTMListBox;
    ComboBox1: TComboBox;
    TabSheet4: TTabSheet;
    HTMLCheckList1: THTMLCheckList;
    procedure HTMListbox1Click(Sender: TObject);
    procedure HTMListbox1AnchorEnter(Sender: TObject; index: Integer;
      anchor: String);
    procedure HTMListbox1AnchorClick(Sender: TObject; index: Integer;
      anchor: String);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure HTMListbox1AnchorExit(Sender: TObject; index: Integer;
      anchor: String);
    procedure CheckBox2Click(Sender: TObject);
    procedure HiCheckClick(Sender: TObject);
    procedure MarkCheckClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.HTMListbox1Click(Sender: TObject);
begin
  label2.caption := HTMListbox1.TextItems[HTMListbox1.ItemIndex];
end;

procedure TForm1.HTMListbox1AnchorEnter(Sender: TObject; index: Integer;
  anchor: String);
begin
  label4.caption:=anchor;
end;

procedure TForm1.HTMListbox1AnchorClick(Sender: TObject; index: Integer;
  anchor: String);
begin
  MessageDlg('Anchor : '+anchor+' clicked',mtinformation,[mbok],0);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  htmlistbox1.itemindex:=0;

  // no checkbox for comment items
  htmlchecklist1.Comment[0] := true;
  htmlchecklist1.Comment[4] := true;
  htmlchecklist1.Checked[5] := true;
  htmlchecklist1.ItemEnabled[5] := false;
  htmlchecklist1.SetComponentStyle(tsOffice2007Luna);
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  HTMListbox1.EnableBlink:=checkbox1.checked;
end;

procedure TForm1.HTMListbox1AnchorExit(Sender: TObject; index: Integer;
  anchor: String);
begin
  label4.caption := '';
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  htmlistbox2.enableblink := checkbox2.checked;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
  0: HTMListBox2.SetComponentStyle(tsWindowsXP);
  1: HTMListBox2.SetComponentStyle(tsOffice2003Blue);
  2: HTMListBox2.SetComponentStyle(tsOffice2007Luna);
  end;
  HTMListBox2.Invalidate;
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

end.
