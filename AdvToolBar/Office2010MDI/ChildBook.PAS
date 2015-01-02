unit ChildBook;

interface

uses
  Classes, Forms, Controls, Grids, SysUtils;

type
  TMDIChildBook = class(TForm)
    StringGrid1: TStringGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { déclarations privées }
  public
    { déclarations publiques }
  end;

var
  MDIChildBook: TMDIChildBook;

implementation

{$R *.dfm}

procedure TMDIChildBook.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMDIChildBook.FormCreate(Sender: TObject);
var
  I, j: Integer;
  ro,co,re,ce: Integer;
begin
  StringGrid1.ColCount := 27;
  StringGrid1.RowCount := 102;

  for I := 0 to StringGrid1.ColCount - 1 do
  begin
    StringGrid1.Cols[I + 1].Text := chr(I + 65);
  end;

  for I := 0 to StringGrid1.RowCount - 1 do
  begin
    StringGrid1.Rows[i + 1].Text := inttostr(I);
  end;

  ro := StringGrid1.FixedRows;
  co := StringGrid1.FixedCols;
  re := StringGrid1.RowCount - 1;
  ce := StringGrid1.ColCount - 1;

  for i := ro to re do
    for j := co to ce do
      StringGrid1.Cells[j,i] := inttostr(Random(100));

end;

end.
