{********************************************************************}
{ TMS TAdvSmoothSplashScreen Demo                                    }
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
  Dialogs, StdCtrls, AdvSmoothSplashScreen, AdvStyleIF, ComCtrls;

type
  TForm1 = class(TForm)
    AdvSmoothSplashScreen1: TAdvSmoothSplashScreen;
    ComboBox1: TComboBox;
    Button1: TButton;
    TrackBar1: TTrackBar;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    Label3: TLabel;
    Label4: TLabel;
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to Memo1.Lines.Count - 1 do
    AdvSmoothSplashScreen1.TopLayerItems[0].HTMLText.Text := AdvSmoothSplashScreen1.TopLayerItems[0].HTMLText.Text + Memo1.Lines[I];
  AdvSmoothSplashScreen1.Show;
  AdvSmoothSplashScreen1.SetFocusToForm(Form1);
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
  0: AdvSmoothSplashScreen1.SetComponentStyle(tsOffice2003Blue);
  1: AdvSmoothSplashScreen1.SetComponentStyle(tsOffice2003Silver);
  2: AdvSmoothSplashScreen1.SetComponentStyle(tsOffice2003Olive);
  3: AdvSmoothSplashScreen1.SetComponentStyle(tsOffice2003Classic);
  4: AdvSmoothSplashScreen1.SetComponentStyle(tsOffice2007Luna);
  5: AdvSmoothSplashScreen1.SetComponentStyle(tsOffice2007Obsidian);
  6: AdvSmoothSplashScreen1.SetComponentStyle(tsOffice2007Silver);
  7: AdvSmoothSplashScreen1.SetComponentStyle(tsWindowsXP);
  8: AdvSmoothSplashScreen1.SetComponentStyle(tsWhidbey);
  9: AdvSmoothSplashScreen1.SetComponentStyle(tsWindows8);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  AdvSmoothSplashScreen1.SetComponentStyle(tsWindows8);
  ComboBox1.ItemIndex := 9;
  AdvSmoothSplashScreen1.Fill.Opacity := TrackBar1.Position;
  AdvSmoothSplashScreen1.Fill.OpacityTo := TrackBar1.Position;
  Label4.Caption := Format('%.2g%%', [100 / TrackBar1.Max * TrackBar1.Position]);
  AdvSmoothSplashScreen1.SetFocusToForm(Form1);
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  AdvSmoothSplashScreen1.Fill.Opacity := TrackBar1.Position;
  AdvSmoothSplashScreen1.Fill.OpacityTo := TrackBar1.Position;
  Label4.Caption := Format('%.2g%%', [100 / TrackBar1.Max * TrackBar1.Position]);
end;

end.
