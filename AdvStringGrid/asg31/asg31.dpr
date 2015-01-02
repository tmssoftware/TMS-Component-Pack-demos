program asg31;

uses
  Forms,
  uasg31 in 'uasg31.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
