program asg44;

uses
  Forms,
  Uasg44 in 'Uasg44.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
