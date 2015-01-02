unit UDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvSmoothEdit, AdvSmoothEditButton, AdvSmoothDatePicker,
  AdvSmoothCalendar, AdvStyleIF, DateUtils, ComCtrls;

type
  TForm93 = class(TForm)
    AdvSmoothCalendar1: TAdvSmoothCalendar;
    AdvSmoothCalendar2: TAdvSmoothCalendar;
    AdvSmoothDatePicker1: TAdvSmoothDatePicker;
    AdvSmoothDatePicker2: TAdvSmoothDatePicker;
    ComboBox1: TComboBox;
    Label9: TLabel;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    CheckBox2: TCheckBox;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvSmoothCalendar1MonthChanged(Sender: TObject; Month: Integer);
    procedure AdvSmoothCalendar1SelectDate(Sender: TObject;
      Mode: TAdvSmoothCalendarDateMode; Date: TDateTime);
    procedure CheckBox1Click(Sender: TObject);
    procedure AdvSmoothCalendar1SelectMultiDate(Sender: TObject;
      Mode: TAdvSmoothCalendarDateMode; StartDate, EndDate: TDateTime);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CheckSeason(Month: integer);
  end;

var
  Form93: TForm93;

implementation

{$R *.dfm}
{$R UDemo.res}

procedure TForm93.AdvSmoothCalendar1MonthChanged(Sender: TObject;
  Month: Integer);
begin
  CheckSeason(Month);
end;

procedure TForm93.AdvSmoothCalendar1SelectDate(Sender: TObject;
  Mode: TAdvSmoothCalendarDateMode; Date: TDateTime);
begin
  Label1.Caption := 'Start date: ' + FormatDateTime('dd/mm/yyyy', AdvSmoothCalendar1.StartDate);
  Label2.Caption := 'End date: ' + FormatDateTime('dd/mm/yyyy', AdvSmoothCalendar1.EndDate);
  CheckSeason(MonthOf(Date));
end;

procedure TForm93.AdvSmoothCalendar1SelectMultiDate(Sender: TObject;
  Mode: TAdvSmoothCalendarDateMode; StartDate, EndDate: TDateTime);
begin
  Label1.Caption := 'Start date: ' + FormatDateTime('dd/mm/yyyy', StartDate);
  Label2.Caption := 'End date: ' + FormatDateTime('dd/mm/yyyy', EndDate);
end;

procedure TForm93.CheckBox1Click(Sender: TObject);
begin
  AdvSmoothCalendar1.MultiSelect := CheckBox1.Checked;
end;

procedure TForm93.CheckBox2Click(Sender: TObject);
begin
  AdvSmoothcalendar1.Animation := CheckBox2.Checked;
end;

procedure TForm93.CheckSeason(Month: integer);
begin
  AdvSmoothCalendar1.Fill.BackGroundPicture := nil;
    
  case Month of
    1:AdvSmoothCalendar1.Fill.BackGroundPicture.LoadFromResourceName(hinstance, 'winter');
    2:AdvSmoothCalendar1.Fill.BackGroundPicture.LoadFromResourceName(hinstance, 'winter');
    3:AdvSmoothCalendar1.Fill.BackGroundPicture.LoadFromResourceName(hinstance, 'spring');
    4:AdvSmoothCalendar1.Fill.BackGroundPicture.LoadFromResourceName(hinstance, 'spring');
    5:AdvSmoothCalendar1.Fill.BackGroundPicture.LoadFromResourceName(hinstance, 'spring');
    6:AdvSmoothCalendar1.Fill.BackGroundPicture.LoadFromResourceName(hinstance, 'summer');
    7:AdvSmoothCalendar1.Fill.BackGroundPicture.LoadFromResourceName(hinstance, 'summer');
    8:AdvSmoothCalendar1.Fill.BackGroundPicture.LoadFromResourceName(hinstance, 'summer');
    9:AdvSmoothCalendar1.Fill.BackGroundPicture.LoadFromResourceName(hinstance, 'autumn');
    10:AdvSmoothCalendar1.Fill.BackGroundPicture.LoadFromResourceName(hinstance, 'autumn');
    11:AdvSmoothCalendar1.Fill.BackGroundPicture.LoadFromResourceName(hinstance, 'autumn');
    12:AdvSmoothCalendar1.Fill.BackGroundPicture.LoadFromResourceName(hinstance, 'winter');
  end;
  AdvSmoothDatePicker1.Calendar.Fill.Assign(AdvSmoothCalendar1.Fill);
end;

procedure TForm93.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0:
    begin
      AdvSmoothCalendar2.SetComponentStyle(tsOffice2003Blue);
      AdvSmoothDatePicker2.SetComponentStyle(tsOffice2003Blue);
    end;
    1:
    begin
      AdvSmoothCalendar2.SetComponentStyle(tsOffice2003Silver);
      AdvSmoothDatePicker2.SetComponentStyle(tsOffice2003Silver);
    end;
    2:
    begin
      AdvSmoothCalendar2.SetComponentStyle(tsOffice2003Olive);
      AdvSmoothDatePicker2.SetComponentStyle(tsOffice2003Olive);
    end;
    3:
    begin
      AdvSmoothCalendar2.SetComponentStyle(tsOffice2003Classic);
      AdvSmoothDatePicker2.SetComponentStyle(tsOffice2003Classic);
    end;
    4:
    begin
      AdvSmoothCalendar2.SetComponentStyle(tsOffice2007Luna);
      AdvSmoothDatePicker2.SetComponentStyle(tsOffice2007Luna);
    end;
    5:
    begin
      AdvSmoothCalendar2.SetComponentStyle(tsOffice2007Obsidian);
      AdvSmoothDatePicker2.SetComponentStyle(tsOffice2007Obsidian);
    end;
    6:
    begin
      AdvSmoothCalendar2.SetComponentStyle(tsOffice2007Silver);
      AdvSmoothDatePicker2.SetComponentStyle(tsOffice2007Silver);
    end;
  end;
end;

procedure TForm93.FormCreate(Sender: TObject);
begin
  (* force US names
  ShortDayNames[1] := 'Su';
  ShortDayNames[2] := 'Mo';
  ShortDayNames[3] := 'Tu';
  ShortDayNames[4] := 'We';
  ShortDayNames[5] := 'Th';
  ShortDayNames[6] := 'Fr';
  ShortDayNames[7] := 'Sa';
  LongMonthNames[7] := 'July';
  *)

  AdvSmoothDatePicker1.Calendar.Fill.Assign(AdvSmoothCalendar1.Fill);
  AdvSmoothDatePicker1.Calendar.DateAppearance.Assign(AdvSmoothCalendar1.DateAppearance);
  AdvSmoothDatePicker1.Calendar.Footer.Assign(AdvSmoothCalendar1.Footer);
  AdvSmoothDatePicker1.Calendar.Header.Assign(AdvSmoothCalendar1.Header);
  ComboBox1.ItemIndex := 4;
  AdvSmoothCalendar2.SetComponentStyle(tsOffice2007Luna);
  AdvSmoothDatePicker2.SetComponentStyle(tsOffice2007Luna);

  CheckSeason(MonthOf(Now));

  AdvSmoothCalendar1.Footer.Caption := 'Today : ' + FormatDateTime('dd/mm/yyyy', now);    
end;

end.
