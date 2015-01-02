program asg1;

uses
  Forms,
  uasg1 in 'uasg1.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
