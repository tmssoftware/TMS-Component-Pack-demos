program Demo;

uses
  Forms,
  UDemo in 'UDemo.pas' {Form316};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm316, Form316);
  Application.Run;
end.
