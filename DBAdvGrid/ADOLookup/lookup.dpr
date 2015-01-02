program lookup;

uses
  Forms,
  Ulookup in 'Ulookup.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
