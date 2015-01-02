program MergeMenus;

uses
  Forms,
  MDI in 'MDI.pas' {MDI_},
  Child in 'Child.pas' {ChildForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMDI_, MDI_);
  Application.Run;
end.
