{********************************************************************}
{ TPickDialog DEMO application                                       }
{ version 1.5                                                        }
{ for Delphi 4.0,5.0,6.0,7.0 & C++Builder 4.0,5.0,6.0                }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 1998-2004                                   }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}


unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, PickDlg, XPMan;

type
  TForm1 = class(TForm)
    PickDialog1: TPickDialog;
    Button1: TButton;
    ListBox1: TListBox;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if pickdialog1.Execute = mrOK then
  begin
    Listbox1.Items.Assign(pickdialog1.SelectList);
  end;
end;

end.
