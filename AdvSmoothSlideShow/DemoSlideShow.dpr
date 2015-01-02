program DemoSlideShow;

uses
  Forms,
  UDemo in 'UDemo.pas' {Form674};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm674, Form674);
  Application.Run;
end.
