unit AppUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ComCtrls, EditBtn, DBPlannerDatePicker,
  ExtCtrls, AdvCombo, ImagePicker, PlannerDatePicker, HTMLText,
  PictureContainer, Shader;

type
  TAppointForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    StartTime: TDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    EndTime: TDateTimePicker;
    ImagePicker: TImagePicker;
    Label6: TLabel;
    CBShape: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    PanelColor: TPanel;
    OKBtn: TButton;
    CancBtn: TButton;
    ColorDialog1: TColorDialog;
    EdSubject: TEdit;
    Notes: TMemo;
    PlanDate: TDateTimePicker;
    PictureContainer1: TPictureContainer;
    HTMLStaticText1: THTMLStaticText;
    procedure PanelColorClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AppointForm: TAppointForm;

implementation

uses DM;

{$R *.DFM}

procedure TAppointForm.PanelColorClick(Sender: TObject);
begin
  ColorDialog1.Color := PanelColor.Color;
  if ColorDialog1.Execute then
    PanelColor.Color := ColorDialog1.Color;
end;

procedure TAppointForm.FormShow(Sender: TObject);
begin
  HTMLStaticText1.HTMLText.Clear;
  if (AppointForm.Tag = 0) then
  begin
    AppointForm.Caption := 'New appointment';
    HTMLStaticText1.HTMLText.Add('  <IMG src="calendar">   <FONT face="Verdana">New appointment</FONT>');
  end
  else
  begin
    AppointForm.Caption := 'Edit appointment';
    HTMLStaticText1.HTMLText.Add('  <IMG src="clock">   <FONT face="Verdana">Edit appointment</FONT>');
  end;
  if (PlanDate.Date < Date) or ((PlanDate.Date = Date) and (StartTime.Time < Time)) then
  begin
    HTMLStaticText1.HTMLText.Clear;
    HTMLStaticText1.HTMLText.Add('  <IMG src="caution">   <FONT face="Verdana">' +
                                 'Warning: this appointment occurs in the past</FONT>');
  end;
end;

end.
