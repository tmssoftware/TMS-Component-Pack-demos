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
unit Uasg3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, AdvGrid, Mask, BaseGrid, AdvObj, XPMan;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    procedure AdvStringGrid1GetEditMask(Sender: TObject; ACol,
      ARow: Integer; var Value: string);
    procedure AdvStringGrid1AutoInsertRow(Sender: TObject; ARow: Integer);
    procedure AdvStringGrid1CellValidate(Sender: TObject; ACol, ARow: Integer;
      var Value: string; var Valid: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.AdvStringGrid1CellValidate(Sender: TObject; ACol,
  ARow: Integer; var Value: string; var Valid: Boolean);
begin
  if ACol = 0 then
    Value := Trim(Value);
end;

procedure TForm1.AdvStringGrid1GetEditMask(Sender: TObject; ACol,
  ARow: Integer; var Value: string);
begin
  case ACol of
    0: Value := '!000;1;_';
    1: Value := '';
    2: Value := '!000;1;_';
    3: Value := '!99/99/00;1;_';
    4: Value := '!90:00;1;_';
  end;
end;

procedure TForm1.AdvStringGrid1AutoInsertRow(Sender: TObject;
  ARow: Integer);
var
  i: Integer;
begin
  with AdvStringGrid1 do
  begin
    if (Cells[0, ARow - 1] <> '') and (ARow > 1) then
      i := Ints[0, ARow - 1]
    else
      i := 0;
    Cells[0, ARow] := Inttostr(i + 1);
  end;
end;

end.
