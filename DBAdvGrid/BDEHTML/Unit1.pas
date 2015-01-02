unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, DBAdvGrid, ExtCtrls, DBCtrls, DB,
  ADODB, StdCtrls, DBTables;

type
  TForm1 = class(TForm)
    DBAdvGrid1: TDBAdvGrid;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    Table1: TTable;
    Table1NAME: TStringField;
    Table1SIZE: TSmallintField;
    Table1WEIGHT: TSmallintField;
    Table1AREA: TStringField;
    Table1BMP: TBlobField;
    procedure FormCreate(Sender: TObject);
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
  DBAdvGrid1.Columns[2].Header:= 'SIZE AND WEIGHT';
  DBAdvGrid1.Columns[2].HTMLTemplate:= '<FONT color="clBlue">Size is </FONT> <B><#SIZE> ft</B> <FONT color="clRed"> and  weight is </FONT> <B><#Weight> kg</B>';

  Table1.Active := true;
end;

end.
