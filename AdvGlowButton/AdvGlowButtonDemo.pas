{********************************************************************}
{ TMS TAdvGlowButton Demo                                            }
{ for Delphi & C++Builder                                            }
{                                                                    }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2012                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit AdvGlowButtonDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, Menus, AdvMenus, jpeg, ExtCtrls, AdvToolBar,
  AdvToolBarStylers, StdCtrls, AdvStyleIF;

type
  TForm2 = class(TForm)
    Image1: TImage;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton9: TAdvGlowButton;
    AdvGlowButton8: TAdvGlowButton;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    AdvGlowButton10: TAdvGlowButton;
    AdvGlowButton11: TAdvGlowButton;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    AdvGlowButton1: TAdvGlowButton;
    ComboBox2: TComboBox;
    Label5: TLabel;
    PopupMenu1: TPopupMenu;
    File1: TMenuItem;
    View1: TMenuItem;
    Exit1: TMenuItem;
    Label6: TLabel;
    ComboBox3: TComboBox;
    Label4: TLabel;
    procedure AdvGlowButton10Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.AdvGlowButton10Click(Sender: TObject);
begin
  AdvGlowButton10.ShortCutHint := 'Button';
  AdvGlowButton10.ShortCutHintPos := shpBottom;
  AdvGlowButton10.ShowShortCutHint;
end;


procedure TForm2.ComboBox1Change(Sender: TObject);
begin
  case combobox1.ItemIndex of
  0: begin AdvGlowButton11.SetComponentStyle(tsOffice2003Blue);AdvGlowButton10.SetComponentStyle(tsOffice2003Blue); end;
  1: begin AdvGlowButton11.SetComponentStyle(tsOffice2003Silver);AdvGlowButton10.SetComponentStyle(tsOffice2003Silver); end;
  2: begin AdvGlowButton11.SetComponentStyle(tsOffice2003Olive);AdvGlowButton10.SetComponentStyle(tsOffice2003Olive); end;
  3: begin AdvGlowButton11.SetComponentStyle(tsOffice2007Luna);AdvGlowButton10.SetComponentStyle(tsOffice2007Luna); end;
  4: begin AdvGlowButton11.SetComponentStyle(tsOffice2007Silver);AdvGlowButton10.SetComponentStyle(tsOffice2007Silver); end;
  5: begin AdvGlowButton11.SetComponentStyle(tsOffice2007Obsidian);AdvGlowButton10.SetComponentStyle(tsOffice2007Obsidian); end;
  end;
end;

procedure TForm2.ComboBox2Change(Sender: TObject);
begin
case ComboBox2.ItemIndex of
0:
  begin
  AdvGlowButton1.DropDownDirection := ddRight;
  end;
1:
  begin
  AdvGlowButton1.DropDownDirection := ddDown;
  end;
end;
end;

procedure TForm2.ComboBox3Change(Sender: TObject);
begin
case ComboBox3.ItemIndex of
0:
  begin
  AdvGlowButton1.DropDownPosition := dpRight;
  end;
1:
  begin
  AdvGlowButton1.DropDownPosition := dpBottom ;
  end;
end;

end;

procedure TForm2.Image1Click(Sender: TObject);
begin
  AdvGlowButton1.DropDownPosition := dpRight;
  AdvGlowButton1.DropDownDirection := ddRight;
end;

end.
