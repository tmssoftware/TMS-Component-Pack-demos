program Demo;

uses
  Forms,
  UDemo in 'UDemo.pas' {Form369};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm369, Form369);
  Application.Run;
end.
