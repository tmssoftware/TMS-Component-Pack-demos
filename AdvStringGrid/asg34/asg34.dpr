program asg34;

uses
  Forms,
  uasg34 in 'uasg34.pas' {Form1},
//  asgcheck in '..\..\..\..\comp\asgcheck.pas',
//  AsgAddictCheck in '..\..\..\..\comp\AsgAddictCheck.pas';
  asgcheck in 'asgcheck.pas',
  AsgAddictCheck in 'AsgAddictCheck.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
