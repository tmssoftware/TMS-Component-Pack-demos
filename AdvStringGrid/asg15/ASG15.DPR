program asg15;

uses
  Forms,
  Uasg15 in 'Uasg15.pas' {Form1},
  asprev in 'asprev.pas' {PagePreview};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TPagePreview, PagePreview);
  Application.Run;
end.
