program aspgdemo;

uses
  Forms,
  Uaspg in 'Uaspg.pas' {Form1},
  Uhelp in 'Uhelp.pas' {Help},
  Uabout in 'Uabout.pas' {About};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(THelp, Help);
  Application.CreateForm(TAbout, About);
  Application.Run;
end.
