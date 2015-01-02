program htmlstbar;

uses
  Forms,
  uhtmlstbar in 'uhtmlstbar.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
