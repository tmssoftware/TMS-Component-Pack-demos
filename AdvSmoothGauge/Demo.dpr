program Demo;

uses
  Forms,
  UDemo in 'UDemo.pas' {Form185};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm185, Form185);
  Application.Run;
end.
