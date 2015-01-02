program asg36;

uses
  Forms,
  Uasg36 in 'Uasg36.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
