program Asgdemo;

uses
  Forms,
  ASGUNIT in 'ASGUNIT.PAS' {Demo},
  asabout in 'asabout.pas' {About},
  asfind in 'asfind.pas' {finddlg};

{$R *.RES}
//{$R ASGXP.RES}
               
begin
  Application.CreateForm(TDemo, Demo);
  Application.Run;
end.
