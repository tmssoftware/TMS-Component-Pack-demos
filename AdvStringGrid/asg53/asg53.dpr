program asg53;

uses
  Forms,
  Uasg53 in 'Uasg53.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
