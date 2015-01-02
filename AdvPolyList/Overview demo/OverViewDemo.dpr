program OverViewDemo;

uses
  Forms,
  UDemo in 'UDemo.pas' {Form665};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm665, Form665);
  Application.Run;
end.
