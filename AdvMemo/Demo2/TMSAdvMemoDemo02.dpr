program TMSAdvMemoDemo02;

uses
  Forms,
  UAdvMemoDemo02 in 'UAdvMemoDemo02.pas' {FAdvMemoDemo02};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFAdvMemoDemo02, FAdvMemoDemo02);
  Application.Run;
end.
