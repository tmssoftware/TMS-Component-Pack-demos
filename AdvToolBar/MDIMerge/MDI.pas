unit MDI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, AdvToolBar, Menus, AdvMenus, AdvMenuStylers,
  AdvToolBarStylers, StdActns, ActnList,Child;

type
  TMDI_ = class(TForm)
    AdvDockPanel1: TAdvDockPanel;
    AdvToolBar1: TAdvToolBar;
    M_MDI: TAdvMainMenu;
    File1: TMenuItem;
    NewForm1: TMenuItem;
    Sep1: TMenuItem;
    Exit1: TMenuItem;
    I_Action1: TMenuItem;
    AdvToolBarFantasyStyler2: TAdvToolBarFantasyStyler;
    AdvMenuFantasyStyler1: TAdvMenuFantasyStyler;
    ImageListMenu: TImageList;
    procedure Exit1Click(Sender: TObject);
    procedure NewForm1Click(Sender: TObject);
  private
  public
  end;

var
  MDI_: TMDI_;

implementation

{$R *.dfm}

procedure TMDI_.Exit1Click(Sender: TObject);
begin
halt;
end;

procedure TMDI_.NewForm1Click(Sender: TObject);
begin
  ChildForm:= TChildForm.create(self);
  ChildForm.show;
end;

end.
