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
    Query2: TQuery;
    Query1: TQuery;
    procedure FormCreate(Sender: TObject);
    procedure DBAdvGrid1GetRecordCount(Sender: TObject;
      var Count: Integer);
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
  Query1.Active := True;
end;

procedure TForm1.DBAdvGrid1GetRecordCount(Sender: TObject;
  var Count: Integer);
begin
  Query2.SQL.Text := 'select Count(*) from Country.db';
  Query2.Active := True;
  Count := Query2.Fields[0].AsInteger;
  Query2.Active := False;
end;

end.
