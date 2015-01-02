{********************************************************************}
{ TMS TAdvSmoothTabPager Demo                                        }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2014                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit UDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvSmoothTabPager, ComCtrls, AdvStyleIF;

type
  TForm179 = class(TForm)
    AdvSmoothTabPager1: TAdvSmoothTabPager;
    AdvSmoothTabPager11: TAdvSmoothTabPage;
    AdvSmoothTabPager12: TAdvSmoothTabPage;
    AdvSmoothTabPager13: TAdvSmoothTabPage;
    ComboBox2: TComboBox;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    CheckBox1: TCheckBox;
    Label3: TLabel;
    MonthCalendar1: TMonthCalendar;
    Label4: TLabel;
    CheckBox2: TCheckBox;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form179: TForm179;

implementation

{$R *.dfm}

procedure TForm179.CheckBox1Click(Sender: TObject);
begin
  AdvSmoothTabPager1.TabReorder := CheckBox1.Checked;
end;

procedure TForm179.CheckBox2Click(Sender: TObject);
begin
  AdvSmoothTabPager11.TabAppearance.Status.Visible := CheckBox2.Checked;
end;

procedure TForm179.ComboBox1Change(Sender: TObject);
var
  s: TTMSStyle;
begin
  s := tsOffice2003Blue;
  case ComboBox1.ItemIndex of
  0: s := TTMSStyle(0);
  1: s := TTMSStyle(1);
  2: s := TTMSStyle(2);
  3: s := TTMSStyle(3);
  4: s := TTMSStyle(4);
  5: s := TTMSStyle(5);
  6: s := tsOffice2007Silver;
  7: s := tsWindowsXP;
  8: s := tsWhidbey;
  9: s := tsWindows8;
  end;
  AdvSmoothTabPager1.SetComponentStyle(s);
end;

procedure TForm179.ComboBox2Change(Sender: TObject);
begin
  AdvSmoothTabPager1.TabPosition := TAdvSmoothTabPosition(ComboBox2.ItemIndex);
end;

procedure TForm179.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true;
  ComboBox1.ItemIndex := 9;
  AdvSmoothTabPager1.SetComponentStyle(tswindows8);
end;

end.
