program asg33;

uses
  Forms,
  uasg33 in 'uasg33.pas' {Form1},
  GridScriptReg in '..\..\..\..\comp\GridScriptReg.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
