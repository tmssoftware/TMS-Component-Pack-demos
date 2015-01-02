program asg49;

uses
  Forms,
  Uasg49 in 'Uasg49.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
