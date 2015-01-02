unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, DBAdvGrid, ImgList, DB, ADODB, AdvObj;

type
  TForm5 = class(TForm)
    DBAdvGrid1: TDBAdvGrid;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ImageList1: TImageList;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.FormCreate(Sender: TObject);
begin
  adotable1.Active := true;
end;

end.
