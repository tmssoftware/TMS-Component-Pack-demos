unit MDIMain;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,
  ActnList, ToolWin, ImgList, AdvGlowButton, AdvToolBar, AdvToolBarStylers,
  AdvShapeButton, AdvPreviewMenu, AdvOfficeHint, AdvPreviewMenuStylers,
  AdvMenus, AdvMenuStylers, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  ExtActns, StrUtils;

type
  TMainForm = class(TAdvToolBarForm)
    AdvToolBarPager1: TAdvToolBarPager;
    AdvPage2: TAdvPage;
    AdvToolBar4: TAdvToolBar;
    AdvGlowButton4: TAdvGlowButton;
    AdvShapeButton1: TAdvShapeButton;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    ImageList1: TImageList;
    AdvPreviewMenu1: TAdvPreviewMenu;
    AdvPreviewMenuOfficeStyler1: TAdvPreviewMenuOfficeStyler;
    ImageList2: TImageList;
    ImageList3: TImageList;
    ImageList4: TImageList;
    AdvMenuOfficeStyler2: TAdvMenuOfficeStyler;
    AdvToolBar1: TAdvToolBar;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    AdvOfficeHint1: TAdvOfficeHint;
    AdvQuickAccessToolBar1: TAdvQuickAccessToolBar;
    procedure FileExit1Execute(Sender: TObject);
    procedure ActState1Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvPreviewMenu1Buttons0Click(Sender: TObject;
      Button: TButtonCollectionItem);
    procedure AdvPreviewMenu1MenuItems3Click(Sender: TObject);
    procedure AdvPreviewMenu1MenuItems0Click(Sender: TObject);
    procedure AdvPreviewMenu1MenuItems2Click(Sender: TObject);
    procedure AdvPreviewMenu1MenuItems1Click(Sender: TObject);
    procedure AdvPreviewMenu1SubMenuItems0Click(Sender: TObject);
    procedure AdvPreviewMenu1SubMenuItems1Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure CreateMDIChild(Kind: integer; const Name: string);
    function GetCount(Kind: integer): integer;
    procedure ActiveChild(Sender: TObject);
    procedure AddBook;
    procedure AddDocument;

  end;

var
  MDIMainForm: TMainForm;

implementation

{$R *.dfm}

uses
  ChildDocument, ChildBook;

procedure TMainForm.AddBook;
begin
  CreateMDIChild(0, 'Book' + IntToStr(GetCount(0) + 1));
end;

procedure TMainForm.AddDocument;
begin
  CreateMDIChild(1, 'Document' + IntToStr(GetCount(1) + 1));
end;

procedure TMainForm.AdvGlowButton1Click(Sender: TObject);
begin
  AddDocument;
end;

procedure TMainForm.AdvGlowButton2Click(Sender: TObject);
begin
  TileMode := tbVertical;
  Tile;
end;

procedure TMainForm.AdvGlowButton3Click(Sender: TObject);
begin
  Tile;
end;

procedure TMainForm.AdvGlowButton4Click(Sender: TObject);
begin
  TileMode := tbHorizontal;
  Tile;
end;

procedure TMainForm.AdvGlowButton5Click(Sender: TObject);
begin
  Cascade;
end;

procedure TMainForm.AdvGlowButton6Click(Sender: TObject);
begin
  AddBook;
end;

procedure TMainForm.AdvPreviewMenu1Buttons0Click(Sender: TObject;
  Button: TButtonCollectionItem);
begin
  Close;
end;

procedure TMainForm.AdvPreviewMenu1MenuItems0Click(Sender: TObject);
begin
  AddBook;
end;

procedure TMainForm.AdvPreviewMenu1MenuItems1Click(Sender: TObject);
begin
  ShowMessage('Open Clicked');
end;

procedure TMainForm.AdvPreviewMenu1MenuItems2Click(Sender: TObject);
begin
  ShowMessage('Print Clicked');
end;

procedure TMainForm.AdvPreviewMenu1MenuItems3Click(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.AdvPreviewMenu1SubMenuItems0Click(Sender: TObject);
begin
  AddDocument;
end;

procedure TMainForm.AdvPreviewMenu1SubMenuItems1Click(Sender: TObject);
begin
  AddBook;
end;

procedure TMainForm.CreateMDIChild(Kind: integer; const Name: string);
var
  ChildBook: TMDIChildBook;
  ChildDocument: TMDIChildDocument;
begin
  case Kind of
  0:
  begin
    ChildBook := TMDIChildBook.Create(Application);
    ChildBook.Caption := Name;
    ChildBook.OnActivate := ActiveChild;
    AdvToolBarPager1.Caption.Caption := 'TMS software - AdvToolBar MDI Application '+'['+ChildBook.Caption +']';
  end;
  1:
  begin
    ChildDocument := TMDIChildDocument.Create(Application);
    ChildDocument.Caption := Name;
    ChildDocument.OnActivate := ActiveChild;
    AdvToolBarPager1.Caption.Caption := 'TMS software - AdvToolBar MDI Application '+'['+ChildDocument.Caption +']';
  end;
  end;

end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  AdvGlowButton2.Hint := 'Tile child windows vertically'+#13#10+'Only possible with 3 windows or less';
  AdvGlowButton4.Hint := 'Tile child windows horizontally'+#13#10+'Only possible with 3 windows or less';
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  AddBook;
end;

function TMainForm.GetCount(Kind: integer): integer;
var
  i: integer;
begin
  Result := 0;
  for I := 0 to MDIChildCount - 1 do
  begin
    if Kind = 0 then
    begin
      if AnsiContainsStr(MDIChildren[i].Caption, 'Book') then
        Inc(Result);
    end
    else
    begin
      if AnsiContainsStr(MDIChildren[i].Caption, 'Document') then
        Inc(Result);
    end;
  end;
end;

procedure TMainForm.FileExit1Execute(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.ActiveChild(Sender: TObject);
begin
  if Sender is TMDIChildBook then
    AdvToolBarPager1.Caption.Caption := 'TMS software - AdvToolBar MDI Application '+'['+(Sender as TMDIChildBook).Caption +']'
  else
    AdvToolBarPager1.Caption.Caption := 'TMS software - AdvToolBar MDI Application '+'['+(Sender as TMDIChildDocument).Caption +']'
end;

procedure TMainForm.ActState1Execute(Sender: TObject);
begin
  TAction(Sender).Checked := true;
end;

end.
