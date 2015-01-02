program dbplandemo;

uses
  Forms,
  Udbplan in 'Udbplan.pas' {MainForm},
  ActUnit in 'ActUnit.pas' {ActPeriodForm},
  ColUnit in 'ColUnit.pas' {ColorsForm},
  DispUnit in 'DispUnit.pas' {UnitForm},
  TodoUnit in 'TodoUnit.pas' {TodoItemForm},
  DM in 'DM.pas' {DM1: TDataModule},
  Alarm in 'Alarm.pas' {AlarmForm},
  AppUnit in 'AppUnit.pas' {AppointForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'DBPlanner demo for Apollo DBE';
  Application.CreateForm(TDM1, DM1);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
