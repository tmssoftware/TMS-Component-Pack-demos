{*************************************************************************}
{ TAdvStringGrid demo application                                         }
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

unit Udlgs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, AdvGrid, asgprint, asgprev, AdvObj, BaseGrid, XPMan;

type
  TForm1 = class(TForm)
    Button1: TButton;
    AdvPreviewDialog1: TAdvPreviewDialog;
    AdvStringGrid1: TAdvStringGrid;
    AdvGridPrintSettingsDialog1: TAdvGridPrintSettingsDialog;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
  advpreviewdialog1.execute;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  advgridprintsettingsdialog1.execute;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  advstringgrid1.savefixedcells := false;
  advstringgrid1.loadfromcsv('cars.csv');
end;

end.
