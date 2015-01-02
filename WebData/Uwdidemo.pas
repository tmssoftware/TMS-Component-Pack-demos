{*************************************************************************}
{ TWebData demo application                                               }
{ version 1.0                                                             }
{ for Delphi 4.0,5.0,6.0,7.0 & C++Builder 4.0,5.0,6.0                     }
{                                                                         }
{ written by TMS Software                                                 }
{           copyright © 2001 - 2004                                       }
{           Email : info@tmssoftware.com                                  }
{           Web : http://www.tmssoftware.com                              }
{*************************************************************************}

unit Uwdidemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, WebImage, Buttons, StdCtrls, ComCtrls, ExtCtrls, WebData;

type
  TForm1 = class(TForm)
    WebData1: TWebData;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    WebImage1: TWebImage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  WebData1.Data.Clear;
  with WebData1.Data.Add do
  begin
    if pos('HTTP://',uppercase(edit1.Text)) = 0 then
      url := 'http://'+edit1.Text
    else
      url := edit1.Text;
  end;
  WebData1.Execute;
  Listbox1.Items.Assign(WebData1.ImageRefs);
  Listbox2.Items.Assign(WebData1.Hyperlinks);
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  if listbox1.itemindex >= 0 then
   webimage1.Url := listbox1.items[listbox1.ItemIndex];
end;

procedure TForm1.ListBox2Click(Sender: TObject);
begin
  if listbox2.itemindex >= 0 then
  begin
    if pos('.JPG',uppercase(listbox2.Items[Listbox2.ItemIndex])) > 0 then
       webimage1.Url := listbox2.Items[Listbox2.ItemIndex]
    else
    if pos('.GIF',uppercase(listbox2.Items[Listbox2.ItemIndex])) > 0 then
       webimage1.Url := listbox2.Items[Listbox2.ItemIndex]
    else
      edit1.Text := listbox2.Items[Listbox2.ItemIndex];
  end;

end;

end.
