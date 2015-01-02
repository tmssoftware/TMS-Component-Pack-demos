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

unit Uasg49;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, StdCtrls, XPMan, AdvObj;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    Button1: TButton;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AdvStringGrid1AutoInsertRow(Sender: TObject; ARow: Integer);
    procedure AdvStringGrid1AutoDeleteRow(Sender: TObject; ARow: Integer);
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
  AdvStringGrid1.FloatingFooter.ColumnCalc[0] := acCount;
  AdvStringGrid1.FloatingFooter.ColumnCalc[1] := acSum;
  AdvStringGrid1.FloatingFooter.ColumnCalc[2] := acAvg;
  AdvStringGrid1.FloatingFooter.ColumnCalc[3] := acMin;
  AdvStringGrid1.FloatingFooter.ColumnCalc[4] := acMax;
  AdvStringGrid1.RandomFill(False, 100);
  AdvstringGrid1.AutoNumberCol(0);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  AdvStringGrid1.RandomFill(false, 100)
end;

procedure TForm1.AdvStringGrid1AutoInsertRow(Sender: TObject;
  ARow: Integer);
begin
  AdvstringGrid1.AutoNumberCol(0);
end;

procedure TForm1.AdvStringGrid1AutoDeleteRow(Sender: TObject;
  ARow: Integer);
begin
  AdvstringGrid1.AutoNumberCol(0);
end;

end.
