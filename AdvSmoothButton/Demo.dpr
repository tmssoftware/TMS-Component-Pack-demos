program Demo;

uses
  Forms,
  UDemo in 'UDemo.pas' {Form166};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm166, Form166);
  Application.Run;
end.
