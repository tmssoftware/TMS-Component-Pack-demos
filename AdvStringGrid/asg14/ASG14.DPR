program asg14;

uses
  Forms,
  Uasg14 in 'Uasg14.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
