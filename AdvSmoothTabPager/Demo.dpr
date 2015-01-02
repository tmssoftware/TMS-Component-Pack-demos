program Demo;

uses
  Forms,
  UDemo in 'UDemo.pas' {Form179};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm179, Form179);
  Application.Run;
end.
