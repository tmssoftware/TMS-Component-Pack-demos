unit Child;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, AdvMenus;

type
  TChildForm = class(TForm)
    AdvMainMenu1: TAdvMainMenu;
    Action1: TMenuItem;
    Item1: TMenuItem;
    UnMerge1: TMenuItem;
    procedure Item1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure UnMerge1Click(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
  public
  end;

var
  ChildForm: TChildForm;

implementation

uses MDI;

{$R *.dfm}

procedure TChildForm.Item1Click(Sender: TObject);
begin
  ShowMessage(Name);
end;

procedure TChildForm.FormActivate(Sender: TObject);
begin
  MDI_.AdvToolBar1.MergeMenu(AdvMainMenu1);
end;

procedure TChildForm.UnMerge1Click(Sender: TObject);
begin
  MDI_.AdvToolBar1.UnMergeMenu(AdvMainMenu1);
  Free;
end;

procedure TChildForm.FormDeactivate(Sender: TObject);
begin
  MDI_.AdvToolBar1.UnMergeMenu(AdvMainMenu1);
end;

end.
