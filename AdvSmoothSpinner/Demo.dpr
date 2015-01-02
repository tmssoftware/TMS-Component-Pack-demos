program Demo;

uses
  Forms,
  UDemo in 'UDemo.pas' {Form148};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm148, Form148);
  Application.Run;
end.
