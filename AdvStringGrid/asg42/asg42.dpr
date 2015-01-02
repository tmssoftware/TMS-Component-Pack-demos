program asg42;

uses
  Forms,
  Uasg42 in 'Uasg42.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
