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


unit Uasg12;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, AdvGrid, BaseGrid, ComCtrls, AdvObj, XPMan;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    AdvStringGrid2: TAdvStringGrid;
    StatusBar1: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1RadioClick(Sender: TObject; aCol, aRow,
      aIdx: Integer);
    procedure AdvStringGrid2GetEditorType(Sender: TObject; aCol,
      aRow: Integer; var aEditor: TEditorType);
    procedure AdvStringGrid2CellValidate(Sender: TObject; Col,
      Row: Integer; var Value: string; var Valid: Boolean);
    procedure AdvStringGrid1RadioMouseUp(Sender: TObject; ACol, ARow,
      AIdx: Integer);
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
var
  i: integer;
  radopt1: tstringlist;
  radopt2: tstringlist;

begin
  AdvStringGrid1.cells[0, 1] := '10525';

  radopt1 := TStringList.Create;
  radopt1.Add('Delphi');
  radopt1.Add('C++Builder');
  radopt1.Add('JBuilder');

  radopt2 := tstringlist.Create;
  radopt2.Add('Std');
  radopt2.Add('Prof');
  radopt2.Add('C/S');

  with AdvStringGrid1 do
  begin
    for i := 1 to RowCount - 1 do
    begin
      CreateRadio(1, i, 0, -1).AddStrings(radopt1);
      CreateRadio(2, i, 1, -1).AddStrings(radopt2);
    end;
  end;

  radopt1.Free;
  radopt2.Free;
end;

procedure TForm1.AdvStringGrid1RadioClick(Sender: TObject; aCol, aRow,
  aIdx: Integer);
var
  ms: TMemoryStream;
begin
  ms := TMemoryStream.Create;
  try
    AdvStringGrid1.SaveToStream(ms);
    ms.position := 0;
    AdvStringGrid2.LoadFromStream(ms);
  finally
    ms.Free;
  end;
end;

procedure TForm1.AdvStringGrid2GetEditorType(Sender: TObject; aCol,
  aRow: Integer; var aEditor: TEditorType);
begin
  if acol in [1, 2] then aEditor := edComboList;
  if acol = 1 then
    AdvStringGrid2.combobox.Items.Assign(AdvStringGrid1.GetRadioStrings(1, 1));
  if acol = 2 then
    AdvStringGrid2.combobox.Items.Assign(AdvStringGrid1.GetRadioStrings(2, 1));
end;

procedure TForm1.AdvStringGrid1RadioMouseUp(Sender: TObject; ACol, ARow,
  AIdx: Integer);
begin
  StatusBar1.SimpleText := 'Radio button clicked: ' + inttostr(aidx);
end;

procedure TForm1.AdvStringGrid2CellValidate(Sender: TObject; Col,
  Row: Integer; var Value: string; var Valid: Boolean);

var
  ms: tmemorystream;
begin
  ms := TMemoryStream.Create;
  try
    AdvStringGrid2.SaveToStream(ms);
    ms.position := 0;
    AdvStringGrid1.LoadFromStream(ms);
  finally
    ms.Free;
  end;
end;

end.
