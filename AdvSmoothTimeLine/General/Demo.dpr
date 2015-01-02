program Demo;

uses
  Forms,
  UDemo in 'UDemo.pas' {Form63};

{$R *.res}

begin
  Application.Initialize;
  
  Application.CreateForm(TForm63, Form63);
  Application.Run;
end.
