{********************************************************************}
{ TMS TAdvSmoothToggleButton Demo                                    }
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
  Dialogs, StdCtrls, AdvSmoothToggleButton, ComCtrls;

type
  TForm185 = class(TForm)
    AdvSmoothToggleButton1: TAdvSmoothToggleButton;
    AdvSmoothToggleButton2: TAdvSmoothToggleButton;
    AdvSmoothToggleButton3: TAdvSmoothToggleButton;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    MonthCalendar1: TMonthCalendar;
    AdvSmoothToggleButton4: TAdvSmoothToggleButton;
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure MonthCalendar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form185: TForm185;

implementation

{$R *.dfm}

procedure TForm185.CheckBox6Click(Sender: TObject);
begin
  AdvSmoothToggleButton2.AutoToggle := CheckBox6.Checked;
  if CheckBox6.Checked then
  begin
    AdvSmoothToggleButton2.Status.Appearance.Fill.Color := RGB(153, 204, 0);
    AdvSmoothToggleButton2.Status.Caption := 'AutoToggle On';
  end
  else
  begin
    AdvSmoothToggleButton2.Status.Appearance.Fill.Color := RGB(255, 106, 106);
    AdvSmoothToggleButton2.Status.Caption := 'AutoToggle Off';
  end;
end;

procedure TForm185.CheckBox7Click(Sender: TObject);
begin
  AdvSmoothToggleButton3.Enabled := CheckBox7.Checked;
  if CheckBox7.Checked then
    AdvSmoothToggleButton3.Caption := 'Enabled'
  else
    AdvSmoothToggleButton3.Caption := 'Disabled'
end;

procedure TForm185.FormCreate(Sender: TObject);
begin
  AdvSmoothToggleButton1.Status.Caption := DateToStr(MonthCalendar1.Date);
end;

procedure TForm185.MonthCalendar1Click(Sender: TObject);
begin
  AdvSmoothToggleButton1.Status.Caption := DateToStr(MonthCalendar1.Date);
end;

end.
