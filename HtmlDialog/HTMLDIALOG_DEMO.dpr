program HTMLDIALOG_DEMO;

uses
  Forms,
  dialog in 'dialog.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
