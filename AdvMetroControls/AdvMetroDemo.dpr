program AdvMetroDemo;

uses
  Forms,
  Umetrodemo in 'Umetrodemo.pas' {TMSForm1: TAdvMetroForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TTMSForm1, TMSForm1);
  Application.Run;
end.