program asg24;

uses
  Forms,
  uasg24 in 'uasg24.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
