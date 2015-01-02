program Demo;

uses
  Forms,
  UDemo in 'UDemo.pas' {Form205};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm205, Form205);
  Application.Run;
end.
