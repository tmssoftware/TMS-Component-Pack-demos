unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, BaseGrid, AdvGrid, DBAdvGrid, StdCtrls;

type
  TForm1 = class(TForm)
    DBAdvGrid1: TDBAdvGrid;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    group: TButton;
    ungroup: TButton;
    Button3: TButton;
    expbtn: TButton;
    colbtn: TButton;
    procedure FormCreate(Sender: TObject);
    procedure groupClick(Sender: TObject);
    procedure ungroupClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure expbtnClick(Sender: TObject);
    procedure colbtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    grouped: boolean;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  dbadvgrid1.pagemode := false;
  adotable1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\CARS.mdb;Persist Security Info=False';
  adotable1.Active := true;
end;

procedure TForm1.groupClick(Sender: TObject);
begin
  if not grouped then
    dbadvgrid1.Group(1);
  grouped := true;
  colbtn.Enabled := true;
  expbtn.Enabled := true;
  ungroup.Enabled := true;
  group.Enabled := false; 
end;

procedure TForm1.ungroupClick(Sender: TObject);
begin
  if grouped then
    dbadvgrid1.UnGroup;
  grouped := false;
  colbtn.Enabled := false;
  expbtn.Enabled := false;
  ungroup.Enabled := false;
  group.Enabled := true;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  dbadvgrid1.Print;
end;

procedure TForm1.expbtnClick(Sender: TObject);
begin
  dbadvgrid1.ExpandAll;
end;

procedure TForm1.colbtnClick(Sender: TObject);
begin
  dbadvgrid1.ContractAll;
end;

end.
