program asg27;

uses
  Forms,
  Uasg27 in 'Uasg27.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
