{********************************************************************}
{ TAdvProgressBar DEMO application                                   }
{ version 1.0                                                        }
{ for Delphi 4.0,5.0,6.0,7.0 & C++Builder 4.0,5.0,6.0                }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2003-2004                                   }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}


unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Spin, AdvProgressBar;

type
  TForm1 = class(TForm)
    AdvProgressBar1: TAdvProgressBar;
    AdvProgressBar2: TAdvProgressBar;
    SpinButton1: TSpinButton;
    AdvProgressBar3: TAdvProgressBar;
    procedure SpinButton1DownClick(Sender: TObject);
    procedure SpinButton1UpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.SpinButton1DownClick(Sender: TObject);
begin
  AdvProgressBar2.Position := AdvProgressBar2.Position - 1;
end;

procedure TForm1.SpinButton1UpClick(Sender: TObject);
begin
  AdvProgressBar2.Position := AdvProgressBar2.Position + 1;
end;

end.
