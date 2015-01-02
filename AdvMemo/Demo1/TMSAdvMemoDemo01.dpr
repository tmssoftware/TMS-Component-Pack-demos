program TMSAdvMemoDemo01;

uses
  Forms,
  UAdvMemoDemo01 in 'UAdvMemoDemo01.pas' {FAdvMemoDemo01},
  UEvents in 'UEvents.pas' {FEvents},
  UGridInput in 'UGridInput.pas' {FGridInput};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFAdvMemoDemo01, FAdvMemoDemo01);
  Application.CreateForm(TFEvents, FEvents);
  Application.CreateForm(TFGridInput, FGridInput);
  Application.Run;
end.
