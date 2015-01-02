program Mdiapp;

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  CHILDWIN in 'ChildWin.pas' {MDIChild},
  about in 'about.pas' {AboutBox};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.Run;
end.
