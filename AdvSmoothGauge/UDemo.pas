{********************************************************************}
{ TMS TAdvSmoothGauge Demo                                           }
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
  Dialogs, AdvSmoothGauge, ComCtrls, StdCtrls, AdvStyleIF, ExtCtrls;

type
  TForm185 = class(TForm)
    AdvSmoothGauge1: TAdvSmoothGauge;
    AdvSmoothGauge2: TAdvSmoothGauge;
    AdvSmoothGauge3: TAdvSmoothGauge;
    TrackBar1: TTrackBar;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    ComboBox1: TComboBox;
    Timer1: TTimer;
    CheckBox1: TCheckBox;
    procedure TrackBar1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form185: TForm185;
  g: TAdvSmoothGauge;

implementation

{$R *.dfm}

procedure TForm185.CheckBox1Click(Sender: TObject);
begin
  AdvSmoothGauge1.Animation := CheckBox1.Checked;
end;

procedure TForm185.ComboBox1Change(Sender: TObject);
var
  s: TTMSStyle;
begin
  s := tsOffice2003Blue;
  case ComboBox1.ItemIndex of
  1: s := tsOffice2003Silver;
  2: s := tsOffice2003Olive;
  3: s := tsOffice2003Classic;
  4: s := tsOffice2007Luna;
  5: s := tsOffice2007Obsidian;
  6: s := tsOffice2007Silver;
  7: s := tsOffice2010Blue;
  8: s := tsOffice2010Silver;
  9: s := tsOffice2010Black;
  10: s := tsOffice2013White;
  11: s := tsOffice2013LightGray;
  12: s := tsOffice2013Gray;
  13: s := tsWindowsXP;
  14: s := tsWhidbey;
  15: s := tsWindowsVista;
  16: s := tsWindows7;
  17: s := tsTerminal;
  18: s := tsWindows8;
  end;
  AdvSmoothGauge1.SetComponentStyle(s);
end;

procedure TForm185.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex := 18;
  AdvSmoothGauge1.SetComponentStyle(tswindows8);
  g := TAdvSmoothGauge.Create(Self);
  g.Width := 150;
  g.Height := 150;
  g.Top := TrackBar1.Top + TrackBar1.Height;
  g.Left := TrackBar1.Left;
  g.Parent := Self;
end;

procedure TForm185.FormDestroy(Sender: TObject);
begin
  g.free;
end;

procedure TForm185.RadioButton1Click(Sender: TObject);
begin
  AdvSmoothGauge2.Value := -30;
end;

procedure TForm185.RadioButton2Click(Sender: TObject);
begin
  AdvSmoothGauge2.Value := 30;
end;

procedure TForm185.Timer1Timer(Sender: TObject);
begin
  g.Value := Random(100);
end;

procedure TForm185.TrackBar1Change(Sender: TObject);
begin
  AdvSmoothGauge3.Value := TrackBar1.Position;
  AdvSmoothGauge1.Value := TrackBar1.Position;
end;

end.
