{***************************************************************************}
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


unit uasg25;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, AdvGrid, ExtCtrls, Printers, StdCtrls, BaseGrid, AdvObj, XPMan;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    AdvStringGrid2: TAdvStringGrid;
    Button1: TButton;
    AdvStringGrid3: TAdvStringGrid;
    AdvStringGrid4: TAdvStringGrid;
    PrinterSetupDialog1: TPrinterSetupDialog;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
  advstringgrid1.randomfill(false, 100);
  advstringgrid2.randomfill(false, 100);
  advstringgrid3.randomfill(false, 100);
  advstringgrid4.randomfill(false, 100);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  r: trect;
  quarterpage: trect;
begin
  if printersetupdialog1.Execute then
  begin
    with Printer do
    begin
      BeginDoc;

      r := Canvas.ClipRect;
      quarterpage := rect(0, 0, (r.right - r.left) shr 1, (r.bottom - r.top) shr 1);

      SetMapMode(canvas.handle, mm_lometric);
      DPToLP(canvas.handle, r, 2);

      advstringgrid1.PrintSettings.FitToPage := fpShrink;
      advstringgrid1.PrintDraw(canvas, quarterpage);

      advstringgrid2.PrintSettings.HeaderSize := (-r.bottom) shr 1;
      advstringgrid2.PrintSettings.FitToPage := fpShrink;
      advstringgrid2.PrintDraw(canvas, quarterpage);

      advstringgrid3.PrintSettings.LeftSize := r.right shr 1;
      advstringgrid3.PrintSettings.FitToPage := fpShrink;
      advstringgrid3.PrintDraw(canvas, quarterpage);

      advstringgrid4.PrintSettings.LeftSize := r.right shr 1;
      advstringgrid4.PrintSettings.HeaderSize := (-r.bottom) shr 1;
      advstringgrid4.PrintSettings.FitToPage := fpShrink;
      advstringgrid4.PrintDraw(canvas, quarterpage);

      EndDoc;
    end;
  end;
end;

end.
