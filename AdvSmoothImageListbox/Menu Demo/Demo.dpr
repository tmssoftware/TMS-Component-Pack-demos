program Demo;

uses
  Forms,
  UDemo in 'UDemo.pas' {Form127};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm127, Form127);
  Application.Run;
end.
