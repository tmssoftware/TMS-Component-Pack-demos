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
  Dialogs, Grids, BaseGrid, AdvGrid, StdCtrls, asgprev, XPMan, AdvObj;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    Button1: TButton;
    Button2: TButton;
    AdvPreviewDialog1: TAdvPreviewDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AdvStringGrid1PrintNewPage(Sender: TObject; ARow: Integer;
      var NewPage: Boolean);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  advstringgrid1.FixedCols := 0;
  advstringgrid1.SaveFixedCells := false;
  advstringgrid1.LoadFromCSV('.\cars.csv');
  advstringgrid1.SortSettings.Column := 0;
  advstringgrid1.QSort;
  advstringgrid1.Cells[0, 0] := 'Brand';
  advstringgrid1.Cells[1, 0] := 'Type';
  advstringgrid1.Cells[2, 0] := 'Cc';
  advstringgrid1.Cells[3, 0] := 'Pk';
  advstringgrid1.Cells[4, 0] := 'Cyl';
  advstringgrid1.Cells[5, 0] := 'Kw';
  advstringgrid1.Cells[6, 0] := 'Price';
  advstringgrid1.Cells[7, 0] := 'Country';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if MessageDlg('Attention, this will print 15 pages, continue?', mtInformation, [mbYes, mbNo], 0) = mrYes then
  begin
    if printersetupdialog1.Execute then
      advstringgrid1.Print;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  advpreviewdialog1.Execute;
end;

procedure TForm1.AdvStringGrid1PrintNewPage(Sender: TObject; ARow: Integer;
  var NewPage: Boolean);
begin
  NewPage := false;
  if (ARow > 1) then
    NewPage := (AdvStringGrid1.Cells[0, ARow - 1] <> AdvStringGrid1.Cells[0, ARow]);
end;

end.
