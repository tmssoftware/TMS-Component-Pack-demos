program asg12;

uses
  Forms,
  Uasg12 in 'Uasg12.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
