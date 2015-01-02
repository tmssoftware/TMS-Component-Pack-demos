program asg43;

uses
  Forms,
  Uasg43 in 'Uasg43.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
