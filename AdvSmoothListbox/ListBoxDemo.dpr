program ListBoxDemo;

uses
  Forms,
  UDemo in 'UDemo.pas' {Form67};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm67, Form67);
  Application.Run;
end.
