program inet;

uses
  Forms,
  Uinet in 'Uinet.pas' {Form1},
  wupdate in '..\..\comp\wupdate.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
