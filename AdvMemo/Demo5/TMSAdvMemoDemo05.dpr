program TMSAdvMemoDemo05;

uses
  Forms,
  UAdvMemoDemo05 in 'UAdvMemoDemo05.pas' {FAdvMemoDemo05};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFAdvMemoDemo05, FAdvMemoDemo05);
  Application.Run;
end.
