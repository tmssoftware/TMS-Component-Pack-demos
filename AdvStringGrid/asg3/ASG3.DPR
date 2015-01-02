program asg3;

uses
  Forms,
  Uasg3 in 'Uasg3.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
