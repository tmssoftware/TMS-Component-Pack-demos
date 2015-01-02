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
unit Uasg61;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, AdvGrid, ImgList, BaseGrid, AdvObj
{$IFDEF VER150}
  , XPMan
{$ENDIF}
  ;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    ImageList1: TImageList;
    procedure AdvStringGrid1GetEditorType(Sender: TObject; aCol,
      aRow: Integer; var aEditor: TEditorType);
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1ComboChange(Sender: TObject; ACol, ARow,
      AItemIndex: Integer; ASelection: string);
    procedure AdvStringGrid1HasComboBox(Sender: TObject; ACol,
      ARow: Integer; var HasComboBox: Boolean);
    procedure AdvStringGrid1GetEditorProp(Sender: TObject; ACol, ARow: Integer;
      AEditLink: TEditLink);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.AdvStringGrid1GetEditorProp(Sender: TObject; ACol,
  ARow: Integer; AEditLink: TEditLink);
begin
  with AdvStringGrid1 do
    case ACol of
      1: begin
          ClearComboString;
          if FileExists('cars.dat') then
            ComboBox.Items.LoadFromFile('cars.dat');
        end;
      2: begin
          ClearComboString;
          if Cells[1, ARow] <> '' then
            if FileExists(Cells[1, ARow] + '.dat') then
              ComboBox.Items.LoadFromFile(Cells[1, ARow] + '.dat');
        end;
    end;

end;

procedure TForm1.AdvStringGrid1GetEditorType(Sender: TObject; aCol,
  aRow: Integer; var aEditor: TEditorType);
begin
  if Acol in [1,2] then
    AEditor := edComboList;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to 2 do
    AdvStringGrid1.AddImageIdx(i, 0, i, haBeforeText, vatop);
end;

procedure TForm1.AdvStringGrid1ComboChange(Sender: TObject; ACol, ARow,
  AItemIndex: Integer; ASelection: string);
var
  sl: TStringList;
begin
  if ACol = 1 then
  begin
    sl := TStringList.Create;
    if FileExists(ASelection + '.dat') then
      sl.LoadFromFile(ASelection + '.dat');

    if sl.Count > 0 then
      AdvStringGrid1.Cells[2, ARow] := sl.Strings[0];

    sl.Free;

    AdvStringGrid1.RepaintCell(2, ARow);
  end;
end;



procedure TForm1.AdvStringGrid1HasComboBox(Sender: TObject; ACol,
  ARow: Integer; var HasComboBox: Boolean);
begin
  HasComboBox := (ACol = 1) or
    ((ACol = 2) and
    ((AdvStringGrid1.Cells[1, ARow] <> '') or
    (AdvStringGrid1.EditMode and (AdvStringGrid1.Row = ARow) and (AdvStringGrid1.Col = 1))));
end;

end.
