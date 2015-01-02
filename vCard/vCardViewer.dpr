program vCardViewer;

uses
  Forms,
  uvCardViewer in 'uvCardViewer.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
