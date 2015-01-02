{********************************************************************}
{ TMS TAdvSmoothPopup Demo                                           }
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
  Dialogs, AdvSmoothPopup, StdCtrls, ComCtrls, GDIPPictureContainer, AdvStyleIF,
  ExtCtrls;

type
  TForm205 = class(TForm)
    MonthCalendar1: TMonthCalendar;
    AdvSmoothPopup1: TAdvSmoothPopup;
    GDIPPictureContainer1: TGDIPPictureContainer;
    ComboBox1: TComboBox;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    Label2: TLabel;
    ColorDialog1: TColorDialog;
    Button2: TButton;
    Button3: TButton;
    TrackBar1: TTrackBar;
    Label3: TLabel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure AdvSmoothPopup1ButtonClick(Sender: TObject; Index: Integer);
    procedure ComboBox1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure AdvSmoothPopup1Close(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form205: TForm205;
  l, t, w, h: Integer;

implementation

{$R *.dfm}

procedure TForm205.AdvSmoothPopup1ButtonClick(Sender: TObject; Index: Integer);
begin
  case (Sender as TPopupButton).Tag of
    1: AdvSmoothPopup1.ClosePopup;
    2: ShowMessage('Save Clicked');
    3: ShowMessage('Help Clicked');
    4: MonthCalendar1.Date := Now;
  end;
end;

procedure TForm205.AdvSmoothPopup1Close(Sender: TObject);
begin
  AdvSmoothPopup1.Control := nil;
  MonthCalendar1.Left := l;
  MonthCalendar1.Top := t;
  MonthCalendar1.Width := w;
  MonthCalendar1.Height := h;
end;

procedure TForm205.Button1Click(Sender: TObject);
begin
  AdvSmoothPopup1.SetDefaultStyle;
end;

procedure TForm205.Button2Click(Sender: TObject);
begin
  ColorDialog1.Color := AdvSmoothPopup1.Color;
  if ColorDialog1.Execute then
    AdvSmoothPopup1.SetGlobalColor(ColorDialog1.Color);
end;

procedure TForm205.Button3Click(Sender: TObject);
begin
  l := MonthCalendar1.Left;
  t := MonthCalendar1.Top;
  w := MonthCalendar1.Width;
  h := MonthCalendar1.Height;
  AdvSmoothPopup1.Width := 400;
  AdvSmoothPopup1.Height := 450;
  AdvSmoothPopup1.Control := MonthCalendar1;
  AdvSmoothPopup1.PopupAtControl(Button1, pdRightCenter);
end;

procedure TForm205.CheckBox1Click(Sender: TObject);
begin
  AdvSmoothPopup1.CloseOnDeactivate := CheckBox1.Checked;
end;

procedure TForm205.ComboBox1Change(Sender: TObject);
var
  AStyle: TTMSStyle;
begin
  Astyle := tsWindows8;
  case ComboBox1.ItemIndex of
  0: AStyle := tsOffice2003Blue;
  1: AStyle := tsOffice2003Silver;
  2: AStyle := tsOffice2003Olive;
  3: AStyle := tsOffice2003Classic;
  4: AStyle := tsOffice2007Luna;
  5: AStyle := tsOffice2007Silver;
  6: AStyle := tsOffice2007Obsidian;
  7: AStyle := tsOffice2010Blue;
  8: AStyle := tsOffice2010Silver;
  9: AStyle := tsOffice2010Black;
  10: AStyle := tsWindowsXP;
  11: AStyle := tsWhidbey;
  12: AStyle := tsWindowsVista;
  13: AStyle := tsWindows7;
  14: AStyle := tsTerminal;
  15: AStyle := tsWindows8;
  end;

  AdvSmoothPopup1.SetComponentStyle(AStyle);
end;

procedure TForm205.FormCreate(Sender: TObject);
begin
  DoubleBuffered := True;
  AdvSmoothPopup1.HeaderCaption := 'Calendar';
  AdvSmoothPopup1.FooterCaption := DateToStr(Now);
  with AdvSmoothPopup1.Buttons.Add do
  begin
    Caption := '';
    Tag := 1;
    Position := bpTopRight;
    ImageName := '1';
  end;

  with AdvSmoothPopup1.Buttons.Add do
  begin
    Caption := 'Save';
    Tag := 2;
    Position := bpTopLeft;
    ImageName := '2';
  end;

  with AdvSmoothPopup1.Buttons.Add do
  begin
    Caption := 'Help';
    Tag := 3;
    Position := bpTopLeft;
    ImageName := '3';
  end;

  with AdvSmoothPopup1.Buttons.Add do
  begin
    Caption := 'Today';
    Tag := 4;
    Position := bpBottomLeft;
    ImageName := '4';
  end;
  ComboBox1.ItemIndex := 15;
  AdvSmoothPopup1.SetComponentStyle(tswindows8);
end;

procedure TForm205.TrackBar1Change(Sender: TObject);
begin
  AdvSmoothPopup1.AnimationFactor := TrackBar1.Position;
end;

end.
