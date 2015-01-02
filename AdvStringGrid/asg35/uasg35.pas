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
unit uasg35;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  AdvGrid, ccedlink, Grids, StdCtrls, AdvCombo, ColCombo, ImgList, BaseGrid, AdvObj, XPMan;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    ColumnComboEditLink1: TColumnComboEditLink;
    ImageList1: TImageList;
    Button1: TButton;
    ColumnComboEditLink2: TColumnComboEditLink;
    ColumnComboEditLink3: TColumnComboEditLink;
    procedure AdvStringGrid1GetEditorType(Sender: TObject; ACol,
      ARow: Integer; var AEditor: TEditorType);
    procedure AdvStringGrid1GetEditorProp(Sender: TObject; ACol,
      ARow: Integer; AEditLink: TEditLink);
    procedure AdvStringGrid1GetCellColor(Sender: TObject; ARow,
      ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.AdvStringGrid1GetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
begin
  if ACol = 1 then
  begin
    AEditor := edCustom;
    AdvStringGrid1.EditLink := ColumnComboEditLink1;
  end;
  if ACol = 2 then
  begin
    AEditor := edCustom;
    AdvStringGrid1.EditLink := ColumnComboEditLink2;
  end;
  if ACol = 3 then
  begin
    AEditor := edCustom;
    AdvStringGrid1.EditLink := ColumnComboEditLink3;
  end;

end;

procedure TForm1.AdvStringGrid1GetEditorProp(Sender: TObject; ACol,
  ARow: Integer; AEditLink: TEditLink);
begin
  if not Assigned(AEditLink) then
    Exit;

  if ACol in [1, 2] then
    with (AEditLink as TColumnComboEditLink).Combo do
    begin
      BeginUpdate;
      Columns.Items[0].Width := 64;
      Columns.Items[1].Width := DropWidth - 64;
      Columns.Items[1].Font.Style := [fsItalic];
      EndUpdate;
    end;

  if ACol = 3 then
  begin
    with (AEditLink as TColumnComboEditLink).Combo do
    begin

      BeginUpdate;

      Columns.Items[0].ColumnType := ctImage;
      Columns.Items[0].Width := 20;
      Columns.Items[0].Font.Color := clBlack;


      Columns.Items[1].Width := DropWidth - 64;
      Columns.Items[1].Font.Color := clBlack;


      ComboItems.Items[0].ImageIndex := 1;
      ComboItems.Items[1].ImageIndex := 0;
      ComboItems.Items[2].ImageIndex := 2;
      EndUpdate;
    end;
  end;

end;

procedure TForm1.AdvStringGrid1GetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  if ACol = 1 then
  begin
    AFont.Name := 'Tahoma';
    AFont.Style := [fsBold];
  end;

  if ACol = 2 then
  begin
    AFont.Name := 'Tahoma';
    AFont.Style := [];
  end;

  if ACol = 3 then
  begin
    if AdvStringGrid1.Cells[ACol, ARow] = 'Bad' then
      AFont.Color := clRed;
    if AdvStringGrid1.Cells[ACol, ARow] = 'Good' then
      AFont.Color := clGreen;
  end;

end;


procedure TForm1.Button1Click(Sender: TObject);
begin
  AdvStringGrid1.SaveFixedCells := False;
  AdvStringGrid1.SaveToCSV('.\asg35.csv');

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  AdvStringGrid1.SaveFixedCells := False;
  AdvStringGrid1.LoadFromCSV('.\asg35.csv');
  AdvStringGrid1.AutoSizeColumns(False, 20);
end;

end.
