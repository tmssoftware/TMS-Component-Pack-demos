unit USPBEPCDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, SPBEPC, StdCtrls, AdvSelectors;

type
  TForm92 = class(TForm)
    SPBEPC1: TSPBEPC;
    ComboBox1: TComboBox;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Label2: TLabel;
    Edit1: TEdit;
    CheckBox3: TCheckBox;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    FontDialog1: TFontDialog;
    Button4: TButton;
    SaveDialog1: TSaveDialog;
    Button5: TButton;
    ColorDialog1: TColorDialog;
    CheckBox4: TCheckBox;
    Label5: TLabel;
    Label6: TLabel;
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure SPBEPC1CurrentChange(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure SPBEPC1PotentialChange(Sender: TObject);
  private
    procedure SetEdits;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form92: TForm92;

implementation

{$R *.dfm}

procedure TForm92.Button1Click(Sender: TObject);
begin
  FontDialog1.Font := SPBEPC1.TitleFont;
  if FontDialog1.Execute then
    SPBEPC1.TitleFont := FontDialog1.Font;
end;

procedure TForm92.Button2Click(Sender: TObject);
begin
  FontDialog1.Font := SPBEPC1.TopCaptionFont;
  if FontDialog1.Execute then
    SPBEPC1.TopCaptionFont := FontDialog1.Font;
end;

procedure TForm92.Button3Click(Sender: TObject);
begin
  FontDialog1.Font := SPBEPC1.BottomCaptionFont;
  if FontDialog1.Execute then
    SPBEPC1.BottomCaptionFont := FontDialog1.Font;
end;

procedure TForm92.Button4Click(Sender: TObject);
begin
  SaveDialog1.InitialDir := GetCurrentDir;
  if SaveDialog1.Execute then
    SPBEPC1.Picture.SaveToFile(SaveDialog1.FileName);
end;

procedure TForm92.Button5Click(Sender: TObject);
begin
  ColorDialog1.Color := SPBEPC1.TitleColor;
  if ColorDialog1.Execute then
  begin
    SPBEPC1.TitleColor := ColorDialog1.Color
  end;
end;

procedure TForm92.CheckBox1Click(Sender: TObject);
begin
  SPBEPC1.CurrentVisible := (Sender as TCheckBox).Checked;
end;

procedure TForm92.CheckBox2Click(Sender: TObject);
begin
  SPBEPC1.PotentialVisible := (Sender as TCheckBox).Checked;
end;

procedure TForm92.CheckBox3Click(Sender: TObject);
begin
  SPBEPC1.ReadOnly := not (Sender as TCheckBox).Checked;
end;

procedure TForm92.CheckBox4Click(Sender: TObject);
begin
  if (Sender as TCheckBox).Checked then
  begin
    SPBEPC1.TitleColor := SPBEPC1.CurrentColor;
    Button5.Enabled := False;
  end
  else
    Button5.Enabled := True;
end;

procedure TForm92.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0:
    begin
      SPBEPC1.ChartType := ctEPC;
      SetEdits;
    end;
    1:
    begin
      SPBEPC1.ChartType := ctEIC;
      SetEdits;
    end;
  end;
  CheckBox4Click(CheckBox4);
end;

procedure TForm92.Edit1Change(Sender: TObject);
begin
  SPBEPC1.Title := (Sender as TEdit).Text;
end;

procedure TForm92.Edit2Change(Sender: TObject);
begin
  SPBEPC1.TopCaption := (Sender as TEdit).Text;
end;

procedure TForm92.Edit3Change(Sender: TObject);
begin
  SPBEPC1.BottomCaption := (Sender as TEdit).Text;
end;

procedure TForm92.SetEdits;
begin
  Edit1.Text := SPBEPC1.Title;
  Edit2.Text := SPBEPC1.TopCaption;
  Edit3.Text := SPBEPC1.BottomCaption;
end;

procedure TForm92.SPBEPC1CurrentChange(Sender: TObject);
begin
  CheckBox4Click(CheckBox4);
  Label5.Caption := 'Current: ' + IntToStr(SPBEPC1.Current);
end;

procedure TForm92.SPBEPC1PotentialChange(Sender: TObject);
begin
  Label6.Caption := 'Potential: ' + IntToStr(SPBEPC1.Potential);
end;

procedure TForm92.FormCreate(Sender: TObject);
begin
  SetEdits;
end;

end.
