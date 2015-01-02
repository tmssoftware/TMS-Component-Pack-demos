program asg55;

uses
  Forms,
  Uasg55 in 'Uasg55.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
