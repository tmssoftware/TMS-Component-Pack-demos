program asg9;

uses
  Forms,
  uasg9 in 'uasg9.pas' {Form1},
  asprev in 'asprev.pas' {PagePreview};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TPagePreview, PagePreview);
  Application.Run;
end.
