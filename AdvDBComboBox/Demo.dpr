program Demo;

uses
  Forms,
  UDemo in 'UDemo.pas' {Form433};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm433, Form433);
  Application.Run;
end.
