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


unit uasg9;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, AdvGrid, Asprev, StdCtrls, BaseGrid, AdvObj, XPMan;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AdvStringGrid1PrintPage(Sender: TObject; Canvas: TCanvas;
      pagenr, pagexsize, pageysize: Integer);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
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
  advstringgrid1.savefixedcells := false;
  advstringgrid1.loadfromcsv('test.csv');
  advstringgrid1.AutoNumberCol(0);
  advstringgrid1.AutoSizeColumns(true);
  advstringgrid1.URLShow := true;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  pagepreview: tpagepreview;
begin
  pagepreview := tpagepreview.Create(self, advstringgrid1);
  try
    pagepreview.ShowModal;
  finally
    pagepreview.free;
  end;
end;

procedure TForm1.AdvStringGrid1PrintPage(Sender: TObject; Canvas: TCanvas;
  pagenr, pagexsize, pageysize: Integer);
var
  bmp: tbitmap;
  r: trect;
//  lx, ly: integer;
  ratio: double;

begin
  bmp := tbitmap.create;
  bmp.loadfromfile('athena.bmp');

  ratio := bmp.width / bmp.height;

  r.Left := advstringgrid1.printcoloffset[1];
  r.top := -0;
  r.right := r.left + round(advstringgrid1.printsettings.headersize * ratio);
  r.bottom := r.top - advstringgrid1.printsettings.headersize;

  canvas.stretchdraw(r, bmp);
  bmp.free;

  r.left := r.right;
  r.top := 0;
  canvas.textout(r.left, r.top, 'Printed with TAdvStringGrid');
  r.top := r.top - canvas.textheight('gh');
  canvas.textout(r.left, r.top, 'showing how to add a bitmap in the header');

  r.left := advstringgrid1.printcoloffset[1];
  r.right := advstringgrid1.printcoloffset[8];

  r.top := -advstringgrid1.printsettings.HeaderSize + 2;
  canvas.moveto(r.left, r.top);
  canvas.lineto(r.right, r.top);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  advstringgrid1.Print;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  advstringgrid1.PrintSettings.Centered := checkbox1.checked;
end;

end.
