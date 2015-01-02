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
unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, AdvObj, BaseGrid, AdvGrid, XPMan;

type
  TForm4 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses
  ComObj;


procedure LoadFromADO(sg: TAdvStringGrid; mdb, table: string);
var
  adoset:variant;
  adoconn:variant;
  adofield:variant;
  i,j:integer;

begin
  adoconn := CreateOLEObject('ADODB.Connection');
  adoconn.Open('driver={Microsoft Access Driver (*.mdb)};dbq='+mdb);

  adoset := adoconn.Execute('SELECT * FROM '+table);

  sg.ColCount := adoset.fields.count + 1;

  for i := 1 to adoset.fields.Count-1 do
  begin
    adofield := adoset.fields.Item(i);
    sg.cells[i,0]:=adofield.Name;
  end;

  j := 1;
  while not adoset.EOF do
  begin
    if (j>sg.rowcount) then
      sg.rowcount := sg.rowcount + 1;
    for i := 1 to adoset.fields.Count-1 do
    begin
      adofield := adoset.fields.item(i);
      sg.cells[i,j] := adofield.Value;
    end;
    adoset.MoveNext;
    inc(j);
  end;

  adoset := unassigned;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
  LoadFromADO(AdvStringGrid1, '.\CARS.MDB' , 'CARS');
end;

end.
