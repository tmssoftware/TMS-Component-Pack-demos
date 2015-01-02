{********************************************************************}
{ TLISTLINK DEMO                                                     }
{ version 1.2                                                        }
{ for Delphi 4.0,5.0,6.0,7.0 & C++Builder 4.0,5.0,6.0                }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 1998-2002                                   }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit lltest;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, listlink, ComCtrls;

type
  TForm2 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    movelr: TButton;
    moverl: TButton;
    movesellr: TButton;
    moveselrl: TButton;
    copylr: TButton;
    copyrl: TButton;
    copysellr: TButton;
    copyselrl: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    tlistlink1: TListLink;
    ListView1: TListView;
    ListView2: TListView;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Label3: TLabel;
    Label4: TLabel;
    ListLink1: TListLink;
    procedure movelrClick(Sender: TObject);
    procedure moverlClick(Sender: TObject);
    procedure movesellrClick(Sender: TObject);
    procedure moveselrlClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.DFM}

procedure TForm2.movelrClick(Sender: TObject);
begin
 messagedlg('hello move LR',mtinformation,[mbok],0);
end;

procedure TForm2.moverlClick(Sender: TObject);
begin
 messagedlg('hello move RL',mtinformation,[mbok],0);
end;

procedure TForm2.movesellrClick(Sender: TObject);
begin
 messagedlg('hello move sel LR',mtinformation,[mbok],0);
end;

procedure TForm2.moveselrlClick(Sender: TObject);
begin
 messagedlg('hello move sel RL',mtinformation,[mbok],0);
end;

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
  listbox1.multiselect:=checkbox1.checked;
end;

procedure TForm2.CheckBox2Click(Sender: TObject);
begin
  listbox2.multiselect:=checkbox2.checked;
end;

end.
