program Project2;

uses
  Forms,
  AdvShaperDemo in 'AdvShaperDemo.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Demo';
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
