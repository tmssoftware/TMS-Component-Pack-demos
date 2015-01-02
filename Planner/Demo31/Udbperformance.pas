unit Udbperformance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, DBPlanner, Planner, StdCtrls, Grids, DBGrids, DebugUtil, ComObj, ActiveX;

const
  numres = 200;

type
  TForm1 = class(TForm)
    DBPlanner1: TDBPlanner;
    DBPeriodSource1: TDBPeriodSource;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBPeriodSource1ChangeQuery(Sender: TObject);
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
  dbperiodsource1.Active := false;
  dbperiodsource1.StartDate :=  dbperiodsource1.StartDate - 7;
  dbperiodsource1.EndDate :=  dbperiodsource1.EndDate - 7;
  dbperiodsource1.Active := true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  dbperiodsource1.Active := false;
  dbperiodsource1.StartDate :=  dbperiodsource1.StartDate + 7;
  dbperiodsource1.EndDate :=  dbperiodsource1.EndDate + 7;
  dbperiodsource1.Active := true;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i: integer;
  GUID: TGUID;
begin
(*
  starttimer;
  dbperiodsource1.DataSource := nil;
  for I := 1 to 1200  do
  begin
    adoquery1.Insert;
    CoCreateGUID(GUID);
    adoquery1.fieldbyname('STARTTIME').AsDateTime := Now + random(5);
    adoquery1.fieldbyname('ENDTIME').AsDateTime := Now + random(5);
    adoquery1.fieldbyname('RESOURCE').AsInteger := random(numres);
    adoquery1.fieldbyname('KEYFIELD').AsString := GUIDToString(GUID);
    adoquery1.fieldbyname('SUBJECT').AsString := '';
    adoquery1.fieldbyname('NOTES').AsString := '';
    adoquery1.Post;
  end;
  stoptimer(taMessage);
  Exit;
*)

  dbplanner1.Items.BeginUpdate;

  for I := 1 to 1200  do
  begin
    with dbplanner1.CreateItem do
    begin
      itemstarttime := dbperiodsource1.StartDate + random(5);
      itemendtime := itemstarttime + 1;
      itempos := random(numres);
      update;
    end;
  end;
  dbplanner1.Items.EndUpdate;

end;

procedure TForm1.DBPeriodSource1ChangeQuery(Sender: TObject);
begin
  adoquery1.SQL.Text  := 'SELECT * FROM SCHEDULES WHERE ((STARTTIME > #' +datetostr(dbperiodsource1.StartDate -1)+'#) AND (ENDTIME < #'+datetostr(dbperiodsource1.EndDate + 1)+'#))';
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i: integer;
begin
  dbplanner1.Sidebar.Position := spTop;
  dbplanner1.Sidebar.Width := 60;
  dbplanner1.Display.DisplayScale := 100;

  dbplanner1.PositionWidth := 120;
  dbplanner1.Positions := numres;

  dbplanner1.Header.Captions.Clear;
  dbplanner1.Header.Captions.Add('');

  for I := 1 to dbplanner1.Positions  do
    dbplanner1.Header.Captions.Add(inttostr(I));

  for I := 0 to numres - 1 do
  begin
    with dbperiodsource1.ResourceMap.Add do
    begin
      ResourceIndex := I;
      PositionIndex := I;
    end;
  end;

  dbperiodsource1.Active := false;

  dbperiodsource1.StartDate := Now;
  dbperiodsource1.EndDate := Now + 7;
  dbperiodsource1.Active := true;
end;



end.
