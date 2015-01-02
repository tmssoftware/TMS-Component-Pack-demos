program asg22;

uses
  Forms,
  Uasg22 in 'Uasg22.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
