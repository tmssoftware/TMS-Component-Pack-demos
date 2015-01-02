program ASG61;

uses
  Forms,
  Uasg61 in 'Uasg61.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
