program asg29;

uses
  Forms,
  Uasg29 in 'Uasg29.pas' {Form1},
  Ucollist in 'Ucollist.pas' {FieldChooser};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFieldChooser, FieldChooser);
  Application.Run;
end.
