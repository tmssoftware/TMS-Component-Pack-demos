unit UDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, AdvSmoothCircularProgress, StdCtrls,
  ExtCtrls, Math, AdvStyleIF, GDIPPictureContainer, AdvSmoothRotaryMenu,
  Buttons, AdvGDIP, ComCtrls;

type
  TForm832 = class(TForm)
    AdvSmoothRotaryMenu1: TAdvSmoothRotaryMenu;
    GDIPPictureContainer1: TGDIPPictureContainer;
    AdvSmoothRotaryMenuDialog1: TAdvSmoothRotaryMenuDialog;
    AdvSmoothRotaryMenuDialog2: TAdvSmoothRotaryMenuDialog;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    ComboBox1: TComboBox;
    ListBox1: TListBox;
    TrackBar1: TTrackBar;
    Label1: TLabel;
    TrackBar2: TTrackBar;
    Label2: TLabel;
    TrackBar3: TTrackBar;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox2: TComboBox;
    CheckBox1: TCheckBox;
    CheckBox4: TCheckBox;
    ComboBox3: TComboBox;
    Label6: TLabel;
    GDIPPictureContainer2: TGDIPPictureContainer;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ComboBox4: TComboBox;
    procedure ComboBox1Change(Sender: TObject);
    procedure AdvSmoothRotaryMenu1MenuItemClick(Sender: TObject;
      AItemIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure AdvSmoothRotaryMenuDialog1MenuItemClick(Sender: TObject;
      AItemIndex: Integer);
    procedure AdvSmoothRotaryMenuDialog2MenuItemClick(Sender: TObject;
      AItemIndex: Integer);
    procedure AdvSmoothRotaryMenuDialog2MenuItemDblClick(Sender: TObject;
      AItemIndex: Integer);
    procedure AdvSmoothRotaryMenuDialog2MenuItemHint(Sender: TObject;
      AItemIndex: Integer; var AHint: string);
    procedure AdvSmoothRotaryMenuDialog2MenuItemMouseDown(Sender: TObject;
      AItemIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure AdvSmoothRotaryMenuDialog2MenuItemMouseEnter(Sender: TObject;
      AItemIndex: Integer);
    procedure AdvSmoothRotaryMenuDialog2MenuItemMouseLeave(Sender: TObject;
      AItemIndex: Integer);
    procedure AdvSmoothRotaryMenuDialog2MenuItemMouseUp(Sender: TObject;
      AItemIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure TrackBar3Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure AdvSmoothRotaryMenuDialog2Close(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SpeedButton1MouseEnter(Sender: TObject);
    procedure AdvSmoothRotaryMenuDialog1Close(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form832: TForm832;
  sel, selsub: TRotaryMenuItem;

implementation

{$R *.dfm}

procedure TForm832.AdvSmoothRotaryMenu1MenuItemClick(Sender: TObject;
  AItemIndex: Integer);
begin
  ShowMessage(AdvSmoothRotaryMenu1.Items[AItemIndex].ImageName + ' clicked !');
end;

procedure TForm832.AdvSmoothRotaryMenuDialog1Close(Sender: TObject);
var
  I: Integer;
begin
  SpeedButton1.Caption := 'Select Car';
  for I := 0 to AdvSmoothRotaryMenuDialog1.Items.Count - 1 do
    AdvSmoothRotaryMenuDialog1.Items[I].Enabled := True;
end;

procedure TForm832.AdvSmoothRotaryMenuDialog1MenuItemClick(Sender: TObject;
  AItemIndex: Integer);
var
  it: TRotaryMenuItem;
  I: Integer;
begin
  if AdvSmoothRotaryMenuDialog2.Visible then
  begin
    AdvSmoothRotaryMenuDialog2.ClosePopupMenu;
    for I := 0 to AdvSmoothRotaryMenuDialog1.Items.Count - 1 do
      AdvSmoothRotaryMenuDialog1.Items[I].Enabled := True;
    Exit;
  end;


  AdvSmoothRotaryMenuDialog1.CloseOnDeactivate := False;

  sel := AdvSmoothRotaryMenuDialog1.Items[AItemIndex];
  it := sel;
  AdvSmoothRotaryMenuDialog2.BeginUpdate;
  AdvSmoothRotaryMenuDialog2.DefaultFont.Style := [fsBold];
  AdvSmoothRotaryMenuDialog2.Size := AdvSmoothRotaryMenuDialog1.Size;
  AdvSmoothRotaryMenuDialog2.Width := AdvSmoothRotaryMenuDialog1.Width + AdvSmoothRotaryMenuDialog2.Size * 2;
  AdvSmoothRotaryMenuDialog2.Height := AdvSmoothRotaryMenuDialog1.Height + AdvSmoothRotaryMenuDialog2.Size * 2;
  AdvSmoothRotaryMenuDialog2.StartAngle := it.StartAngle;
  AdvSmoothRotaryMenuDialog2.StopAngle := it.StartAngle + 180;
  AdvSmoothRotaryMenuDialog2.DefaultFill.Assign(it.HoverFill);
  AdvSmoothRotaryMenuDialog2.DefaultFill.ColorTo := it.DownFill.Color;
  AdvSmoothRotaryMenuDialog2.DefaultFill.GradientType := gtVertical;
  AdvSmoothRotaryMenuDialog2.DefaultDownFill.Assign(it.HoverFill);
  AdvSmoothRotaryMenuDialog2.DefaultHoverFill.Assign(it.DownFill);
  AdvSmoothRotaryMenuDialog2.Items.Clear;

  case it.Tag of
    0:
    begin
      AdvSmoothRotaryMenuDialog2.Items.Add.Caption := 'A1';
      AdvSmoothRotaryMenuDialog2.Items.Add.Caption := 'A3';
      AdvSmoothRotaryMenuDialog2.Items.Add.Caption := 'A4';
      AdvSmoothRotaryMenuDialog2.Items.Add.Caption := 'A5';
      AdvSmoothRotaryMenuDialog2.Items.Add.Caption := 'A6';
    end;
    1:
    begin
      AdvSmoothRotaryMenuDialog2.Items.Add.Caption := 'Boxter';
      AdvSmoothRotaryMenuDialog2.Items.Add.Caption := 'Cayman';
      AdvSmoothRotaryMenuDialog2.Items.Add.Caption := 'Cayenne';
      AdvSmoothRotaryMenuDialog2.Items.Add.Caption := '911';
      AdvSmoothRotaryMenuDialog2.Items.Add.Caption := 'Panamera';
    end;
    2:
    begin
      AdvSmoothRotaryMenuDialog2.Items.Add.Caption := 'X3';
      AdvSmoothRotaryMenuDialog2.Items.Add.Caption := 'X5';
      AdvSmoothRotaryMenuDialog2.Items.Add.Caption := 'Z4';
      AdvSmoothRotaryMenuDialog2.Items.Add.Caption := 'M3';
      AdvSmoothRotaryMenuDialog2.Items.Add.Caption := 'Hybrid';
    end;
    3:
    begin
      AdvSmoothRotaryMenuDialog2.Items.Add.Caption := 'A';
      AdvSmoothRotaryMenuDialog2.Items.Add.Caption := 'CL';
      AdvSmoothRotaryMenuDialog2.Items.Add.Caption := 'GL';
      AdvSmoothRotaryMenuDialog2.Items.Add.Caption := 'SLK';
      AdvSmoothRotaryMenuDialog2.Items.Add.Caption := 'SLS AMG';
    end;
  end;

  AdvSmoothRotaryMenuDialog2.EndUpdate;
  AdvSmoothRotaryMenuDialog2.PopupMenuAtControl(SpeedButton1);
  for I := 0 to AdvSmoothRotaryMenuDialog1.Items.Count - 1 do
    AdvSmoothRotaryMenuDialog1.Items[I].Enabled := I = sel.Index;
end;

procedure TForm832.AdvSmoothRotaryMenuDialog2Close(Sender: TObject);
begin
  AdvSmoothRotaryMenuDialog1.CloseOnDeactivate := True;
  if Assigned(sel) and Assigned(selsub) then
  begin
    Label7.Caption := sel.ImageName + ' ' + selsub.Caption;
    Label7.Left := Panel2.Width + (Width - Panel2.Width - Label7.Width) div 2;
  end;

  sel := nil;
  selsub := nil;
end;

procedure TForm832.AdvSmoothRotaryMenuDialog2MenuItemClick(Sender: TObject;
  AItemIndex: Integer);
begin
  selsub := AdvSmoothRotaryMenuDialog2.Items[AItemIndex];
  SpeedButton1Click(Self);
end;

procedure TForm832.AdvSmoothRotaryMenuDialog2MenuItemDblClick(Sender: TObject;
  AItemIndex: Integer);
begin
  ListBox1.Items.Add((Sender as TComponent).Name + ' Dbl Click');
end;

procedure TForm832.AdvSmoothRotaryMenuDialog2MenuItemHint(Sender: TObject;
  AItemIndex: Integer; var AHint: string);
begin
  ListBox1.Items.Add((Sender as TComponent).Name + ' Item Hint');
end;

procedure TForm832.AdvSmoothRotaryMenuDialog2MenuItemMouseDown(Sender: TObject;
  AItemIndex: Integer; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ListBox1.Items.Add((Sender as TComponent).Name + ' Mouse Down');
end;

procedure TForm832.AdvSmoothRotaryMenuDialog2MenuItemMouseEnter(Sender: TObject;
  AItemIndex: Integer);
begin
  ListBox1.Items.Add((Sender as TComponent).Name + ' ' + AdvSmoothRotaryMenu1.Items[AItemIndex].ImageName+ ' Mouse Enter');
end;

procedure TForm832.AdvSmoothRotaryMenuDialog2MenuItemMouseLeave(Sender: TObject;
  AItemIndex: Integer);
begin
  ListBox1.Items.Add((Sender as TComponent).Name + ' ' + AdvSmoothRotaryMenu1.Items[AItemIndex].ImageName+ ' Mouse Leave');
end;

procedure TForm832.AdvSmoothRotaryMenuDialog2MenuItemMouseUp(Sender: TObject;
  AItemIndex: Integer; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ListBox1.Items.Add((Sender as TComponent).Name + ' Mouse Up');
end;

procedure TForm832.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
    AdvSmoothRotaryMenuDialog1.AnimationMode := AdvSmoothRotaryMenuDialog1.AnimationMode + [amSize]
  else
    AdvSmoothRotaryMenuDialog1.AnimationMode := AdvSmoothRotaryMenuDialog1.AnimationMode - [amSize];
end;

procedure TForm832.CheckBox4Click(Sender: TObject);
begin
  if CheckBox4.Checked then
    AdvSmoothRotaryMenuDialog1.AnimationMode := AdvSmoothRotaryMenuDialog1.AnimationMode + [amAngle]
  else
    AdvSmoothRotaryMenuDialog1.AnimationMode := AdvSmoothRotaryMenuDialog1.AnimationMode - [amAngle];

  AdvSmoothRotaryMenuDialog2.AnimationMode := AdvSmoothRotaryMenuDialog1.AnimationMode;
end;

procedure TForm832.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
  0: AdvSmoothRotaryMenu1.SetDefaultStyle;
  1: AdvSmoothRotaryMenu1.SetComponentStyle(tsOffice2003Blue);
  2: AdvSmoothRotaryMenu1.SetComponentStyle(tsOffice2003Silver);
  3: AdvSmoothRotaryMenu1.SetComponentStyle(tsOffice2003Olive);
  4: AdvSmoothRotaryMenu1.SetComponentStyle(tsOffice2003Classic);
  5: AdvSmoothRotaryMenu1.SetComponentStyle(tsOffice2007Luna);
  6: AdvSmoothRotaryMenu1.SetComponentStyle(tsOffice2007Obsidian);
  7: AdvSmoothRotaryMenu1.SetComponentStyle(tsOffice2007Silver);
  8: AdvSmoothRotaryMenu1.SetComponentStyle(tsOffice2010Blue);
  9: AdvSmoothRotaryMenu1.SetComponentStyle(tsOffice2010Silver);
  10: AdvSmoothRotaryMenu1.SetComponentStyle(tsOffice2010Black);
  11: AdvSmoothRotaryMenu1.SetComponentStyle(tsOffice2013White);
  12: AdvSmoothRotaryMenu1.SetComponentStyle(tsOffice2013LightGray);
  13: AdvSmoothRotaryMenu1.SetComponentStyle(tsOffice2013Gray);
  14: AdvSmoothRotaryMenu1.SetComponentStyle(tsWhidbey);
  15: AdvSmoothRotaryMenu1.SetComponentStyle(tsWindowsXP);
  16: AdvSmoothRotaryMenu1.SetComponentStyle(tsWindowsVista);
  17: AdvSmoothRotaryMenu1.SetComponentStyle(tsWindows7);
  18: AdvSmoothRotaryMenu1.SetComponentStyle(tsWindows8);
  19: AdvSmoothRotaryMenu1.SetComponentStyle(tsTerminal);
  end;
end;

procedure TForm832.ComboBox2Change(Sender: TObject);
begin
  AdvSmoothRotaryMenu1.Layout := TRotaryMenuLayout(ComboBox2.ItemIndex);
  case AdvSmoothRotaryMenu1.Layout of
    rmlCircularDonut, rmlCircularPie:
    begin
      AdvSmoothRotaryMenu1.Left := 375;
      AdvSmoothRotaryMenu1.Top := 47;
      AdvSmoothRotaryMenu1.Width := 250;
      AdvSmoothRotaryMenu1.Height := 250;
    end;
    rmlHorizontal:
    begin
      AdvSmoothRotaryMenu1.Height := 45;
      AdvSmoothRotaryMenu1.Width := 350;
      AdvSmoothRotaryMenu1.Top := 150;
      AdvSmoothRotaryMenu1.Left := Panel2.Width + (Width - Panel2.Width - AdvSmoothRotaryMenu1.Width) div 2;
    end;
    rmlVertical:
    begin
      AdvSmoothRotaryMenu1.Top := 50;
      AdvSmoothRotaryMenu1.Height := 350;
      AdvSmoothRotaryMenu1.Width := 45;
      AdvSmoothRotaryMenu1.Left := Panel2.Width + (Width - Panel2.Width - AdvSmoothRotaryMenu1.Width) div 2;
    end;
  end;

end;

procedure TForm832.ComboBox3Change(Sender: TObject);
begin
  AdvSmoothRotaryMenuDialog1.AnimationType := TRotaryMenuAnimationType(ComboBox3.ItemIndex);
  AdvSmoothRotaryMenuDialog2.AnimationType := TRotaryMenuAnimationType(ComboBox3.ItemIndex);
end;

procedure TForm832.FormCreate(Sender: TObject);
var
  I: Integer;
  it: TRotaryMenuItem;
begin
  DoubleBuffered := True;
  AdvSmoothRotaryMenu1.Items.BeginUpdate;
  AdvSmoothRotaryMenu1.Items.Clear;
  for I := 0 to GDIPPictureContainer1.Items.Count - 1 do
  begin
    it := AdvSmoothRotaryMenu1.Items.Add;
    it.ImageName := GDIPPictureContainer1.Items[I].Name;
    it.ImageWidth := 32;
  end;
  AdvSmoothRotaryMenu1.Items.EndUpdate;

  AdvSmoothRotaryMenuDialog1.Items.BeginUpdate;
  AdvSmoothRotaryMenuDialog1.Size := 40;
  AdvSmoothRotaryMenuDialog1.Width := 250;
  AdvSmoothRotaryMenuDialog1.Height := 250;
  AdvSmoothRotaryMenuDialog1.Items.Clear;
  it := AdvSmoothRotaryMenuDialog1.Items.Add;
  it.Fill.Color := RGB(255,128,0);
  it.Fill.GradientType := gtSolid;
  it.Fill.BorderColor := clBlack;
  it.DownFill.Assign(it.Fill);
  it.HoverFill.Assign(it.Fill);
  it.HoverFill.Color := RGB(255,219,183);
  it.Tag := 0;
  it.ImageName := 'Audi';
  it.ImageWidth := 50;
  it := AdvSmoothRotaryMenuDialog1.Items.Add;
  it.Fill.Color := RGB(115,230,0);
  it.Fill.GradientType := gtSolid;
  it.Fill.BorderColor := clBlack;
  it.DownFill.Assign(it.Fill);
  it.HoverFill.Assign(it.Fill);
  it.HoverFill.Color := RGB(226,255,198);
  it.Tag := 1;
  it.ImageName := 'Porsche';
  it.ImageWidth := 35;
  it := AdvSmoothRotaryMenuDialog1.Items.Add;
  it.Fill.Color := RGB(0,165,244);
  it.Fill.GradientType := gtSolid;
  it.Fill.BorderColor := clBlack;
  it.DownFill.Assign(it.Fill);
  it.HoverFill.Assign(it.Fill);
  it.HoverFill.Color := RGB(174,228,255);
  it.Tag := 2;
  it.ImageName := 'BMW';
  it.ImageWidth := 50;
  it := AdvSmoothRotaryMenuDialog1.Items.Add;
  it.Fill.Color := RGB(234,234,0);
  it.Fill.GradientType := gtSolid;
  it.Fill.BorderColor := clBlack;
  it.DownFill.Assign(it.Fill);
  it.HoverFill.Assign(it.Fill);
  it.HoverFill.Color := RGB(255, 255, 206);
  it.Tag := 3;
  it.ImageName := 'Mercedes';
  it.ImageWidth := 45;

  AdvSmoothRotaryMenuDialog1.StopAngle := 360;
  AdvSmoothRotaryMenuDialog1.Size := 50;
  AdvSmoothRotaryMenuDialog1.StartAngle := 180;
  AdvSmoothRotaryMenuDialog1.Items.EndUpdate;


  AdvSmoothRotaryMenuDialog1.FormStyle := fsNormal;
  AdvSmoothRotaryMenuDialog2.FormStyle := fsStayOnTop;


  TrackBar1.Position := Round(AdvSmoothRotaryMenu1.StartAngle);
  TrackBar2.Position := Round(AdvSmoothRotaryMenu1.StopAngle);
  TrackBar3.Position := Round(AdvSmoothRotaryMenu1.Size);
end;

procedure TForm832.FormResize(Sender: TObject);
begin
  SpeedButton1.Left := Panel2.Width + (Width - Panel2.Width - SpeedButton1.Width) div 2;
  Label7.Left := Panel2.Width + (Width - Panel2.Width - Label7.Width) div 2;
end;

procedure TForm832.SpeedButton1Click(Sender: TObject);
begin
  if SpeedButton1.Caption = 'Close' then
  begin
    AdvSmoothRotaryMenuDialog2.ClosePopupMenu;
    AdvSmoothRotaryMenuDialog1.ClosePopupMenu;
  end
  else
  begin
    AdvSmoothRotaryMenuDialog1.PopupMenuAtControl(SpeedButton1);
    SpeedButton1.Caption := 'Close';
  end;
end;

procedure TForm832.SpeedButton1MouseEnter(Sender: TObject);
begin
  if (ComboBox4.ItemIndex = 1) and not AdvSmoothRotaryMenuDialog1.Visible then
    SpeedButton1Click(Self);
end;

procedure TForm832.TrackBar1Change(Sender: TObject);
begin
  AdvSmoothRotaryMenu1.StartAngle := TrackBar1.Position;
end;

procedure TForm832.TrackBar2Change(Sender: TObject);
begin
  AdvSmoothRotaryMenu1.StopAngle := TrackBar2.Position;
end;

procedure TForm832.TrackBar3Change(Sender: TObject);
begin
  case AdvSmoothRotaryMenu1.Layout of
    rmlCircularDonut, rmlCircularPie: AdvSmoothRotaryMenu1.Size := TrackBar3.Position;
    rmlHorizontal: AdvSmoothRotaryMenu1.Height := TrackBar3.Position;
    rmlVertical: AdvSmoothRotaryMenu1.Width := TrackBar3.Position;
  end;
end;

end.

