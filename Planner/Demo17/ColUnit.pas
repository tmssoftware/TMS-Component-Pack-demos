unit ColUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, IniFiles;

type
  TColorsForm = class(TForm)
    OKBtn: TButton;
    CancBtn: TButton;
    ColorDialog1: TColorDialog;
    DefaultBtn: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Bevel1: TBevel;
    Label7: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    PanelInactive: TPanel;
    PanelActive: TPanel;
    PanelCurrent: TPanel;
    PanelCurrentItem: TPanel;
    PanelSidebar: TPanel;
    PanelOccupied: TPanel;
    PanelIColor: TPanel;
    PanelISelected: TPanel;
    StaticText1: TStaticText;
    PanelICaption: TPanel;
    PanelITrack: TPanel;
    PanelTrack: TPanel;
    CBBump: TCheckBox;
    TabSheet2: TTabSheet;
    Label11: TLabel;
    ActiveDayPanel: TPanel;
    Label13: TLabel;
    EventColPanel: TPanel;
    CBShape: TComboBox;
    Label14: TLabel;
    CBWeek: TCheckBox;
    SaveDefaultBtn: TButton;
    procedure PanelInactiveClick(Sender: TObject);
    procedure PanelActiveClick(Sender: TObject);
    procedure PanelCurrentClick(Sender: TObject);
    procedure PanelCurrentItemClick(Sender: TObject);
    procedure PanelSidebarClick(Sender: TObject);
    procedure PanelOccupiedClick(Sender: TObject);
    procedure PanelIColorClick(Sender: TObject);
    procedure PanelISelectedClick(Sender: TObject);
    procedure PanelICaptionClick(Sender: TObject);
    procedure PanelITrackClick(Sender: TObject);
    procedure DefaultBtnClick(Sender: TObject);
    procedure PanelTrackClick(Sender: TObject);
    procedure ActiveDayPanelClick(Sender: TObject);
    procedure EventColPanelClick(Sender: TObject);
    procedure SaveDefaultBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ColorsForm: TColorsForm;

implementation

{$R *.DFM}

procedure TColorsForm.PanelInactiveClick(Sender: TObject);
begin
  ColorDialog1.Color := PanelInactive.Color;
  if ColorDialog1.Execute then
    PanelInactive.Color := ColorDialog1.Color;
end;

procedure TColorsForm.PanelActiveClick(Sender: TObject);
begin
  ColorDialog1.Color := PanelActive.Color;
  if ColorDialog1.Execute then
    PanelActive.Color := ColorDialog1.Color;
end;

procedure TColorsForm.PanelCurrentClick(Sender: TObject);
begin
  ColorDialog1.Color := PanelCurrent.Color;
  if ColorDialog1.Execute then
    PanelCurrent.Color := ColorDialog1.Color;
end;

procedure TColorsForm.PanelCurrentItemClick(Sender: TObject);
begin
  ColorDialog1.Color := PanelCurrentItem.Color;
  if ColorDialog1.Execute then
    PanelCurrentItem.Color := ColorDialog1.Color;
end;

procedure TColorsForm.PanelSidebarClick(Sender: TObject);
begin
  ColorDialog1.Color := PanelSidebar.Color;
  if ColorDialog1.Execute then
    PanelSidebar.Color := ColorDialog1.Color;
end;

procedure TColorsForm.PanelOccupiedClick(Sender: TObject);
begin
  ColorDialog1.Color := PanelOccupied.Color;
  if ColorDialog1.Execute then
    PanelOccupied.Color := ColorDialog1.Color;
end;

procedure TColorsForm.PanelIColorClick(Sender: TObject);
begin
  ColorDialog1.Color := PanelIColor.Color;
  if ColorDialog1.Execute then
    PanelIColor.Color := ColorDialog1.Color;
end;

procedure TColorsForm.PanelISelectedClick(Sender: TObject);
begin
  ColorDialog1.Color := PanelISelected.Color;
  if ColorDialog1.Execute then
    PanelISelected.Color := ColorDialog1.Color;
