program Demo;

uses
  Forms,
  UDemo in 'UDemo.pas' {Form600};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm600, Form600);
  Application.Run;
end.
