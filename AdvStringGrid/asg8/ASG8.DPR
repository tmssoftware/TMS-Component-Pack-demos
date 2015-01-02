program asg8;

uses
  Forms,
  uasg8 in 'uasg8.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
