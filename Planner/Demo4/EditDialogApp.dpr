program EditDialogApp;

uses
  Forms,
  EditDialogMainFormUnit in 'EditDialogMainFormUnit.pas' {EditDialogMainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TEditDialogMainForm, EditDialogMainForm);
  Application.Run;
end.
