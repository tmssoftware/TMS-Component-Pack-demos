program Office2010Demo;

uses
  Forms,
  UDemoFrame in 'UDemoFrame.pas' {TMSFrame1: TFrame},
  UDemo in 'UDemo.pas' {TMSForm2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TTMSForm2, TMSForm2);
  Application.Run;
end.