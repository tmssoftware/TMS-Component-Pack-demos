program asg26;

uses
  Forms,
  Uasg26 in 'Uasg26.pas' {Form1},
  jpmelinks in '..\jpmelinks.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
