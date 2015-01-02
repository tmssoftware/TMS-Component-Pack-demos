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
  Dialogs, Grids, BaseGrid, AdvGrid, AdvGridWorkbook, StdCtrls,
  Menus, ExtCtrls, XPMan, AdvObj;

type
  TForm1 = class(TForm)
    AdvGridWorkbook1: TAdvGridWorkbook;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure Loadfiles2Click(Sender: TObject);
    procedure Sortgrid1Click(Sender: TObject);
    procedure WorkBookGrid3GetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Loadfiles2Click(Sender: TObject);
var
  i: integer;
  filelist: TStringList;
  fname: string;
begin
  filelist := TStringList.Create;
  filelist.Add('.\cars.csv');
  filelist.Add('.\data.csv');
  filelist.Add('.\germany.csv');

  with AdvGridWorkBook1 do
  begin
    Sheets.Clear;
    Grid.SaveFixedCells := false;

    for i := 1 to filelist.Count do
    begin
      fname := ExtractFileName(filelist.Strings[i - 1]);
      if pos('.', fname) > 0 then
        delete(fname, pos('.', fname), length(fname));

      Sheets.Add.Name := fname;
      ActiveSheet := i - 1;
      Grid.LoadFromCSV(filelist.Strings[i - 1]);
      Grid.AutoNumberCol(0);
      Grid.AutoNumberRow(0);
    end;

    ActiveSheet := 0;
  end;

  filelist.Free;
end;

procedure TForm1.Sortgrid1Click(Sender: TObject);
begin
  with AdvGridWorkbook1.Grid do
  begin
    SortSettings.Column := 1;
    if SortSettings.Direction = sdAscending then
      SortSettings.Direction := sdDescending
    else
      SortSettings.Direction := sdAscending;
    QSort;
  end;
end;

procedure TForm1.WorkBookGrid3GetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
  if acol in [1,2] then
    AStyle := ssAlphabetic;
end;

end.
