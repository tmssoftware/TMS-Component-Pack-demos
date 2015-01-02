{********************************************************************}
{ TCOLUMNLISTBOX DEMO                                                }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 1998-2012                                   }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit Ucldemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, collistb, ImgList, ShellApi;

type
  TForm1 = class(TForm)
    ColumnListBox1: TColumnListBox;
    ImageList1: TImageList;
    Button1: TButton;
    Button2: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Button3: TButton;
    CheckBox1: TCheckBox;
    Button4: TButton;
    ColorDialog1: TColorDialog;
    Button5: TButton;
    Button6: TButton;
    FontDialog1: TFontDialog;
    CheckBox2: TCheckBox;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure ColumnListBox1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
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
 with ColumnListBox1.ListBoxItems.Add do
  begin
   ImageIndex:=random(2);
   Strings.Add(inttostr(ColumnListBox1.Items.Count-1));
   Strings.Add('Item '+inttostr(ColumnListBox1.Items.Count-1));
   Strings.Add('Model type goes here');
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 with ColumnListBox1.ListBoxItems.Items[ColumnListBox1.Items.Count-1] do Free;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
 ColumnListBox1.GridLines:=checkbox1.checked;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  colordialog1.Color:=ColumnListBox1.Columns.Items[0].Color;
  if colordialog1.Execute then
   ColumnListBox1.Columns.Items[0].Color :=colordialog1.Color;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  colordialog1.Color:=ColumnListBox1.Columns.Items[3].Color;
  if colordialog1.Execute then
   ColumnListBox1.Columns.Items[3].Color :=colordialog1.Color;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  fontdialog1.font.Assign(ColumnListBox1.Columns.Items[0].Font);
  if fontdialog1.execute then
    ColumnListBox1.Columns.Items[0].Font:=fontdialog1.font;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  fontdialog1.font.Assign(ColumnListBox1.Columns.Items[3].Font);
  if fontdialog1.execute then
    ColumnListBox1.Columns.Items[3].Font:=fontdialog1.font;

end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  ColumnListBox1.BeginUpdate;
  ColumnListBox1.ListBoxItems[1].ImageIndex := -1;
  ColumnListBox1.EndUpdate;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
 columnlistbox1.MultiSelect:=checkbox2.checked;
end;

procedure TForm1.Label4Click(Sender: TObject);
begin
 shellexecute(0,'open' ,pchar(label4.caption),nil,nil,SW_NORMAL);
end;

procedure TForm1.ColumnListBox1Click(Sender: TObject);
begin
   showmessage(columnlistbox1.listboxitems.Items[columnlistbox1.ItemIndex].strings[1]);
   showmessage(inttostr(columnlistbox1.listboxitems.Items[columnlistbox1.ItemIndex].Tag));
end;

end.
