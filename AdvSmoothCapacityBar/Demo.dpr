program Demo;

uses
  Forms,
  UDemo in 'UDemo.pas' {Form164};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm164, Form164);
  Application.Run;
end.
