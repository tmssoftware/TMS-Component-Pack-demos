program html;

uses
  Forms,
  Uhtml in 'Uhtml.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
