program asg48;

uses
  Forms,
  Uasg48 in 'Uasg48.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
