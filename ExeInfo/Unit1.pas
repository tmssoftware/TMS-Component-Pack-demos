{********************************************************************}
{ TExeInfo DEMO application                                          }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2012                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExeInfo, StdCtrls, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Help1: TMenuItem;
    About1: TMenuItem;
    ExeInfo1: TExeInfo;
    Label1: TLabel;
    procedure About1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.About1Click(Sender: TObject);
begin
  MessageDlg(ExeInfo1.ProductName + ' version ' + ExeInfo1.ProductVersion + ' by ' + ExeInfo1.CompanyName, mtInformation, [mbok], 0);
end;

end.
