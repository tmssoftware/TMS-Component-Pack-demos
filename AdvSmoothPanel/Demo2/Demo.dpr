program Demo;

uses
  Forms,
  UDemo in 'UDemo.pas' {Form65};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm65, Form65);
  Application.Run;
end.
