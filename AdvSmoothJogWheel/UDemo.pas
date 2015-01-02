{********************************************************************}
{ TMS TAdvSmoothJogWheel Demo                                        }
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
  Dialogs, StdCtrls, AdvSmoothJogWheel;

type
  TForm185 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    AdvSmoothJogWheel1: TAdvSmoothJogWheel;
    AdvSmoothJogWheel2: TAdvSmoothJogWheel;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    procedure AdvSmoothJogWheel1ValueChanged(Sender: TObject; Value: Double;
      CurrentMode: TAdvSmoothJogWheelModeType);
    procedure AdvSmoothJogWheel1ModeChanged(Sender: TObject;
      Mode: TAdvSmoothJogWheelModeType);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form185: TForm185;

implementation

{$R *.dfm}

procedure TForm185.AdvSmoothJogWheel1ModeChanged(Sender: TObject;
  Mode: TAdvSmoothJogWheelModeType);
begin
  case Mode of
    wmContinuous: Label2.Caption := 'Mode = Continuous';
    wmCue: Label2.Caption := 'Mode = Cue';
    wmAutoCue: Label2.Caption := 'Mode = AutoCue';
  end;
end;

procedure TForm185.AdvSmoothJogWheel1ValueChanged(Sender: TObject;
  Value: Double; CurrentMode: TAdvSmoothJogWheelModeType);
begin
  Label1.Caption := 'Value = ' + floattostr(Value);
  case CurrentMode of
    wmContinuous: Label2.Caption := 'Mode = Continuous';
    wmCue: Label2.Caption := 'Mode = Cue';
    wmAutoCue: Label2.Caption := 'Mode = AutoCue';
  end;
end;

procedure TForm185.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
    AdvSmoothJogWheel1.Modes := AdvSmoothJogWheel1.Modes + [wmContinuous]
  else
    AdvSmoothJogWheel1.Modes := AdvSmoothJogWheel1.Modes - [wmContinuous];

  AdvSmoothJogWheel2.Modes := AdvSmoothJogWheel1.Modes;
end;

procedure TForm185.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked then
    AdvSmoothJogWheel1.Modes := AdvSmoothJogWheel1.Modes + [wmAutoCue]
  else
    AdvSmoothJogWheel1.Modes := AdvSmoothJogWheel1.Modes - [wmAutoCue];

  AdvSmoothJogWheel2.Modes := AdvSmoothJogWheel1.Modes;
end;

procedure TForm185.CheckBox3Click(Sender: TObject);
begin
  if CheckBox3.Checked then
    AdvSmoothJogWheel1.Modes := AdvSmoothJogWheel1.Modes + [wmCue]
  else
    AdvSmoothJogWheel1.Modes := AdvSmoothJogWheel1.Modes - [wmCue];

  AdvSmoothJogWheel2.Modes := AdvSmoothJogWheel1.Modes;    
end;

end.
