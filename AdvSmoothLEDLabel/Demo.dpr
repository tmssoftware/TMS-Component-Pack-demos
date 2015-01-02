program Demo;

uses
  Forms,
  UDemo in 'UDemo.pas' {Form177};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm177, Form177);
  Application.Run;
end.
