unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, DBAdvGrid, ExtCtrls, DBCtrls, DB,
  StdCtrls, DBTables;

type
  TForm1 = class(TForm)
    DBAdvGrid1: TDBAdvGrid;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    RadioGroup2: TRadioGroup;
    SaveDialog1: TSaveDialog;
    Button2: TButton;
    Table1: TTable;
    Table1EmpNo: TIntegerField;
    Table1LastName: TStringField;
    Table1FirstName: TStringField;
    Table1PhoneExt: TStringField;
    Table1HireDate: TDateTimeField;
    Table1Salary: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Table1SalaryGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
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
  table1.Active := true;
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

procedure TForm1.Table1SalaryGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Text := Format('%.2m',[Sender.AsFloat]);
end;

end.
