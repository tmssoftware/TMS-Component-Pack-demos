unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, BaseGrid, AdvGrid, DBAdvGrid;

type
  TForm1 = class(TForm)
    DBAdvGrid1: TDBAdvGrid;
    Table1: TTable;
    DataSource1: TDataSource;
    Database1: TDatabase;
    procedure FormCreate(Sender: TObject);
    procedure Database1BeforeConnect(Sender: TObject);
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
  Table1.Active:= true;
  DBAdvGrid1.columns[4].PictureField:= true;
end;

procedure TForm1.Database1BeforeConnect(Sender: TObject);
begin
  Database1.Params.Values['PATH'] :=
    ExtractFilePath(Application.ExeName);
end;

end.
