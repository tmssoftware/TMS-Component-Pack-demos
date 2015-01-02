program DBAdvCardListDemo;

uses
  Forms,
  UDBAdvCardList in 'UDBAdvCardList.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
