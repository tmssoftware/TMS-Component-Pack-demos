unit UDBFilterDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, Grids, DBGrids,
  AdvCustomFilterPanel, AdvDBFilterPanel, DB, ADODB, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    mygrid: TDBGrid;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    AdvDBFilterPanel1: TAdvDBFilterPanel;
    AdvDBFilterDialog1: TAdvDBFilterDialog;
    Panel1: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure AdvDBFilterPanel1AfterFilter(Sender: TObject; var AFilter: string);
    procedure AdvDBFilterDialog1AfterFilter(Sender: TObject;
      var AFilter: string);
  private
    procedure SetGridColumns;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AdvDBFilterDialog1AfterFilter(Sender: TObject;
  var AFilter: string);
begin
  SetGridColumns;
end;

procedure TForm1.AdvDBFilterPanel1AfterFilter(Sender: TObject; var AFilter: string);
begin
  SetGridColumns;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  AdvDBFilterDialog1.Execute;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  SetGridColumns;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ADOQuery1.Active := true;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
  if TRadioButton(Sender).Tag = 1 then
  begin
    ADOQuery1.Active := True;
    ADOTable1.Active := False;
  end
  else
  begin
    ADOQuery1.Active := False;
    ADOTable1.Active := True;
  end;
end;

procedure TForm1.SetGridColumns;
begin
  mygrid.Columns[0].Width := 80;
  mygrid.Columns[1].Width := 70;
end;

end.


