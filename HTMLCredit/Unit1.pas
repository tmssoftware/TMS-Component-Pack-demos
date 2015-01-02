{*************************************************************************}
{ THTMLCredit demo application                                            }
{ version 1.0                                                             }
{ for Delphi & C++Builder                                                 }
{                                                                         }
{ written by TMS Software                                                 }
{           copyright © 2003 - 2006                                       }
{           Email : info@tmssoftware.com                                  }
{           Web : http://www.tmssoftware.com                              }
{*************************************************************************}


unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, StdCtrls, XPMan, HTMLCredit;

type
  TForm1 = class(TForm)
    ImageList1: TImageList;
    XPManifest1: TXPManifest;
    HTMLCredit1: THTMLCredit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
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
  htmlcredit1.AutoScroll := true;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  htmlcredit1.Loop := checkbox1.Checked;
end;

end.
