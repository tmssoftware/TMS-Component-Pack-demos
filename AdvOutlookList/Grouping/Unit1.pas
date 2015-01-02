{********************************************************************}
{ TMS TAdvOutlookList Demo                                           }
{                                                                    }
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
  Dialogs, AdvOutlookList, StdCtrls, Spin, ImgList, Menus;

type
  TForm1 = class(TForm)
    AdvOutlookList1: TAdvOutlookList;
    ImageList1: TImageList;
    MainMenu1: TMainMenu;
    Group1: TMenuItem;
    Column11: TMenuItem;
    Column12: TMenuItem;
    Column21: TMenuItem;
    Column31: TMenuItem;
    CheckBox1: TMenuItem;
    Borland1: TMenuItem;
    Classic1: TMenuItem;
    Flat1: TMenuItem;
    XP1: TMenuItem;
    Label1: TLabel;
    CheckBox2: TCheckBox;
    procedure CheckBox2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Borland1Click(Sender: TObject);
    procedure Column11Click(Sender: TObject);
    procedure AdvOutlookList1HeaderRightClick(Sender: TObject;
      Column: Integer);
  private
    { Private declarations }
    procedure AddItems;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AddItems;
var
  olg: TOutlookGroup;
  sl: TStrings;
begin
  olg := advoutlooklist1.AddGroup('Business');

  sl := AdvOutlookList1.AddItem(olg);
  sl.Add('0');
  sl.Add('3');
  sl.Add('AdvOutLookList');
  sl.Add('Complete First version');

  sl := AdvOutlookList1.AddItem(olg);
  sl.Add('0');
  sl.Add('2');
  sl.Add('AdvStringGrid');
  sl.Add('Feature Enhancement');

  sl := AdvOutlookList1.AddItem(olg);
  sl.Add('1');
  sl.Add('1');
  sl.Add('AdvOutLookList');
  sl.Add('Complete Beta');

  sl := AdvOutlookList1.AddItem(olg);
  sl.Add('1');
  sl.Add('1');
  sl.Add('AdvOutLookList');
  sl.Add('Add Preview');

  sl := AdvOutlookList1.AddItem(olg);
  sl.Add('1');
  sl.Add('0');
  sl.Add('AdvPageControl');
  sl.Add('Reduce flickering');

  sl := AdvOutlookList1.AddItem(olg);
  sl.Add('0');
  sl.Add('0');
  sl.Add('AdvStingGrid');
  sl.Add('Add XML export');

  sl := AdvOutlookList1.AddItem(olg);
  sl.Add('1');
  sl.Add('2');
  sl.Add('AdvOutLookList');
  sl.Add('Add Column Drag Drop');

  sl := AdvOutlookList1.AddItem(olg);
  sl.Add('0');
  sl.Add('0');
  sl.Add('AdvPageControl');
  sl.Add('Add Active TabSheet properties');

  sl := AdvOutlookList1.AddItem(olg);
  sl.Add('1');
  sl.Add('3');
  sl.Add('AdvStingGrid');
  sl.Add('Load general XML');

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  AddItems;
end;

procedure TForm1.Borland1Click(Sender: TObject);
begin
  AdvOutlookList1.CheckBoxStyle := TCheckBoxStyle((Sender as TMenuItem).Tag);
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked then
    AdvOutlookList1.GroupColumnDisplay := gdHidden
  else
    AdvOutlookList1.GroupColumnDisplay := gdVisible;
end;

procedure TForm1.Column11Click(Sender: TObject);
begin

  AdvOutlookList1.GroupColumn := (Sender as TMenuItem).Tag;
  (Sender as TMenuItem).Checked := true;
end;

procedure TForm1.AdvOutlookList1HeaderRightClick(Sender: TObject;
  Column: Integer);
begin
  advoutlooklist1.GroupColumn := Column;
end;

end.
