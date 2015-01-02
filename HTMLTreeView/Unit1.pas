{************************************************************************}
{ THTMLTreeView demo app                                                 }
{                                                                        }
{ Copyright © 1999-2011                                                  }
{   TMS Software                                                         }
{   Email : info@tmssoftware.com                                         }
{   Web : http://www.tmssoftware.com                                     }
{************************************************************************}

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, htmltv, ComCtrls, ImgList, Variants;

type
  TForm1 = class(TForm)
    HTMLTreeview1: THTMLTreeview;
    ImageList1: TImageList;
    GroupBox1: TGroupBox;
    Button2: TButton;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Button4: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure HTMLTreeview1AnchorClick(Sender: TObject; Node: TTreeNode;
      anchor: String);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
var
  chk: Boolean;
begin
  htmltreeview1.GetNodeCheck(htmltreeview1.Items[0],chk);
  chk := not chk;
  htmltreeview1.SetNodeCheck(htmltreeview1.Items[0],chk);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  htmltreeview1.SetNodeCheck(htmltreeview1.Items[0],False);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  htmltreeview1.RemoveNodeCheck(htmltreeview1.Items[0]);
end;

procedure TForm1.HTMLTreeview1AnchorClick(Sender: TObject; Node: TTreeNode;
  anchor: String);
begin
  showmessage('anchor:'+anchor);
end;

procedure TForm1.Button4Click(Sender: TObject);
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

procedure TForm1.FormCreate(Sender: TObject);
var
  tn: TTreeNode;
begin
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

end;

end.
