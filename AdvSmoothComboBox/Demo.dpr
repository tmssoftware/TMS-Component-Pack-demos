program Demo;

uses
  Forms,
  UDemo in 'UDemo.pas' {Form194};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm194, Form194);
  Application.Run;
end.
