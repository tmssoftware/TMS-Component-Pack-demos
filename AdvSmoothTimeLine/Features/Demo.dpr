program Demo;

uses
  Forms,
  UDemo in 'UDemo.pas' {Form235};

{$R *.res}

begin
  Application.Initialize;
  
  Application.CreateForm(TForm235, Form235);
  Application.Run;
end.
