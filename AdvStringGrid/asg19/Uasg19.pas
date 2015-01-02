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

unit Uasg19;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, AdvGrid, BaseGrid, AdvObj, XPMan;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1GetEditorType(Sender: TObject; ACol,
      ARow: Integer; var aEditor: TEditorType);
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
  AdvStringGrid1.Cells[1, 1] := '100µA';
  AdvStringGrid1.Cells[1, 2] := '50mA';
  AdvStringGrid1.Cells[1, 3] := '3A';

  AdvStringGrid1.Cells[2, 1] := '60$';
  AdvStringGrid1.Cells[2, 2] := '45£';
  AdvStringGrid1.Cells[2, 3] := '100EU';
end;

procedure TForm1.AdvStringGrid1GetEditorType(Sender: TObject; ACol,
  ARow: Integer; var aEditor: TEditorType);
begin
  if (aCol = 1) then
  begin
    AdvStringGrid1.BtnUnitEdit.Units.Clear;
    AdvStringGrid1.BtnUnitEdit.Units.Add('µA');
    AdvStringGrid1.BtnUnitEdit.Units.Add('mA');
    AdvStringGrid1.BtnUnitEdit.Units.Add('A');
    aEditor := edUnitEditBtn;
  end;
  if (aCol = 2) then
  begin
    AdvStringGrid1.BtnUnitEdit.Units.Clear;
    AdvStringGrid1.BtnUnitEdit.Units.Add('$');
    AdvStringGrid1.BtnUnitEdit.Units.Add('£');
    AdvStringGrid1.BtnUnitEdit.Units.Add('EU');
    aEditor := edUnitEditBtn;
  end;


end;

end.
