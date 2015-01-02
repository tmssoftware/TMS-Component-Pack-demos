program Demo;

uses
  Forms,
  UDemo in 'UDemo.pas' {Form790};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm790, Form790);
  Application.Run;
end.
