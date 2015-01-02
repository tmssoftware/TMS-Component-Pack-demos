program TMSAdvMemoDemo06;

uses
  Forms,
  UAdvMemoDemo06 in 'UAdvMemoDemo06.pas' {FAdvMemoDemo06};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFAdvMemoDemo06, FAdvMemoDemo06);
  Application.Run;
end.
