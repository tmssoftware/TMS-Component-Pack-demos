unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient, Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid,
  GIFImg, ExtCtrls ;

type
  TForm4 = class(TForm)
    DBAdvGrid1: TDBAdvGrid;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
  // create small sample dataset
  with ClientDataSet1.FieldDefs do
  begin
    Add('Name', ftString, 20, False);
    Add('Format', ftString, 20, False);
    Add('Image',ftGraphic);
  end;

  ClientDataSet1.CreateDataSet;

  clientdataset1.Insert;
  clientdataset1.Fields[0].AsString := 'Android';
  clientdataset1.Fields[1].AsString := 'PNG';
  (clientdataset1.Fields[2] as TBlobField).LoadFromFile('.\android.png');
  clientdataset1.Post;

  clientdataset1.Insert;
  clientdataset1.Fields[0].AsString := 'Cactus';
  clientdataset1.Fields[1].AsString := 'BMP';
  (clientdataset1.Fields[2] as TBlobField).LoadFromFile('.\cactus.bmp');
  clientdataset1.Post;

  clientdataset1.Insert;
  clientdataset1.Fields[0].AsString := 'Camera';
  clientdataset1.Fields[1].AsString := 'JPG';
  (clientdataset1.Fields[2] as TBlobField).LoadFromFile('.\camera.jpg');
  clientdataset1.Post;

  clientdataset1.Insert;
  clientdataset1.Fields[0].AsString := '7up';
  clientdataset1.Fields[1].AsString := 'ICO';
  (clientdataset1.Fields[2] as TBlobField).LoadFromFile('.\7up.ico');
  clientdataset1.Post;

  clientdataset1.Insert;
  clientdataset1.Fields[0].AsString := 'Cake';
  clientdataset1.Fields[1].AsString := 'GIF';
  (clientdataset1.Fields[2] as TBlobField).LoadFromFile('.\cake.gif');
  clientdataset1.Post;

  datasource1.DataSet := clientdataset1;

  dbadvgrid1.ShowPictureFields := True;
  dbadvgrid1.DataSource := DataSource1;
  dbadvgrid1.DataSetType := dtNonSequenced;
  clientdataset1.Active := True;
end;

end.
