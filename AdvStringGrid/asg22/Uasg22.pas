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

unit Uasg22;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, AdvGrid, StdCtrls, BaseGrid, XPMan, AdvObj;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1ClickCell(Sender: TObject; Arow,
      Acol: Integer);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  AdvStringGrid1.SaveFixedCells := False;
  AdvStringGrid1.LoadFromCSV('cars.csv');
  AdvStringGrid1.Rowcount := AdvStringGrid1.RowCount + 1;
  AdvStringGrid1.FixedFooters := 1;
  AdvStringGrid1.FixedAsButtons := True;
end;

procedure TForm1.AdvStringGrid1ClickCell(Sender: TObject; Arow,
  Acol: Integer);
var
  s: string;
begin
  if (arow = 0) and
    (acol > 0) then
  begin
    s := advstringgrid1.cells[acol, arow];
    if InputQuery('Column ' + inttostr(acol), 'Condition', s) then
      advstringgrid1.cells[acol, arow] := s
    else
      advstringgrid1.repaintcell(acol, arow);
  end;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
var
  i: Integer;
  added: Boolean;
begin
  added := False;
  with advstringgrid1 do
  begin
    Filter.Clear;
    Filteractive := False;
    for i := FixedCols to ColCount - 1 do
    begin
      if (cells[i, 0] <> '') then
        with filter.add do
        begin
          condition := cells[i, 0];
          column := i;
          added := true;
        end;
    end;
    filteractive := true;
  end;
  if not added then Showmessage('No filter conditions set');
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i: integer;
begin
  for i := advstringgrid1.fixedcols to advstringgrid1.colcount - 1 do
  begin
    advstringgrid1.Cells[i, 0] := '';
  end;
  advstringgrid1.Filter.Clear;
  advstringgrid1.Filteractive := false;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  advstringgrid1.Cells[1, 0] := '>B & <M';
  advstringgrid1.Cells[3, 0] := '>5000';
  advstringgrid1.Cells[8, 0] := '4';

  CheckBox1Click(Sender);
end;

end.
