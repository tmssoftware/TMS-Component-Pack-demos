program Office2007Demo;

uses
  Forms,
  UOffice2007 in 'UOffice2007.pas' {s};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Ts, s);
  Application.Run;
end.
