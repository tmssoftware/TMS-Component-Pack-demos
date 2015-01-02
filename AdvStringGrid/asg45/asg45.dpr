program asg45;

uses
  Forms,
  Uasg45 in 'Uasg45.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
