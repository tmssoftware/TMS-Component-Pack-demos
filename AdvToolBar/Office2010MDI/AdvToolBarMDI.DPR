program AdvToolBarMDI;

uses
  Forms,
  ChildBook in 'ChildBook.PAS' {MDIChildBook},
  MDIMain in 'MDIMain.PAS' {MainForm},
  ChildDocument in 'ChildDocument.pas' {MDIChildDocument};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MDIMainForm);
  Application.Run;
end.
