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

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, tmsAdvGridExcel, Grids, BaseGrid, AdvGrid, Buttons,
  ExtCtrls, AdvObj, XPMan;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    AdvGridExcelIO1: TAdvGridExcelIO;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SaveDialog1: TSaveDialog;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  if opendialog1.Execute then
  begin
    if FileExists(opendialog1.filename) then
      advgridexcelio1.XLSImport(opendialog1.filename);
  end;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  if savedialog1.execute then
  begin
    if fileexists(savedialog1.filename) then
      deletefile(savedialog1.filename);
    advgridexcelio1.XLSExport(savedialog1.filename);
  end;
end;

end.