end;

procedure TColorsForm.PanelICaptionClick(Sender: TObject);
begin
  ColorDialog1.Color := PanelICaption.Color;
  if ColorDialog1.Execute then
    PanelICaption.Color := ColorDialog1.Color;
end;

procedure TColorsForm.PanelITrackClick(Sender: TObject);
begin
  ColorDialog1.Color := PanelITrack.Color;
  if ColorDialog1.Execute then
    PanelITrack.Color := ColorDialog1.Color;
end;

procedure TColorsForm.PanelTrackClick(Sender: TObject);
begin
  ColorDialog1.Color := PanelTrack.Color;
  if ColorDialog1.Execute then
    PanelTrack.Color := ColorDialog1.Color;
end;

procedure TColorsForm.DefaultBtnClick(Sender: TObject);
begin
  if MessageDlg('Restore defaults ?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
    PanelInactive.Color    := clSilver;
    PanelActive.Color      := clWhite;
    PanelCurrent.Color     := clYellow;
    PanelCurrentItem.Color := clLime;
    PanelSidebar.Color     := clBtnFace;
    PanelOccupied.Color    := clBlue;
    PanelIColor.Color      := clWhite;
    PanelISelected.Color   := clInfoBk;
    PanelICaption.Color    := clWhite;
    PanelITrack.Color      := clBlue;
    PanelTrack.Color       := clBlue;
    CBBump.Checked         := False;
    // calendar
    ActiveDayPanel.Color   := clLime;
    EventColPanel.Color    := clYellow;
    CBWeek.Checked         := True;
    CBShape.ItemIndex      := 0;
  end;
end;

procedure TColorsForm.ActiveDayPanelClick(Sender: TObject);
begin
  ColorDialog1.Color := ActiveDayPanel.Color;
  if ColorDialog1.Execute then
    ActiveDayPanel.Color := ColorDialog1.Color;
end;

procedure TColorsForm.EventColPanelClick(Sender: TObject);
begin
  ColorDialog1.Color := EventColPanel.Color;
  if ColorDialog1.Execute then
    EventColPanel.Color := ColorDialog1.Color;
end;

procedure TColorsForm.SaveDefaultBtnClick(Sender: TObject);
var
  IniFile: TIniFile;
begin
  // save current settings as default in default.ini
  IniFile := TIniFile.Create(GetCurrentDir + '\default.ini');
  try
    IniFile.WriteInteger('Demo', 'NonActive', PanelInactive.Color);
    IniFile.WriteInteger('Demo', 'Active', PanelActive.Color);
    IniFile.WriteInteger('Demo', 'Current', PanelCurrent.Color);
    IniFile.WriteInteger('Demo', 'CurrentItem', PanelCurrentItem.Color);
    IniFile.WriteInteger('Demo', 'Sidebar', PanelSidebar.Color);
    IniFile.WriteInteger('Demo', 'Occupied', PanelOccupied.Color);
    IniFile.WriteInteger('Demo', 'Color', PanelIColor.Color);
    IniFile.WriteInteger('Demo', 'SelectColor', PanelISelected.Color);
    IniFile.WriteInteger('Demo', 'CaptionBkg', PanelICaption.Color);
    IniFile.WriteInteger('Demo', 'DITrackColor', PanelITrack.Color);
    IniFile.WriteInteger('Demo', 'TrackColor', PanelTrack.Color);
    IniFile.WriteBool('Demo', 'TrackBump', CBBump.Checked);
    // calendar
    IniFile.WriteInteger('Demo', 'ActiveDayColor', ActiveDayPanel.Color);
    IniFile.WriteInteger('Demo', 'EventColor', EventColPanel.Color);
    IniFile.WriteBool('Demo', 'ShowWeeks', CBWeek.Checked);
    IniFile.WriteInteger('Demo', 'EventMarkerShape', CBShape.ItemIndex);
  finally
    IniFile.Free;
  end;
end;

end.
