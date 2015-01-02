program AniView;

uses
  Forms,
  aniunit in 'aniunit.pas' {frm_Main};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(Tfrm_Main, frm_Main);
  Application.Run;
end.
