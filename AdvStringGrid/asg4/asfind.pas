{*************************************************************************}
{ TAdvStringGrid find unit                                                }
{                                                                         }
{ written by TMS Software                                                 }
{            copyright © 1998-2011                                        }
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


unit asfind;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ashlp, ExtCtrls;

type
  Tfinddlg = class(TForm)
    Label1: TLabel;
    findtext: TEdit;
    chkcase: TCheckBox;
    chkfull: TCheckBox;
    chkregular: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    dir: TRadioGroup;
    where: TRadioGroup;
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  finddlg: Tfinddlg;

implementation

{$R *.DFM}

procedure Tfinddlg.Button3Click(Sender: TObject);
var
  findhlp: tfindhlp;
begin
  findhlp := tfindhlp.create(self);
  try
    findhlp.showmodal;
  finally
    findhlp.free;
  end;
end;

end.
