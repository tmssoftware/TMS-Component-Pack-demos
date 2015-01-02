program todoplan;

uses
  Forms,
  utodoplan in 'utodoplan.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
