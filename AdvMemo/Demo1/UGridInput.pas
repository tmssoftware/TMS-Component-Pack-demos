unit UGridInput;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids;

type
  TFGridInput = class(TForm)
    InputGrid1: TStringGrid;
    procedure InputGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGridInput: TFGridInput;

implementation

uses UAdvMemoDemo01;

{$R *.dfm}

procedure TFGridInput.InputGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  if InputGrid1.Col<1 then
    InputGrid1.Col := InputGrid1.Col+1
  else
    begin
    if (InputGrid1.Cells[0,InputGrid1.Row]<>'') and (InputGrid1.Cells[1,InputGrid1.Row]<>'') then

    FAdvMemoDemo01.AdvMemo1.AutoCorrect.OldValue.Add(InputGrid1.Cells[0,InputGrid1.Row]);
    FAdvMemoDemo01.AdvMemo1.AutoCorrect.NewValue.Add(InputGrid1.Cells[1,InputGrid1.Row]);

    InputGrid1.Row := InputGrid1.Row+1;
    InputGrid1.Col := 0;
    end;
end;

end.
