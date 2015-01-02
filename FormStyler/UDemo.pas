{********************************************************************}
{ TMS Office Form Styler Demo                                        }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2012                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit UDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvSmoothGauge, AdvSmoothTrackBar, AdvSmoothListBox, AdvSmoothMenu,
  AdvAppStyler, StdCtrls, AdvStyleIF, AdvSmoothCalendar;

type
  TForm225 = class(TForm)
    AdvFormStyler1: TAdvFormStyler;
    AdvSmoothMenu1: TAdvSmoothMenu;
    AdvSmoothListBox1: TAdvSmoothListBox;
    AdvSmoothTrackBar1: TAdvSmoothTrackBar;
    AdvSmoothGauge1: TAdvSmoothGauge;
    ComboBox1: TComboBox;
    AdvSmoothCalendar1: TAdvSmoothCalendar;
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form225: TForm225;

implementation

{$R *.dfm}

procedure TForm225.ComboBox1Change(Sender: TObject);
var
  AStyle: TTMSStyle;
begin
  AStyle := tsOffice2003Blue;
  case ComboBox1.ItemIndex of
  0:AStyle := tsOffice2003Blue;
  1:Astyle := tsOffice2003Olive;
  2:AStyle := tsOffice2003Silver;
  3:Astyle := tsOffice2007Luna;
  4:AStyle := tsOffice2007Obsidian;
  5:AStyle := tsOffice2007Silver;
  end;
  AdvFormStyler1.Style := AStyle;
end;

end.
