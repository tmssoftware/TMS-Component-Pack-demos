unit UAdvGauge;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  AdvGauge, ComCtrls, StdCtrls, AdvGDIPicture, AdvGDIP, ExtCtrls, AdvGaugeCircle, AdvRangeCircles;

type
  TForm93 = class(TForm)
    AdvGaugeCircle1: TAdvGaugeCircle;
    AdvRangeCircles1: TAdvRangeCircles;
    AdvGauge1: TAdvGauge;
    TrackBar1: TTrackBar;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Button3: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    OpenDialog1: TOpenDialog;
    FontDialog1: TFontDialog;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure AdvGaugeCircle1ClickDown(Sender: TObject);
    procedure AdvGaugeCircle1ClickUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form93: TForm93;

implementation

{$R *.dfm}

procedure TForm93.AdvGaugeCircle1ClickDown(Sender: TObject);
begin
  //ShowMessage('down clicked');
end;

procedure TForm93.AdvGaugeCircle1ClickUp(Sender: TObject);
begin
  //ShowMessage('Up clicked');
end;

procedure TForm93.Button1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    AdvGauge1.PictureMinimum.LoadFromFile(OpenDialog1.FileName);
    AdvGaugeCircle1.PictureDown.LoadFromFile(OpenDialog1.FileName);
  end;
end;

procedure TForm93.Button2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    AdvGauge1.PictureMaximum.LoadFromFile(OpenDialog1.FileName);
    AdvGaugeCircle1.PictureUp.LoadFromFile(OpenDialog1.FileName);
  end;
end;

procedure TForm93.Button3Click(Sender: TObject);
begin
  FontDialog1.Font := AdvGauge1.Font;
  if FontDialog1.Execute then
  begin
    AdvGauge1.Font := FontDialog1.Font;
    AdvGaugeCircle1.Font := FontDialog1.Font;
    AdvRangeCircles1.Font := FontDialog1.Font;
  end;
end;

procedure TForm93.CheckBox1Click(Sender: TObject);
begin
  if (Sender as TCheckBox).Checked then
    TrackBar1.Position := Round(AdvGauge1.EndPosition)
  else
    TrackBar1.Position := Round(AdvGauge1.Position);
end;

procedure TForm93.CheckBox2Click(Sender: TObject);
begin
  AdvGauge1.UseSplitPosition := (Sender as TCheckBox).Checked;
end;

procedure TForm93.CheckBox3Click(Sender: TObject);
begin
  AdvGauge1.IsRange := (Sender as TCheckBox).Checked;
end;

procedure TForm93.CheckBox4Click(Sender: TObject);
begin
  if (Sender as TCheckBox).Checked then
    AdvGauge1.SplitArcColor := clNone
  else
    AdvGauge1.SplitArcColor := clRed;
end;

procedure TForm93.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0: AdvGauge1.Kind := gkMinmax;
    1: AdvGauge1.Kind := gkNightday;
    2: AdvGauge1.Kind := gkBattery;
    3: AdvGauge1.Kind := gkText;
    4: AdvGauge1.Kind := gkNone;
  end;
end;

procedure TForm93.ComboBox2Change(Sender: TObject);
begin
  case ComboBox2.ItemIndex of
    0: AdvGauge1.TextPosition := tpNone;
    1: AdvGauge1.TextPosition := tpInNeedle;
    2: AdvGauge1.TextPosition := AdvGauge.tpTop;
    3: AdvGauge1.TextPosition := AdvGauge.tpBottom;
  end;
end;

procedure TForm93.Edit1Change(Sender: TObject);
begin
  AdvGauge1.MinText := Edit1.Text;
end;

procedure TForm93.Edit2Change(Sender: TObject);
begin
  AdvGauge1.MaxText := Edit2.Text;
end;

procedure TForm93.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true;
  TrackBar1.Min := Round(AdvGauge1.Minimum);
  TrackBar1.Max := Round(AdvGauge1.Maximum);
  TrackBar1.Position := Round(AdvGauge1.Position);
end;

procedure TForm93.TrackBar1Change(Sender: TObject);
var
  I: Integer;
begin
  if CheckBox1.Checked then
  begin
    AdvGauge1.EndPosition := TrackBar1.Position;
    for I := 0 to AdvRangeCircles1.Circles.Count - 1 do
    begin
      AdvRangeCircles1.Circles[I].EndPosition := TrackBar1.Position;
    end;
  end
  else
  begin
    AdvGauge1.Position := TrackBar1.Position;
    for I := 0 to AdvRangeCircles1.Circles.Count - 1 do
    begin
      AdvRangeCircles1.Circles[I].Position := TrackBar1.Position;
    end;
  end;

  AdvGaugeCircle1.Position := TrackBar1.Position;
end;

end.
