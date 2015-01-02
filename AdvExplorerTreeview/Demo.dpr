program Demo;

uses
  Forms,
  UDemo in 'UDemo.pas' {Form146};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm146, Form146);
  Application.Run;
end.
