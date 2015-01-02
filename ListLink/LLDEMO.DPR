program lldemo;

uses
  Forms,
  lltest in 'lltest.pas' {Form2};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
