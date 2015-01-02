program TMSGraphicsEditor;

uses
  Forms,
  UGraphicsEditor in 'UGraphicsEditor.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
