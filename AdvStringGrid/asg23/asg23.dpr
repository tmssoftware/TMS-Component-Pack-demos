program asg23;

uses
  Forms,
  uasg23 in 'uasg23.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
