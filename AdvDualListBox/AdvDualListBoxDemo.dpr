program AdvDualListBoxDemo;

uses
  Forms,
  UAdvDualListBoxDemo in 'UAdvDualListBoxDemo.pas' {Form92};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm92, Form92);
  Application.Run;
end.
