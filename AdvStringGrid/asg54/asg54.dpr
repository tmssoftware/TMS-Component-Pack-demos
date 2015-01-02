program asg54;

uses
  Forms,
  uasg54 in 'uasg54.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
