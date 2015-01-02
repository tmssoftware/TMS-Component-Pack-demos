program asg5;

uses
  Forms,
  Uasg5 in 'Uasg5.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
