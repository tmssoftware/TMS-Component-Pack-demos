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
  Dialogs, tmsAdvGridExcel, StdCtrls, ExtCtrls, AdvGridWorkbook, Grids,
  BaseGrid, AdvGrid, ComCtrls, AdvObj, XPMan;

type
  TForm1 = class(TForm)
    AdvGridWorkbook1: TAdvGridWorkbook;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    xls: TAdvGridExcelIO;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    ProgressBar1: TProgressBar;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure xlsProgress(Sender: TObject; SheetNum, SheetTot, RowNum,
      RowTot: Integer);
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
  if OpenDialog1.Execute then
  begin
    xls.XLSImport(OpenDialog1.FileName, 1);
    progressbar1.Position := 0;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    xls.XLSImport(OpenDialog1.FileName);
    progressbar1.Position := 0;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    xls.XLSExport(SaveDialog1.FileName, 'Test');
    progressbar1.Position := 0;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    xls.XLSExport(SaveDialog1.FileName);
    progressbar1.Position := 0;
  end;
end;

procedure TForm1.xlsProgress(Sender: TObject; SheetNum, SheetTot, RowNum,
  RowTot: Integer);
begin
  progressbar1.Max := RowTot;
  progressbar1.Position := RowNum;
end;

end.
