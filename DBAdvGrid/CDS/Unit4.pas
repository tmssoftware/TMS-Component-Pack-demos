unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, ExtCtrls,
  DBCtrls;

type
  TForm4 = class(TForm)
    DBAdvGrid1: TDBAdvGrid;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.FormCreate(Sender: TObject);
begin
  dbadvgrid1.ShowPictureFields := true;
  clientdataset1.LoadFromFile('.\cars.xml');
  clientdataset1.Active := true;
end;

end.
