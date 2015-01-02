unit Uperformance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Planner, StdCtrls;

type
  TForm1 = class(TForm)
    Planner1: TPlanner;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure FillPlanner;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 planner1.Items.Clear;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FillPlanner;
end;

procedure TForm1.FillPlanner;
const
  numres = 200;
var
  i: integer;
  t: DWORD;
begin
  t := GetTickCount;
  planner1.Sidebar.Position := spTop;
  planner1.Sidebar.Width := 60;
  planner1.Mode.PlannerType := plDayPeriod;
  planner1.Mode.PeriodStartDate := Now;
  planner1.Mode.PeriodEndDate := Now + 7;
  planner1.Display.DisplayScale := 100;

  planner1.PositionWidth := 60;
  planner1.Positions := numres;

  planner1.Header.Captions.Clear;
  planner1.Header.Captions.Add('');

  for I := 1 to planner1.Positions  do
    planner1.Header.Captions.Add(inttostr(I));

  planner1.Items.BeginUpdate;

  for I := 1 to 1200  do
  begin
    with planner1.CreateItem do
    begin
      itembegin := random(6);
      itemend := itembegin + 1;
      itempos := random(numres);
    end;
  end;

  planner1.Items.EndUpdate;

  ShowMessage(' Added 1200 items to Planner in ' + inttostr(GetTickCount - t) +'ms');
end;

end.
