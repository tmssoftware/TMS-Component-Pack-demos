unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, DBAdvGrid, ExtCtrls, DBCtrls, DB,
  ADODB, StdCtrls, DBGrids, AdvObj;

type
  TForm1 = class(TForm)
    DBAdvGrid1: TDBAdvGrid;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ListBox1: TListBox;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBAdvGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure DBAdvGrid1CheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
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
  adotable1.Active := false;
  adotable1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\cars.mdb;Persist Security Info=False';
  adotable1.TableName := 'Cars';
  adotable1.Active := true;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i,j: integer;
  state: boolean;
begin
  listbox1.Items.Clear;
  dbadvgrid1.BeginUpdate;
  adotable1.DisableControls;
  j := 0;
  adotable1.First;
  for i := 1 to DBAdvGrid1.RowCount - 1 do
  begin
    if DBAdvGrid1.GetCheckBoxState(1,i,state) then
    begin
      if state then
      begin
        adotable1.MoveBy(i - 1 - j);
        listbox1.items.Add(adotable1.FieldByName('Brand').AsString + ' : '+ adotable1.FieldByName('Type').AsString);
        j := i - 1;
      end;
    end;
  end;
  adotable1.EnableControls;
  dbadvgrid1.EndUpdate;
end;

procedure TForm1.DBAdvGrid1GetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
var
  state: boolean;
begin
  if DBAdvGrid1.GetCheckBoxState(1,ARow,state) then
  begin
    if state then
    begin
      ABrush.Color := clRed;
      AFont.Color := clWhite;
      AFont.Style := [fsBold];
    end
    else
    begin
      ABrush.Color := clWindow;
      AFont.Color := clWindowText;
      AFont.Style := [];
    end;
  end;
end;


procedure TForm1.DBAdvGrid1CheckBoxClick(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
begin
  DBAdvGrid1.RepaintRow(ARow);
end;

end.


