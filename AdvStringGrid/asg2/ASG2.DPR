program asg2;

uses
  Forms,
  Uasg2 in 'Uasg2.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
