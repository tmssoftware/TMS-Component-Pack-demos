program asg7;

uses
  Forms,
  Uasg7 in 'Uasg7.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
