program asg38;

uses
  Forms,
  Uasg38 in 'Uasg38.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
