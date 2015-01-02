program AdvMetroCategoryListDemo;

uses
  Forms,
  AdvCategoryMetroTest in 'AdvCategoryMetroTest.pas' {Form96};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm96, Form96);
  Application.Run;
end.
