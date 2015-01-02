unit UAdvFancyLabelDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, AdvCurve, AdvFancyLabel,
  AdvCurveEditor, IniFiles, AdvGDIP, ExtCtrls;

type
  TForm92 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    AdvFancyLabel1: TAdvFancyLabel;
    AdvCurveEditorDialog1: TAdvCurveEditorDialog;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    CheckBox1: TCheckBox;
    Button7: TButton;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure SetDeltas;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  Steps = 20;
  Interval = 50;

var
  Form92: TForm92;
  StartCoords: array of Double;
  DeltaCoords: array of Double;
  ToCenter: Boolean;
  Step: Integer;

implementation

{$R *.dfm}

procedure TForm92.Button1Click(Sender: TObject);
begin
  FontDialog1.Font := AdvFancyLabel1.Font;
  if FontDialog1.Execute then
    AdvFancyLabel1.Font := FontDialog1.Font;
end;

procedure TForm92.Button2Click(Sender: TObject);
begin
  ColorDialog1.Color := AdvFancyLabel1.Color;
  if ColorDialog1.Execute then
    AdvFancyLabel1.Color := ColorDialog1.Color;
end;

procedure TForm92.Button3Click(Sender: TObject);
var
  str: TStringList;
  ini: TInifile;
  i, count: Integer;
  pt: TCurvePoint;
  SectionName: string;
  bold, italic: Boolean;
begin
  OpenDialog1.InitialDir := GetCurrentDir;
  OpenDialog1.Filter := 'AdvFancyLabel demo settings|*.fldemo';
  OpenDialog1.DefaultExt := '.fldemo';
  if OpenDialog1.Execute then
  begin
    ini := TIniFile.Create(OpenDialog1.FileName);
    AdvFancyLabel1.Text := ini.ReadString('Text', 'Text', AdvFancyLabel1.Text);
    AdvFancyLabel1.Color := ini.ReadInteger('Color', 'Color', AdvFancyLabel1.Color);
    AdvFancyLabel1.Font.Name := ini.ReadString('Font', 'Name', AdvFancyLabel1.Font.Name);
    AdvFancyLabel1.Font.Color := ini.ReadInteger('Font', 'Color', AdvFancyLabel1.Font.Color);
    AdvFancyLabel1.Font.Size := ini.ReadInteger('Font', 'Size', AdvFancyLabel1.Font.Size);
    AdvFancyLabel1.Font.Style := [];
    bold := ini.ReadBool('Font','Bold', false);
    italic := ini.ReadBool('Font','Italic', false);
    if bold then
      AdvFancyLabel1.Font.Style := AdvFancyLabel1.Font.Style + [fsBold];
    if italic then
      AdvFancyLabel1.Font.Style := AdvFancyLabel1.Font.Style + [fsItalic];
    count := ini.ReadInteger('Points', 'Count', count);
    AdvFancyLabel1.Points.Clear;
    for I := 0 to count - 1 do
    begin
      pt := AdvFancyLabel1.Points.Add;
      SectionName := 'Point' + inttostr(I);
      pt.X := ini.ReadFloat(SectionName, 'X', pt.X);
      pt.Y := ini.ReadFloat(SectionName, 'Y', pt.Y);
      pt.XTo := ini.ReadFloat(SectionName, 'XTo', pt.XTo);
      pt.YTo := ini.ReadFloat(SectionName, 'YTo', pt.YTo);
    end;
    ini.Free;
    Edit1.Text := AdvFancyLabel1.Text;
    AdvFancyLabel1.Repaint;
    SetDeltas;
  end;
end;

procedure TForm92.Button4Click(Sender: TObject);
var
  str: TStringList;
  ini: TIniFile;
  fn: string;
  I: Integer;
  pt: TCurvePoint;
  SectionName: string;
begin
  SaveDialog1.InitialDir := GetCurrentDir;
  SaveDialog1.Filter := 'AdvFancyLabel demo settings|*.fldemo';
  SaveDialog1.DefaultExt := '.fldemo';
  if SaveDialog1.Execute then
  begin
    ini := TIniFile.Create(SaveDialog1.FileName);
    ini.WriteString('Text', 'Text', AdvFancyLabel1.Text);
    ini.WriteInteger('Color', 'Color', AdvFancyLabel1.Color);
    ini.WriteString('Font', 'Name', AdvFancyLabel1.Font.Name);
    ini.WriteInteger('Font', 'Color', AdvFancyLabel1.Font.Color);
    ini.WriteInteger('Font', 'Size', AdvFancyLabel1.Font.Size);
    ini.WriteBool('Font','Bold', fsBold in AdvFancyLabel1.Font.Style);
    ini.WriteBool('Font','Italic', fsItalic in AdvFancyLabel1.Font.Style);
    ini.WriteInteger('Points', 'Count', AdvFancyLabel1.Points.Count);
    for I := 0 to AdvFancyLabel1.Points.Count - 1 do
    begin
      pt := AdvFancyLabel1.Points[i];
      SectionName := 'Point' + inttostr(I);
      ini.WriteFloat(SectionName, 'X', pt.X);
      ini.WriteFloat(SectionName, 'Y', pt.Y);
      ini.WriteFloat(SectionName, 'XTo', pt.XTo);
      ini.WriteFloat(SectionName, 'YTo', pt.YTo);
    end;
    ini.Free;
  end;
end;

procedure TForm92.Button5Click(Sender: TObject);
begin
  AdvCurveEditorDialog1.CurveComponent := AdvFancyLabel1;
  if AdvCurveEditorDialog1.Execute then
  begin
    AdvFancyLabel1.Points := (AdvCurveEditorDialog1.CurveComponent as TAdvFancyLabel).Points;
    SetDeltas;
  end;
