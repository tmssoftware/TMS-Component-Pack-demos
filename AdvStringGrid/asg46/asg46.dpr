program asg46;

uses
  Forms,
  uasg46 in 'uasg46.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
