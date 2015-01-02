unit CustToolBar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvToolBar, AdvToolBarStylers, ImgList, StdActns, ActnList,
  StdCtrls, Menus, AdvMenus, AdvMenuStylers;

type
  TForm1 = class(TForm)
    AdvDockPanel1: TAdvDockPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarCustomizer1: TAdvToolBarCustomizer;
    AdvToolBarButton1: TAdvToolBarButton;
    AdvToolBarButton2: TAdvToolBarButton;
    AdvToolBarButton3: TAdvToolBarButton;
    ImageList1: TImageList;
    ImageList2: TImageList;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    Memo1: TMemo;
    ActionList1: TActionList;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    Appearance: TAdvToolBarMenuButton;
    AdvPopupMenu1: TAdvPopupMenu;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    Office2003Blue1: TMenuItem;
    Office2003Olive1: TMenuItem;
    Office2003Silver1: TMenuItem;
    Whidbey1: TMenuItem;
    procedure AdvToolBarButton2Click(Sender: TObject);
    procedure AdvToolBarButton3Click(Sender: TObject);
    procedure Office2003Blue1Click(Sender: TObject);
    procedure Office2003Olive1Click(Sender: TObject);
    procedure Office2003Silver1Click(Sender: TObject);
    procedure Whidbey1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AdvToolBarButton2Click(Sender: TObject);
begin
  ShowMessage('TMS TAdvToolBar © 2005 - 2006 by tmssoftware.com');
end;

procedure TForm1.AdvToolBarButton3Click(Sender: TObject);
begin
  advtoolbar1.ShowCustomizer;
end;

procedure TForm1.Office2003Blue1Click(Sender: TObject);
begin
  advmenuofficestyler1.Style := osOffice2003Blue;
  advtoolbarofficestyler1.Style := bsOffice2003Blue;
end;

procedure TForm1.Office2003Olive1Click(Sender: TObject);
begin
  advmenuofficestyler1.Style := osOffice2003Olive;
  advtoolbarofficestyler1.Style := bsOffice2003Olive;

end;

procedure TForm1.Office2003Silver1Click(Sender: TObject);
begin
  advmenuofficestyler1.Style := osOffice2003Silver;
  advtoolbarofficestyler1.Style := bsOffice2003Silver;
end;

procedure TForm1.Whidbey1Click(Sender: TObject);
begin
  advmenuofficestyler1.Style := osOfficeXP;
  advtoolbarofficestyler1.Style := bsOfficeXP;

end;

end.
