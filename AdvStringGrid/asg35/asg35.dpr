program asg35;

uses
  Forms,
  uasg35 in 'uasg35.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
