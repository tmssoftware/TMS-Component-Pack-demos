unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, BaseGrid, AdvGrid, DBAdvGrid, DB, ADODB;

type
  TForm1 = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBAdvGrid1: TDBAdvGrid;
    Memo1: TMemo;
    Button1: TButton;
    ADOConnection1: TADOConnection;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBAdvGrid1GetDisplText(Sender: TObject; ACol, ARow: Integer;
      var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  adoquery1.active := false;
  adoquery1.SQL.Assign(memo1.Lines);
  adoquery1.Active := true;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ADOConnection1.Connected := false;
  ADOConnection1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\CARS.mdb;Persist Security Info=False';
  ADOConnection1.Connected := true;  
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ADOQuery1.Active := false;
end;

procedure TForm1.DBAdvGrid1GetDisplText(Sender: TObject; ACol,
  ARow: Integer; var Value: String);
begin
  if (acol = 3) and (arow > 0) then
    value := value + 'cc';
  if (acol = 4) and (arow > 0) then
    value := value + 'pk';
end;

end.
