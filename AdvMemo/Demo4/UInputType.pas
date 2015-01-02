unit UInputType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, AdvMemo;

const
  rtText: array [0..3] of string = ('rtOpen', 'rtClosed', 'rtFile', 'rtIgnore');

type
  TFInputType = class(TForm)
    SGSelectType1: TStringGrid;
    procedure SGSelectType1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInputType: TFInputType;

implementation
uses UAdvMemoDemo04;
{$R *.dfm}

procedure TFInputType.FormActivate(Sender: TObject);
var
  ridx:integer;
begin
  for ridx := 0 to 3 do
    SGSelectType1.Cells[0,ridx] := rtText[ridx];

  case FAdvMemoDemo04.AdvPascalMemoStyler1.RegionDefinitions[FAdvMemoDemo04.SGRegions1.Row-1].RegionType of
  rtOpen:   FInputType.SGSelectType1.Row := 0;
  rtClosed: FInputType.SGSelectType1.Row := 1;
  rtFile:   FInputType.SGSelectType1.Row := 2;
  rtIgnore: FInputType.SGSelectType1.Row := 3;
  else
    FInputType.SGSelectType1.Row := 1;
  end;
end;

procedure TFInputType.SGSelectType1Click(Sender: TObject);
begin
  FAdvMemoDemo04.AdvPascalMemoStyler1.RegionDefinitions[FAdvMemoDemo04.SGRegions1.Row].RegionType := TRegionType(FInputType.SGSelectType1.Row);
  FAdvMemoDemo04.SGRegions1.Cells[3,FAdvMemoDemo04.SGRegions1.Row] := rtText[FInputType.SGSelectType1.row];
  FInputType.Close;
end;

end.
