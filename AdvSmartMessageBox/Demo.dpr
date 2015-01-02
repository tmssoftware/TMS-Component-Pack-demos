program Demo;

uses
  Forms,
  AdvSmartMessageBoxDEMO in 'AdvSmartMessageBoxDEMO.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
