unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, DBAdvGrid, ExtCtrls, DBCtrls, DB,
  ADODB, StdCtrls, DBGrids;

type
  TForm1 = class(TForm)
    DBAdvGrid1: TDBAdvGrid;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    RadioGroup2: TRadioGroup;
    SaveDialog1: TSaveDialog;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  FileName: String;
  sl: TStringList;
  i: Integer;

  function AddExtension(s,ext:string): string;
  begin
    if pos(uppercase('.'+ext),uppercase(s)) > 0 then
      result := s
    else
      result := s + '.' + ext;

  end;

begin
  sl := TStringList.Create;
  for i := 1 to DBAdvGrid1.ColCount - 1 do
    sl.Add(DBAdvGrid1.Cells[i,0]);

  DBAdvGrid1.SaveFixedCells := false;

  if SaveDialog1.Execute then
  begin
    FileName := SaveDialog1.FileName;
    case RadioGroup2.ItemIndex of
    0:DBAdvGrid1.SaveToFile(AddExtension(FileName,'dat'));
    1:DBAdvGrid1.SaveToHTML(AddExtension(FileName,'html'));
    2:DBAdvGrid1.SaveToASCII(AddExtension(FileName,'txt'));
    3:DBAdvGrid1.SaveToXLS(AddExtension(FileName,'XLS'));
    4:DBAdvGrid1.SaveToBinFile(AddExtension(FileName,'.bin'));
    5:DBAdvGrid1.SaveToXML(AddExtension(Filename,'xml'),'records','record',sl);
    6:DBAdvGrid1.SaveToCSV(AddExtension(FileName,'csv'));
    7:DBAdvGrid1.SaveToDOC(AddExtension(FileName,'doc'));
    end;
    sl.Free;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  DBAdvGrid1.Print;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if adotable1.Filtered then
  begin
    adotable1.Filtered := false;
    button3.Caption := 'Filter';
  end
  else
  begin
    adotable1.Filter := 'Brand=''BMW''';
    adotable1.Filtered := true;
    button3.Caption := 'Undo filter';
  end;
end;

end.
