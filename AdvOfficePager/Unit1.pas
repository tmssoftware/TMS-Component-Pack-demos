{********************************************************************}
{ TMS TAdvOfficePager demo                                           }
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
  Dialogs, AdvOfficePager, ImgList, AdvOfficePagerStylers, StdCtrls, ExtCtrls,
  ComCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    AdvOfficePager1: TAdvOfficePager;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    ImageList1: TImageList;
    AdvOfficePage1: TAdvOfficePage;
    AdvOfficePage2: TAdvOfficePage;
    AdvOfficePage3: TAdvOfficePage;
    AdvOfficePage4: TAdvOfficePage;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Memo1: TMemo;
    TreeView1: TTreeView;
    Label3: TLabel;
    Image1: TImage;
    RadioGroup2: TRadioGroup;
    CheckBox3: TCheckBox;
    procedure CheckBox3Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked = true then
begin
    AdvOfficePager1.ButtonSettings.CloseButton := true;
end
else
begin
    AdvOfficePager1.ButtonSettings.CloseButton := false;
end;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
if CheckBox2.Checked = true then
begin
    AdvOfficePager1.CloseOnTab := true;
end
else
begin
    AdvOfficePager1.CloseOnTab := false;
end;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
if CheckBox3.Checked = true then
begin
    AdvOfficePager1.ShowNonSelectedTabs := true;
end
else
begin
    AdvOfficePager1.ShowNonSelectedTabs := false;
end;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
var
  styleIndex:Integer;
begin
  styleIndex := ComboBox1.ItemIndex;
  case styleIndex of
  0: AdvOfficePagerOfficeStyler1.Style := psOffice2003Blue;
  1: AdvOfficePagerOfficeStyler1.Style := psOffice2003Classic;
  2: AdvOfficePagerOfficeStyler1.Style := psOffice2003Olive;
  3: AdvOfficePagerOfficeStyler1.Style := psOffice2003Silver;
  4: AdvOfficePagerOfficeStyler1.Style := psOffice2007Luna;
  5: AdvOfficePagerOfficeStyler1.Style := psOffice2007Obsidian;
  6: AdvOfficePagerOfficeStyler1.Style := psWhidbey;
  7: AdvOfficePagerOfficeStyler1.Style := psWindowsXP
  end;
end;

procedure TForm1.RadioGroup2Click(Sender: TObject);
begin
  case RadioGroup2.ItemIndex of
  0: begin
       AdvOfficePager1.RotateTabLeftRight := true;
       AdvOfficePager1.TabSettings.Height := 26;
       AdvOfficePager1.TabPosition := tpTop;
       Memo1.Width := 321;
       Memo1.Height := 151;
       Memo1.ScrollBars := ssNone;
       TreeView1.Width := 321;
       TreeView1.Height := 151;
       Image1.Left := 140;
     end;
  1: begin
       AdvOfficePager1.RotateTabLeftRight := true;
       AdvOfficePager1.TabSettings.Height := 26;
       AdvOfficePager1.TabPosition := tpLeft;
       Memo1.Width := 295;
       Memo1.Height := 175;
       Memo1.ScrollBars := ssVertical;
       TreeView1.Width := 295;
       TreeView1.Height := 175;
       Image1.Left := 130;
       Image1.Top := 56
     end;
  2: begin
       AdvOfficePager1.RotateTabLeftRight := false;
       AdvOfficePager1.TabSettings.Height := 90;
       AdvOfficePager1.TabPosition := tpLeft;
       Memo1.Width := 232;
       TreeView1.Width := 232;
       Memo1.ScrollBars := ssVertical;
       Image1.Left := 100;
     end;
  end;
end;

end.
