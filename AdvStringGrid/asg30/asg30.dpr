program asg30;

uses
  Forms,
  uasg30 in 'uasg30.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
