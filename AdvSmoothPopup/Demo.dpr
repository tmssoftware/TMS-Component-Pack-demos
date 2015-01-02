program Demo;

uses
  Forms,
  UDemo in 'UDemo.pas' {Form205};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm205, Form205);
  Application.Run;
end.
