program asg37;

uses
  Forms,
  Uasg37 in 'Uasg37.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
