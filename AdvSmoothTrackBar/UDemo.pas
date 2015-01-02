{********************************************************************}
{ TMS TAdvSmoothTrackBar Demo                                        }
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
  Dialogs, AdvSmoothTrackBar, StdCtrls, ExtCtrls;

type
  TForm185 = class(TForm)
    AdvSmoothTrackBar1: TAdvSmoothTrackBar;
    AdvSmoothTrackBar2: TAdvSmoothTrackBar;
    AdvSmoothTrackBar3: TAdvSmoothTrackBar;
    AdvSmoothTrackBar4: TAdvSmoothTrackBar;
    AdvSmoothTrackBar5: TAdvSmoothTrackBar;
    CheckBox2: TCheckBox;
    Timer1: TTimer;
    procedure CheckBox2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form185: TForm185;

implementation

{$R *.dfm}

procedure TForm185.CheckBox2Click(Sender: TObject);
begin
  AdvSmoothTrackBar1.GlowAnimation := checkbox2.Checked;
  AdvSmoothTrackBar2.GlowAnimation := checkbox2.Checked;
  AdvSmoothTrackBar3.GlowAnimation := checkbox2.Checked;
  AdvSmoothTrackBar4.GlowAnimation := checkbox2.Checked;
  AdvSmoothTrackBar5.GlowAnimation := checkbox2.Checked;
end;

procedure TForm185.Timer1Timer(Sender: TObject);
begin
  AdvSmoothTrackBar1.Position := Random(100);
  AdvSmoothTrackBar2.Position := Random(100);
end;

end.
