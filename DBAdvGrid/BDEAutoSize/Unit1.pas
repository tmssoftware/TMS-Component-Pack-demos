unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, DBAdvGrid, ExtCtrls, DBCtrls, DB,
  ADODB, StdCtrls, DBTables, AdvObj;

type
  TForm1 = class(TForm)
    DBAdvGrid1: TDBAdvGrid;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    CheckBox1: TCheckBox;
    Table1: TTable;
    Button1: TButton;
    PrintDialog1: TPrintDialog;
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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
  Table1.Active := true;
  dbadvgrid1.Colwidths[dbadvgrid1.ColCount - 2] := 256;
  dbadvgrid1.AutoSizeRows(false,4);
  dbadvgrid1.PrintSettings.NoAutoSize := true;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if printdialog1.execute then
    dbadvgrid1.Print;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  DBAdvGrid1.ShowPictureFields:= CheckBox1.Checked;
end;

end.
