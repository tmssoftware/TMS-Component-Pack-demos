program AdvGaugeDemo;

uses
  Forms,
  UAdvGauge in 'UAdvGauge.pas' {Form93};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm93, Form93);
  Application.Run;
end.
