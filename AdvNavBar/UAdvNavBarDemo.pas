{********************************************************************}
{ TAdvNavBar demo                                                    }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2005 - 2012                                 }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit UAdvNavBarDemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, AdvNavBar, ImgList, ComCtrls, StdCtrls, TeEngine,
  Series, TeeProcs, Chart, CheckLst, Menus;

type
  TForm1 = class(TForm)
    AdvNavBar1: TAdvNavBar;
    AdvNavBarPanel1: TAdvNavBarPanel;
    AdvNavBarPanel2: TAdvNavBarPanel;
    AdvNavBarPanel3: TAdvNavBarPanel;
    ImageList1: TImageList;
    AdvNavBarPanel4: TAdvNavBarPanel;
    AdvNavBarPanel5: TAdvNavBarPanel;
    MonthCalendar1: TMonthCalendar;
    TreeView1: TTreeView;
    ImageList2: TImageList;
    Edit1: TEdit;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckListBox1: TCheckListBox;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    Label2: TLabel;
    Label3: TLabel;
    PopupMenu1: TPopupMenu;
    Moreoptions1: TMenuItem;
    Button1: TButton;
    Infolabel: TLabel;
    procedure AdvNavBar1PopupMenuClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AdvNavBar1SplitterMove(Sender: TObject; OldSplitterPosition,
      NewSplitterPosition: Integer);
    procedure AdvNavBar1PanelActivate(Sender: TObject; OldActivePanel,
      NewActivePanel: Integer; var Allow: Boolean);
    procedure Moreoptions1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AdvNavBar1PopupMenuClick(Sender: TObject);
var
  pt: tpoint;
begin
  pt := point(advnavbar1.Left + advnavbar1.Width, advnavbar1.Top + advnavbar1.Height);
  pt.X := pt.X - 8;
  pt.Y := pt.Y - 8;
  pt := ClientToScreen(pt);

  popupmenu1.Popup(pt.X,pt.Y);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  advnavbar1.ActiveTabIndex := 2;
end;

procedure TForm1.AdvNavBar1SplitterMove(Sender: TObject;
  OldSplitterPosition, NewSplitterPosition: Integer);
begin
  InfoLabel.Caption := 'Active panel:'+IntToStr(AdvNavBar1.ActivePanel.PanelIndex)+' - splitter : '+IntToStr(NewSplitterPosition);
end;

procedure TForm1.AdvNavBar1PanelActivate(Sender: TObject; OldActivePanel,
  NewActivePanel: Integer; var Allow: Boolean);
begin
  InfoLabel.Caption := 'Active panel:'+IntToStr(NewActivePanel)+' - splitter : '+IntToStr(AdvNavBar1.SplitterPosition);
end;

procedure TForm1.Moreoptions1Click(Sender: TObject);
begin
  ShowMessage('More options can be set from here ...');
end;

end.
