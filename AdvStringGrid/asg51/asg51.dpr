program asg51;

uses
  Forms,
  Uasg51 in 'Uasg51.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
