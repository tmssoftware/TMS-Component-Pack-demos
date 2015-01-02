{*************************************************************************}
{ TAdvStringGrid about screen                                             }
{                                                                         }
{ written by TMS Software                                                 }
{            copyright © 1998-2012                                        }
{            Email : info@tmssoftware.Com                                 }
{            Web : http://www.tmssoftware.Com                             }
{                                                                         }
{ The source code is given as is. The author is not responsible           }
{ for any possible damage done due to the use of this code.               }
{ The component can be freely used in any application. The complete       }
{ source code remains property of the author and may not be distributed,  }
{ published, given or sold in any form as such. No parts of the source    }
{ code can be included in any other component or application without      }
{ written authorization of the author.                                    }
{*************************************************************************}

unit asabout;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, shellapi, ComCtrls, jpeg;

type
  TAbout = class(TForm)
    Label3: TLabel;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    Button1: TButton;
    Image2: TImage;
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  About: TAbout;

implementation

{$R *.DFM}

procedure TAbout.Label3Click(Sender: TObject);
begin
  ShellExecute(Application.Handle, 'open', 'http://www.tmssoftware.com', nil, nil, SW_NORMAL);
end;

end.
