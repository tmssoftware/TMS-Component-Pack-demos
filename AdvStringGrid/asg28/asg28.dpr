program asg28;

uses
  Forms,
  uasg28 in 'uasg28.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
