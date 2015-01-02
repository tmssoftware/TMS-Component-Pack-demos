{********************************************************************}
{ TMS TAdvSmoothProgressBar Demo                                     }
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
  Dialogs, ComCtrls, AdvSmoothProgressBar, ExtCtrls, StdCtrls;

type
  TForm164 = class(TForm)
    AdvSmoothProgressBar1: TAdvSmoothProgressBar;
    AdvSmoothProgressBar2: TAdvSmoothProgressBar;
    AdvSmoothProgressBar3: TAdvSmoothProgressBar;
    AdvSmoothProgressBar4: TAdvSmoothProgressBar;
    AdvSmoothProgressBar5: TAdvSmoothProgressBar;
    Timer1: TTimer;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form164: TForm164;

implementation

{$R *.dfm}

procedure TForm164.CheckBox1Click(Sender: TObject);
begin
  AdvSmoothProgressBar1.ProgressAnimation := CheckBox1.Checked;
  AdvSmoothProgressBar2.ProgressAnimation := CheckBox1.Checked;
  AdvSmoothProgressBar3.ProgressAnimation := CheckBox1.Checked;
  AdvSmoothProgressBar4.ProgressAnimation := CheckBox1.Checked;
  AdvSmoothProgressBar5.ProgressAnimation := CheckBox1.Checked;
end;

procedure TForm164.CheckBox2Click(Sender: TObject);
begin
  AdvSmoothProgressBar1.GlowAnimation := CheckBox2.Checked;
  AdvSmoothProgressBar2.GlowAnimation := CheckBox2.Checked;
  AdvSmoothProgressBar3.GlowAnimation := CheckBox2.Checked;
  AdvSmoothProgressBar4.GlowAnimation := CheckBox2.Checked;
  AdvSmoothProgressBar5.GlowAnimation := CheckBox2.Checked;
end;

procedure TForm164.FormCreate(Sender: TObject);
begin
  DoubleBuffered := true;
end;

procedure TForm164.Timer1Timer(Sender: TObject);
begin
  AdvSmoothProgressBar1.Position := Random(100);
  AdvSmoothProgressBar2.Position := Random(100);
  AdvSmoothProgressBar3.Position := Random(100);
  AdvSmoothProgressBar4.Position := Random(100);
end;

end.
