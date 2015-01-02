program asg6;

uses
  Forms,
  Uasg6 in 'Uasg6.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
