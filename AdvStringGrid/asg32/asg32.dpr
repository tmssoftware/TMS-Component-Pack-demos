program asg32;

uses
  Forms,
  uasg32 in 'uasg32.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
