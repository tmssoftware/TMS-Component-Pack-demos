{********************************************************************}
{ TMS TAdvOfficeMDITabSet demo                                       }
{ for Delphi & C++Builder                                            }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2012                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, AdvMenus, AdvToolBar, AdvToolBarStylers, StdCtrls,
  AdvOfficeTabSet, AdvOfficeTabSetStylers, AdvMenuStylers;

type
  TForm1 = class(TForm)
    AdvDockPanel1: TAdvDockPanel;
    AdvToolBar1: TAdvToolBar;
    AdvMainMenu1: TAdvMainMenu;
    Tasks1: TMenuItem;
    Window1: TMenuItem;
    AddChild: TMenuItem;
    Cascade1: TMenuItem;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvMenuStyler1: TAdvMenuStyler;
    N1: TMenuItem;
    AdvOfficeTabSetOfficeStyler1: TAdvOfficeTabSetOfficeStyler;
    PopupMenu1: TPopupMenu;
    AdvOfficeMDITabSet1: TAdvOfficeMDITabSet;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    AdvPopupMenu1: TAdvPopupMenu;
    procedure AddChildClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Cascade1Click(Sender: TObject);
  private
    { Private declarations }
    FChildCount: Integer;
    procedure ChildFormClose(Sender: TObject; var Action: TCloseAction);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm1.AddChildClick(Sender: TObject);
var
  rsChild: TForm2;
begin
  rsChild := TForm2.Create(self);
  AdvToolBar1.AddMDIChildMenu(rsChild);
  rsChild.OnClose := ChildFormClose;
  Inc(FChildCount);
  rsChild.Show;
  AdvOfficeMDITabSet1.AddTab(rsChild);
end;

procedure TForm1.Cascade1Click(Sender: TObject);
begin
  Cascade;
end;

procedure TForm1.ChildFormClose(Sender: TObject; var Action: TCloseAction);
begin
  AdvToolBar1.RemoveMDIChildMenu(TForm(Sender));
  Action   := caFree;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FChildCount := 1;
end;

end.
