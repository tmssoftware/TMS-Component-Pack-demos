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
  Dialogs, StdCtrls, Grids, BaseGrid, AdvGrid, XPMan, AdvObj;

type
  TForm5 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    XPManifest1: TXPManifest;
    Button2: TButton;
    Button3: TButton;
    procedure AdvStringGrid1GetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure AdvStringGrid1CanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure AdvStringGrid1GetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: string);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InitGrid;
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.AdvStringGrid1CanEditCell(Sender: TObject; ARow, ACol: Integer;
  var CanEdit: Boolean);
begin
  CanEdit := ARow > 2;
end;

procedure TForm5.AdvStringGrid1GetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
begin
  case ACol of
    1: AEditor := edUniEdit;
    2: AEditor := edUniComboList;
    3: AEditor := edUniComboEdit;
    4: AEditor := edUniEditBtn;
  end;

  if ACol = 2 then
  begin
    AdvStringGrid1.UniCombo.Items.Clear;
    AdvStringGrid1.UniCombo.Items.Add(AdvStringGrid1.WideCells[1, 1]);
    AdvStringGrid1.UniCombo.Items.Add(AdvStringGrid1.WideCells[1, 2]);
    AdvStringGrid1.UniCombo.Items.Add(AdvStringGrid1.WideCells[2, 1]);
    AdvStringGrid1.UniCombo.DropWidth := 120;
  end;

  if ACol = 3 then
  begin
    AdvStringGrid1.UniCombo.Items.Clear;
    AdvStringGrid1.UniCombo.Items.Add('Edit 1');
    AdvStringGrid1.UniCombo.Items.Add('Edit 2');
    AdvStringGrid1.UniCombo.Items.Add('Edit 3');
  end;
end;

procedure TForm5.AdvStringGrid1GetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
  AStyle := ssUnicode;
end;

procedure TForm5.InitGrid;
begin
  advstringgrid1.Cells[1, 0] := 'Edit';
  advstringgrid1.Cells[2, 0] := 'ComboList';
  advstringgrid1.Cells[3, 0] := 'ComboEdit';
  advstringgrid1.Cells[4, 0] := 'Edit Btn';

  advstringgrid1.WideCells[1, 3] := 'Cell 1,1';
  advstringgrid1.WideCells[1, 4] := 'Cell 1,2';
  advstringgrid1.WideCells[2, 3] := 'Cell 2,2';
  advstringgrid1.WideCells[2, 4] := 'Cell 2,1';

  advstringgrid1.RowColor[1] := clInfoBk;
  advstringgrid1.RowColor[2] := clInfoBk;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
  advstringgrid1.SortSettings.Column := 1;
  advstringgrid1.SortSettings.ToggleDirection;
  advstringgrid1.QSort;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
  advstringgrid1.AutoSizeColumns(false, 4);
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
  advstringgrid1.WideCells[1,1] := '客家';
  advstringgrid1.WideCells[1,2] := 'пословица';
  advstringgrid1.WideCells[2,1] := '日本語';
  advstringgrid1.WideCells[2,2] := 'العربي';
  InitGrid;
end;

end.
