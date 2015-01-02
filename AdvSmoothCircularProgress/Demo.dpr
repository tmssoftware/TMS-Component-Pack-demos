program Demo;

uses
  Vcl.Forms,
  UDemo in 'UDemo.pas' {Form832};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm832, Form832);
  Application.Run;
end.
