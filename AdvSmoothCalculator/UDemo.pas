{********************************************************************}
{ TMS TAdvSmoothCalculator Demo                                      }
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
  Dialogs, StdCtrls, ComCtrls, AdvSmoothEdit, AdvSmoothEditButton,
  AdvSmoothCalculatorDropDown, AdvSmoothCalculator, AdvStyleIF, Vcl.Mask;

type
  TForm343 = class(TForm)
    AdvSmoothCalculator1: TAdvSmoothCalculator;
    ComboBox1: TComboBox;
    AdvSmoothCalculatorDropDown1: TAdvSmoothCalculatorDropDown;
    TrackBar1: TTrackBar;
    Label1: TLabel;
    Label2: TLabel;
    procedure TrackBar1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form343: TForm343;

implementation

{$R *.dfm}

procedure TForm343.ComboBox1Change(Sender: TObject);
var
  s: TTMSStyle;
begin
  s := tsOffice2007Luna;
  case ComboBox1.ItemIndex of
  0: s := tsOffice2003Blue;
  1: s := tsOffice2003Silver;
  2: s := tsOffice2003Olive;
  3: s := tsOffice2003Classic;
  4: s := tsOffice2007Luna;
  5: s := tsOffice2007Obsidian;
  6: s := tsOffice2007Silver;
  7: s := tsWindowsXP;
  8: s := tsWhidbey;
  9: s := tsWindowsVista;
  10: s := tsWindows7;
  11: s := tsTerminal;
  12: s := tswindows8;
  end;

  AdvSmoothCalculator1.SetComponentStyle(s);
  AdvSmoothCalculatorDropDown1.SetComponentStyle(s);
end;

procedure TForm343.FormCreate(Sender: TObject);
begin
  AdvSmoothCalculator1.Precision := 2;
  AdvSmoothCalculatorDropDown1.Precision := 2;
  ComboBox1.ItemIndex := 12;
end;

procedure TForm343.TrackBar1Change(Sender: TObject);
begin
  AdvSmoothCalculator1.Precision := Trackbar1.Position;
  AdvSmoothCalculatorDropDown1.Calculator.Precision := Trackbar1.Position;
end;

end.
