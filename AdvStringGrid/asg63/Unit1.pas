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
  Dialogs, Grids, BaseGrid, AdvGrid, StdCtrls, XPMan, AdvObj;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InitGrid;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.InitGrid;
begin
  advstringgrid1.Grouping.MergeHeader := true;
  advstringgrid1.Grouping.HeaderColor := clWhite;
  advstringgrid1.Grouping.HeaderColorTo := clInfoBk;
  advstringgrid1.SaveFixedCells := false;
  advstringgrid1.LoadFromCSV('.\cargroups.csv');

  advstringgrid1.Group(1);
  advstringgrid1.SubGroup(1);
  advstringgrid1.ContractAll;
  advstringgrid1.Cells[1, 0] := 'Brand';
  advstringgrid1.Cells[2, 0] := 'Type';
  advstringgrid1.Cells[3, 0] := 'Cyl';
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
  InitGrid;

end;

end.
