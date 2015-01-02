{*************************************************************************}
{ TAdvStringGrid demo unit                                                }
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
unit AdvGridImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AsgImport, StdCtrls, Grids, BaseGrid, AdvGrid, ExtCtrls, jpeg,
  AdvObj, XPMan;

type
  TForm2 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    btnImport: TButton;
    Label1: TLabel;
    AdvGridImportDialog1: TAdvGridImportDialog;
    CheckBox1: TCheckBox;
    procedure btnImportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}


procedure TForm2.btnImportClick(Sender: TObject);
begin
  AdvGridImportDialog1.AutoSizeOnLoad := CheckBox1.Checked;
  AdvGridImportDialog1.OpenAndExecute;
end;

end.
