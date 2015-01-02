unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, DBAdvGrid, ExtCtrls, DBCtrls, DB,
  ADODB, StdCtrls;

type
  TForm1 = class(TForm)
    DBAdvGrid1: TDBAdvGrid;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure DBAdvGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
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
  adotable1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\cars.mdb;Persist Security Info=False';
  adotable1.TableName := 'Cars';
  adotable1.Active := true;

  DBAdvGrid1.HideColumn(5);
end;

procedure TForm1.DBAdvGrid1GetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  if ARow > 0 then
  begin
    if (DBAdvGrid1.cells[5, ARow] = '4') then
      ABrush.Color:= $00BCA5B8
    else if (DBAdvGrid1.cells[5, ARow] = '6') then
      ABrush.Color:= $00E9B69A
    else if (DBAdvGrid1.cells[5, ARow] = '8') then
      ABrush.Color:= $00AFD3C2
    else if (DBAdvGrid1.cells[5, ARow] = '10') then
      ABrush.Color:= clSilver
    else if (DBAdvGrid1.cells[5, ARow] = '12') then
      ABrush.Color:= clCream;

   { if (DBAdvGrid1.cells[8, ARow] = 'Germany') then
      ABrush.Color:= $00BCA5B8
    else if (DBAdvGrid1.cells[8, ARow] = 'USA') then
      ABrush.Color:= $00E9B69A
    else if (DBAdvGrid1.cells[8, ARow] = 'JAPAN') then
      ABrush.Color:= $00AFD3C2;
    }
  end;
end;

end.
