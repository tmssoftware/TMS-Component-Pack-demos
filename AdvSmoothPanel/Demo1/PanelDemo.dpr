program PanelDemo;

uses
  Forms,
  UDemo in 'UDemo.pas' {Form93};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm93, Form93);
  Application.Run;
end.
