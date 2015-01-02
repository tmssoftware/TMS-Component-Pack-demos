program asg25;

uses
  Forms,
  uasg25 in 'uasg25.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
