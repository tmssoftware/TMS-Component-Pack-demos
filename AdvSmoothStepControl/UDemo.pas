{********************************************************************}
{ TMS TAdvSmoothStepControl Demo                                     }
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
  Dialogs, StdCtrls, AdvSmoothStepControl, AdvStyleIF, GDIPPictureContainer,
  ExtCtrls;

type
  TForm252 = class(TForm)
    ComboBox1: TComboBox;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    Button3: TButton;
    Label3: TLabel;
    ComboBox2: TComboBox;
    Label4: TLabel;
    ComboBox3: TComboBox;
    AdvSmoothStepControl2: TAdvSmoothStepControl;
    Label5: TLabel;
    GDIPPictureContainer1: TGDIPPictureContainer;
    Timer1: TTimer;
    AdvSmoothStepControl1: TAdvSmoothStepControl;
    CheckBox1: TCheckBox;
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form252: TForm252;

implementation

{$R *.dfm}

procedure TForm252.Button1Click(Sender: TObject);
begin
  AdvSmoothStepControl1.UseDefaultStyle;
end;

procedure TForm252.Button2Click(Sender: TObject);
begin
  AdvSmoothStepControl1.PreviousStep;
end;

procedure TForm252.Button3Click(Sender: TObject);
begin
  AdvSmoothStepControl1.NextStep;
end;

procedure TForm252.CheckBox1Click(Sender: TObject);
begin
  Timer1.Enabled := CheckBox1.Checked;
end;

procedure TForm252.ComboBox1Change(Sender: TObject);
var
  s: TTMSStyle;
begin
  s := tsOffice2003Blue;
  case ComboBox1.ItemIndex of
    1: s := tsOffice2003Silver;
    2: s := tsOffice2003Olive;
    3: s := tsOffice2003Classic;
    4: s := tsOffice2007Luna;
    5: s := tsOffice2007Silver;
    6: s := tsOffice2007Obsidian;
    7: s := tsoffice2010Blue;
    8: s := tsoffice2010Silver;
    9: s := tsoffice2010Black;
    10: s := tsWindowsXP;
    11: s := tsWhidbey;
    12: s := tsWindowsVista;
    13: s := tsWindows7;
    14: s := tsTerminal;
    15: s := tsWindows8;
  end;

  AdvSmoothStepControl1.SetComponentStyle(s);
end;

procedure TForm252.ComboBox2Change(Sender: TObject);
var
  lt: TStepActionsLayout;
begin
  lt := salPointer;
  case ComboBox2.ItemIndex of
    1: lt := salSquare;
    2: lt := salProgress;
    3: lt := salNone;
  end;

  AdvSmoothStepControl1.Appearance.Layout := lt;

  if AdvSmoothStepControl1.Appearance.Layout = salProgress then
    AdvSmoothStepControl1.Height := 117
  else
    AdvSmoothStepControl1.Height := 65;
end;

procedure TForm252.ComboBox3Change(Sender: TObject);
var
  sp: TStepActionsShape;
begin
  sp := sasCircle;
  case ComboBox3.ItemIndex of
    1: sp := sasSquare;
    2: sp := sasTriangle;
    3: sp := sasNone;
  end;

  AdvSmoothStepControl1.Appearance.ShapeStyle := sp;
end;

procedure TForm252.FormCreate(Sender: TObject);
begin
  AdvSmoothStepControl1.Appearance.SeparatorWidth := 10;
  AdvSmoothStepControl1.UseDefaultStyle;
  AdvSmoothStepControl2.Appearance.DescriptionLayout := dlBottom;
  AdvSmoothStepControl2.Appearance.DescriptionSize := 75;
  AdvSmoothStepControl2.Appearance.ShapeStyle := sasNone;
  AdvSmoothStepControl2.Appearance.Layout := salPointer;
  AdvSmoothStepControl2.Appearance.LayoutSpacingHorizontal := 7;
//  AdvSmoothStepControl2.Appearance.LayoutSpacingHorizontal := 5;
  AdvSmoothStepControl2.Appearance.InActiveCaptionFont.Style := [fsBold];
  AdvSmoothStepControl2.Appearance.ActiveCaptionFont.Assign(AdvSmoothStepControl2.Appearance.InActiveCaptionFont);
  AdvSmoothStepControl2.Appearance.ProcessedCaptionFont.Assign(AdvSmoothStepControl2.Appearance.InActiveCaptionFont);
  with AdvSmoothStepControl2.StepActions.Add do
  begin
    InActiveContent.CaptionLocation := tlCenterLeft;
    InActiveContent.ImageName := '1';
    InActiveContent.Caption := 'Browse folders';
    InActiveContent.Description.Text := 'Browse through folders to select the correct file(s) you want to add to the <b>backup</b>.';
    ActiveContent.Assign(InActiveContent);
    ProcessedContent.Assign(InActiveContent);
  end;

  with AdvSmoothStepControl2.StepActions.Add do
  begin
    InActiveContent.CaptionLocation := tlCenterLeft;
    InActiveContent.ImageName := '2';
    InActiveContent.Caption := 'Select files';
    InActiveContent.Description.Text := 'Select the file(s) to add to the <b>backup</b>.';
    ActiveContent.Assign(InActiveContent);
    ProcessedContent.Assign(InActiveContent);
  end;

  with AdvSmoothStepControl2.StepActions.Add do
  begin
    InActiveContent.CaptionLocation := tlCenterLeft;
    InActiveContent.ImageName := '3';
    InActiveContent.Caption := 'Add memo';
    InActiveContent.Description.Text := 'Add a memo to the <b>backup</b> to quickly recoqnize the content.';
    ActiveContent.Assign(InActiveContent);
    ProcessedContent.Assign(InActiveContent);
  end;

  with AdvSmoothStepControl2.StepActions.Add do
  begin
    InActiveContent.CaptionLocation := tlCenterLeft;
    InActiveContent.ImageName := '4';
    InActiveContent.Caption := 'Burn to disc';
    InActiveContent.Description.Text := 'Burn the <b>backup</b> to disc';
    ActiveContent.Assign(InActiveContent);
    ProcessedContent.Assign(InActiveContent);
  end;

  with AdvSmoothStepControl2.StepActions.Add do
  begin
    InActiveContent.CaptionLocation := tlCenterLeft;
    InActiveContent.ImageName := '5';
    InActiveContent.Caption := 'Upload to FTP';
    InActiveContent.Description.Text := 'Upload the <b>backup</b> to an FTP server.';
    ActiveContent.Assign(InActiveContent);
    ProcessedContent.Assign(InActiveContent);
  end;

  AdvSmoothStepControl1.ActiveStep := 0;
  AdvSmoothStepControl2.ActiveStep := 1;

  ComboBox1.ItemIndex := 15;
  AdvSmoothStepControl1.SetComponentStyle(tswindows8);

end;

procedure TForm252.Timer1Timer(Sender: TObject);
begin
  if AdvSmoothStepControl2.ActiveStep = AdvSmoothStepControl2.StepActions.Count then
    AdvSmoothStepControl2.ActiveStep := -1
  else
    AdvSmoothStepControl2.NextStep;

  ComboBox1.ItemIndex := Random(ComboBox1.Items.Count);
  ComboBox2.ItemIndex := Random(ComboBox2.Items.Count);
  ComboBox3.ItemIndex := Random(ComboBox3.Items.Count);

  ComboBox1Change(ComboBox1);
  ComboBox2Change(ComboBox2);
  ComboBox3Change(ComboBox3);
end;

end.
