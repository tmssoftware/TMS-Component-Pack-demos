unit USpeedTest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvCombo, ColCombo;

type
  TForm5 = class(TForm)
    ColumnComboBox1: TColumnComboBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
var
  i: integer;
  d: dword;
begin
  d := GetTickCount;

  with columncombobox1 do
  begin
    Columns.Clear;
    ComboItems.Clear;

    with Columns.Add do
      begin
        Width:=75;
        Font.Style:=[fsBold];
      end;

    with Columns.Add do Width:=75;

    with Columns.Add do
      begin
        Width:=50;
        Alignment:=taRightJustify;
        Font.Color:=clBlue;
        Font.Style:=[fsBold];
      end;

    BeginUpdate;

    for i := 0 to 5000 do
    begin
      with ComboItems.Add do
      begin
        Strings.Add('Col 1');
        Strings.Add(inttostr(i));
        Strings.Add(inttostr(random(10000)));
      end;
    end;

    EndUpdate;
   end;

   ShowMessage('Items added in '+ inttostr(GetTickCount - d)+' ms');


end;

end.
