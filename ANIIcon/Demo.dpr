program demo;

uses
  Forms,
  anidemo in 'anidemo.pas' {AppForm},
  AniEdit in '\DELPHI\Units\AniEdit.pas' {AniEditor};

{$R *.RES}

begin
  Application.CreateForm(TAppForm, AppForm);
  Application.CreateForm(TAniEditor, AniEditor);
  Application.Run;
end.
 