end;

procedure TForm92.Button6Click(Sender: TObject);
var
  bm: TBitmap;
  gp: TGPGraphics;
begin
  SaveDialog1.InitialDir := GetCurrentDir;
  SaveDialog1.Filter := 'Bitmap files|*.bmp';
  SaveDialog1.DefaultExt := '.bmp';
  if SaveDialog1.Execute then
  begin
    bm := TBitmap.Create;
    try
      bm.Width := AdvFancyLabel1.Width;
      bm.Height := AdvFancyLabel1.Height;
      gp := TGPGraphics.Create(bm.Canvas.Handle);
      try
        gp.SetSmoothingMode(SmoothingModeAntiAlias);
        AdvFancyLabel1.DrawCurve(gp);
        bm.SaveToFile(SaveDialog1.FileName);
      finally
        gp.Free;
      end;
    finally
      bm.Free;
    end;
  end;
end;

procedure TForm92.Button7Click(Sender: TObject);
begin
  Button7.Enabled := False;
  Button5.Enabled := False;
  Button6.Enabled := False;
  Button3.Enabled := False;
  Button4.Enabled := True;
  Timer1.Interval := Interval;
  Timer1.Enabled := true;
  toCenter := (Step = 0);
end;

procedure TForm92.CheckBox1Click(Sender: TObject);
begin
  AdvFancyLabel1.Shadow := (Sender as TCheckBox).Checked;
end;

procedure TForm92.Edit1Change(Sender: TObject);
begin
  AdvFancyLabel1.Text := Edit1.Text;
end;

procedure TForm92.FormCreate(Sender: TObject);
begin
  Edit1.Text := 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever.';
  AdvFancyLabel1.Text := Edit1.Text;
  DoubleBuffered := true;
  SetDeltas;
end;

procedure TForm92.SetDeltas;
var
  Count : Integer;
  I: Integer;
begin
  Count := AdvFancyLabel1.Points.Count * 4;
  SetLength(StartCoords, Count);
  SetLength(DeltaCoords, Count);
  for I := 0 to AdvFancyLabel1.Points.Count - 1 do
  begin
    StartCoords[I*4] :=  AdvFancyLabel1.Points[I].X;
    DeltaCoords[I*4] :=  0;//((AdvFancyLabel1.Width/2) - AdvFancyLabel1.Points[I].X) / Steps;
    StartCoords[(I*4) + 1] :=  AdvFancyLabel1.Points[I].Y;
    DeltaCoords[(I*4) + 1] :=  ((AdvFancyLabel1.Height/2) - AdvFancyLabel1.Points[I].Y) / Steps;
    StartCoords[(I*4) + 2] :=  AdvFancyLabel1.Points[I].XTo;
    DeltaCoords[(I*4) + 2] :=  0;//((AdvFancyLabel1.Width/2) - AdvFancyLabel1.Points[I].XTo) / Steps
    StartCoords[(I*4) + 3] :=  AdvFancyLabel1.Points[I].YTo;
    DeltaCoords[(I*4) + 3] :=  ((AdvFancyLabel1.Height/2) - AdvFancyLabel1.Points[I].YTo) / Steps;
  end;
end;

procedure TForm92.Timer1Timer(Sender: TObject);
var
  I: Integer;
begin
  if ToCenter then
  begin
    {$REGION 'Animation to center'}
    if (Step > Steps) then
    begin
      Timer1.Enabled := False;
      Button7.Enabled := True;
      Button5.Enabled := True;
      Button6.Enabled := True;
      Button3.Enabled := True;
      Button4.Enabled := True;
      Step := Steps;
    end
    else
    begin
      for I := 0 to AdvFancyLabel1.Points.Count - 1 do
      begin
        //AdvFancyLabel1.Points[I].X := StartCoords[I*4] + (DeltaCoords[I*4] * Step);
        AdvFancyLabel1.Points[I].Y := StartCoords[(I*4) + 1] + (DeltaCoords[(I*4) + 1] * Step);
        //AdvFancyLabel1.Points[I].XTo := StartCoords[(I*4) + 2] + (DeltaCoords[(I*4) + 2] * Step);
        AdvFancyLabel1.Points[I].YTo := StartCoords[(I*4) + 3] + (DeltaCoords[(I*4) + 3] * Step);
      end;
      Step := Step + 1;
    end;
    {$ENDREGION}
  end
  else
  begin
    {$REGION 'Animation from center'}
    if (Step < 0) then
    begin
      Timer1.Enabled := False;
      Button7.Enabled := True;
      Button5.Enabled := True;
      Button6.Enabled := True;
      Button3.Enabled := True;
      Button4.Enabled := True;
      Step := 0;
    end
    else
    begin
      for I := 0 to AdvFancyLabel1.Points.Count - 1 do
      begin
        AdvFancyLabel1.Points[I].X := StartCoords[I*4] + (DeltaCoords[I*4] * Step);
        AdvFancyLabel1.Points[I].Y := StartCoords[(I*4) + 1] + (DeltaCoords[(I*4) + 1] * Step);
        AdvFancyLabel1.Points[I].XTo := StartCoords[(I*4) + 2] + (DeltaCoords[(I*4) + 2] * Step);
        AdvFancyLabel1.Points[I].YTo := StartCoords[(I*4) + 3] + (DeltaCoords[(I*4) + 3] * Step);
      end;
      Step := Step - 1;
    end;
    {$ENDREGION}
  end;
  AdvFancyLabel1.Repaint;
end;

end.
