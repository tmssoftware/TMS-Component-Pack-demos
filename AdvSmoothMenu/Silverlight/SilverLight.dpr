program SilverLight;

uses
  Forms,
  UMenu in 'UMenu.pas' {Form76};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm76, Form76);
  Application.Run;
end.
