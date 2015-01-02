program TMSAdvMemoDemo04;

uses
  Forms,
  UAdvMemoDemo04 in 'UAdvMemoDemo04.pas' {FAdvMemoDemo04},
  UInputType in 'UInputType.pas' {FInputType};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFAdvMemoDemo04, FAdvMemoDemo04);
  Application.CreateForm(TFInputType, FInputType);
  Application.Run;
end.
