{********************************************************************}
{ TMS TAdvSmoothCircularProgress Demo                                }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2014                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit UDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, AdvSmoothCircularProgress, StdCtrls,
  ExtCtrls, Math, AdvStyleIF;

type
  TForm832 = class(TForm)
    AdvSmoothCircularProgress1: TAdvSmoothCircularProgress;
    Panel1: TPanel;
    ComboBox1: TComboBox;
    AdvSmoothCircularProgress2: TAdvSmoothCircularProgress;
    AdvSmoothCircularProgress3: TAdvSmoothCircularProgress;
    AdvSmoothCircularProgress4: TAdvSmoothCircularProgress;
    Timer1: TTimer;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form832: TForm832;

implementation

{$R *.dfm}

procedure TForm832.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
  0: AdvSmoothCircularProgress1.ApplyDefaultStyle;
  1: AdvSmoothCircularProgress1.SetComponentStyle(tsOffice2003Blue);
  2: AdvSmoothCircularProgress1.SetComponentStyle(tsOffice2003Silver);
  3: AdvSmoothCircularProgress1.SetComponentStyle(tsOffice2003Olive);
  4: AdvSmoothCircularProgress1.SetComponentStyle(tsOffice2003Classic);
  5: AdvSmoothCircularProgress1.SetComponentStyle(tsOffice2007Luna);
  6: AdvSmoothCircularProgress1.SetComponentStyle(tsOffice2007Obsidian);
  7: AdvSmoothCircularProgress1.SetComponentStyle(tsOffice2007Silver);
  8: AdvSmoothCircularProgress1.SetComponentStyle(tsOffice2010Blue);
  9: AdvSmoothCircularProgress1.SetComponentStyle(tsOffice2010Silver);
  10: AdvSmoothCircularProgress1.SetComponentStyle(tsOffice2010Black);
  11: AdvSmoothCircularProgress1.SetComponentStyle(tsOffice2013White);
  12: AdvSmoothCircularProgress1.SetComponentStyle(tsOffice2013LightGray);
  13: AdvSmoothCircularProgress1.SetComponentStyle(tsOffice2013Gray);
  14: AdvSmoothCircularProgress1.SetComponentStyle(tsWhidbey);
  15: AdvSmoothCircularProgress1.SetComponentStyle(tsWindowsXP);
  16: AdvSmoothCircularProgress1.SetComponentStyle(tsWindowsVista);
  17: AdvSmoothCircularProgress1.SetComponentStyle(tsWindows7);
  18: AdvSmoothCircularProgress1.SetComponentStyle(tsWindows8);
  19: AdvSmoothCircularProgress1.SetComponentStyle(tsTerminal);
  end;
end;

procedure TForm832.FormCreate(Sender: TObject);
begin
  Label1.Caption := 'Click on the scale of the bottom'+#13#10 +'circular progress for interaction.';
  Label1.Left := Panel1.Width - Label1.Width - 5;
  Label1.Top := (Panel1.Height - Label1.Height) div 2;
end;

procedure TForm832.Timer1Timer(Sender: TObject);
begin
  AdvSmoothCircularProgress1.Position := RandomRange(Round(AdvSmoothCircularProgress1.Minimum), Round(AdvSmoothCircularProgress1.Maximum));
  AdvSmoothCircularProgress3.Position := Random(100);
end;

end.

