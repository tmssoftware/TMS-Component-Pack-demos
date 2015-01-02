program Demo;

uses
  Forms,
  UDemo in 'UDemo.pas' {Form252};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm252, Form252);
  Application.Run;
end.
