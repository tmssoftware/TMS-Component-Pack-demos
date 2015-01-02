program asg18;

uses
  Forms,
  Uasg18 in 'Uasg18.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
