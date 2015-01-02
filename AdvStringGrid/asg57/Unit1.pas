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
    AdvStringGrid2: TAdvStringGrid;
    AdvStringGrid3: TAdvStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1ExpandNode(Sender: TObject; ARow,
      ARowreal: Integer);
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
  advstringgrid1.LinearFill(false);
  advstringgrid1.AddNode(1, 2);
  advstringgrid1.RowHeights[2] := 128;
  advstringgrid1.MergeCells(1, 2, 4, 1);
  advstringgrid1.CellControls[1, 2] := advstringgrid2;
  advstringgrid1.AddNode(3, 2);
  advstringgrid1.RowHeights[4] := 128;
  advstringgrid1.MergeCells(1, 4, 4, 1);
  advstringgrid1.CellControls[1, 4] := advstringgrid3;
  advstringgrid1.ContractNode(1);
  advstringgrid1.ContractNode(3);
end;

procedure TForm1.AdvStringGrid1ExpandNode(Sender: TObject; ARow,
  ARowreal: Integer);
begin
  advstringgrid2.RandomFill(false, 100);
  advstringgrid3.RandomFill(false, 100);
end;

end.
