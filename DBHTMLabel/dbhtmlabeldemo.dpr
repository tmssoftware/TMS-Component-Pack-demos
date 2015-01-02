program dbhtmlabeldemo;

uses
  Forms,
  htmlab in 'htmlab.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
