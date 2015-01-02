program asg52;

uses
  Forms,
  Uasg52 in 'Uasg52.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
