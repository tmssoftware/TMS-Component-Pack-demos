program Demo;

uses
  Forms,
  UDemo in 'UDemo.pas' {Form86};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm86, Form86);
  Application.Run;
end.
