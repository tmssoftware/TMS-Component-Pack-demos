{********************************************************************}
{ TMS TAdvSmoothCalendarGroup Demo                                   }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2014                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit UDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, ExtCtrls, AdvStyleIf,
  AdvSmoothCalendarGroup, GDIPFill, AdvSmoothCalendar, DateUtils, AdvGDIP,
  GDIPPictureContainer, Buttons;

type
  TForm790 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    AdvSmoothCalendarGroup1: TAdvSmoothCalendarGroup;
    RadioGroup1: TRadioGroup;
    SpeedButton1: TSpeedButton;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure AdvSmoothCalendarGroup1DateHint(Sender: TObject; Date: TDateTime;
      var hint: string);
    procedure AdvSmoothCalendarGroup1DateFill(Sender: TObject; AFill: TGDIPFill;
      AFont: TFont; Date: TDateTime; DateKind: TAdvSmoothCalendarDateKind);
    procedure AdvSmoothCalendarGroup1DateStatus(Sender: TObject;
      Date: TDateTime; var StatusMessage: string; Fill: TGDIPStatus;
      var OffsetX, OffsetY: Integer);
    procedure FormCreate(Sender: TObject);
    procedure AdvSmoothCalendarGroup1DateStatusClick(Sender: TObject;
      StatusMessage: string; Date: TDateTime);
    procedure RadioGroup1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form790: TForm790;

implementation

{$R *.dfm}

procedure TForm790.AdvSmoothCalendarGroup1DateFill(Sender: TObject;
  AFill: TGDIPFill; AFont: TFont; Date: TDateTime;
  DateKind: TAdvSmoothCalendarDateKind);
begin
  if Date = int(Now) then
    AFill.Color := clRed

  else if Date = int(Now) + 10 then
  begin
    AFill.Color := clGreen;
    AFont.Color := clWhite;
    AFont.Style := [fsBold];
  end
  else if Date = int(Now) - 100 then
  begin
    AFill.Color := clMaroon;
    AFont.Color := clWhite;
    AFont.Style := [fsBold];
  end
  else if Date = int(Now) - 150 then
  begin
    AFill.Color := clFuchsia;
    AFont.Style := [fsBold];
  end
  else if Date = int(Now) + 10 then
  begin
    AFill.Color := clGreen;
    AFont.Color := clWhite;
    AFont.Style := [fsBold];
  end
  else if Date = int(Now) + 20 then
    AFill.Color := clLime
  else if Date = int(Now) + 55 then
    AFill.Color := clGray
  else if Date = int(Now) + 66 then
    AFill.Color := clSilver
  else if Date = int(Now) + 40 then
  begin
    AFill.Color := clBlue;
    AFont.Color := clWhite;
  end
  else if Date = int(Now) + 200 then
    AFill.Color := clCream
  else if Date = int(Now) - 210 then
  begin
    AFont.Color := clBlue;
    AFill.BorderColor := clBlue;
  end
  else if Date = int(Now) - 240 then
  begin
    AFill.BorderColor := clRed;
    AFont.Color := clRed;
  end
  else if Date = int(Now) - 53 then
    AFill.BorderColor := clYellow;
end;

procedure TForm790.AdvSmoothCalendarGroup1DateHint(Sender: TObject;
  Date: TDateTime; var hint: string);
begin
  if Date = int(Now) then
    Hint := 'Meeting with Nancy'
  else if Date = int(Now) + 10 then
    Hint := 'Playing golf'
  else if Date = int(Now) + 66 then
    Hint := 'Deadline for project X'
  else if Date = int(Now) + 40 then
    Hint := 'New York city trip'
  else if Date = int(Now) + 200 then
    Hint := 'Dinner at best friend'
end;

procedure TForm790.AdvSmoothCalendarGroup1DateStatus(Sender: TObject;
  Date: TDateTime; var StatusMessage: string; Fill: TGDIPStatus; var OffsetX,
  OffsetY: Integer);
begin
  if Date = int(Now) then
  begin
    StatusMessage := 'Today';
    Fill.Fill.Color := clRed;
    Fill.Fill.ColorTo := clRed;
    Fill.Fill.BorderColor := clBlack;
  end
  else if Date = int(Now) - 210 then
  begin
    OffsetY := -10;
    StatusMessage := 'Meeting with Steve Balmer';
    Fill.Fill.Color := clBlue;
    Fill.Fill.ColorTo := clBlue;
    Fill.Fill.BorderColor := clBlack;
    Fill.Font.Color := clWhite;
  end
  else if Date = int(Now) - 53 then
  begin
    OffsetY := -10;
    StatusMessage := 'Flight to Africa';
    Fill.Fill.Color := clYellow;
    Fill.Fill.ColorTo := clYellow;
    Fill.Fill.BorderColor := clBlack;
    Fill.Font.Color := clBlack;
  end;
end;

procedure TForm790.AdvSmoothCalendarGroup1DateStatusClick(Sender: TObject;
  StatusMessage: string; Date: TDateTime);
begin
  ShowMessage(StatusMessage + ' on ' + DateToStr(Date));
end;

procedure TForm790.Button1Click(Sender: TObject);
begin
  AdvSmoothCalendarGroup1.NextMonth;
end;

procedure TForm790.Button2Click(Sender: TObject);
begin
  AdvSmoothCalendarGroup1.PreviousMonth;
end;

procedure TForm790.Button3Click(Sender: TObject);
var
  I: Integer;
  str: String;
  d: TDate;
begin
  case RadioGroup1.ItemIndex of
    0: ShowMessage(DateToStr(AdvSmoothCalendarGroup1.Date));
    1:
    begin
      str := '';
      d := AdvSmoothCalendarGroup1.StartDate;
      str := DateToStr(d);
      str := str + ' , ';
      while d < AdvSmoothCalendarGroup1.EndDate do
      begin
        d := IncDay(d, 1);
        str := str + DateToStr(d);
        if d < AdvSmoothCalendarGroup1.EndDate then
          str := str + ' , ';
      end;
      ShowMessage(str);
    end;
    2:
    begin
      str := '';
      for I := 0 to AdvSmoothCalendarGroup1.DisjunctDates.Count - 1 do
      begin
        str := str + DateToStr(AdvSmoothCalendarGroup1.DisjunctDates[I].DateTime);
        if I < AdvSmoothCalendarGroup1.DisjunctDates.Count - 1 then
          str := str + ' , ';
      end;
      ShowMessage(str);
    end;
  end;
end;

procedure TForm790.ComboBox1Change(Sender: TObject);
var
  d: TDate;
begin
  d := int(Now);
  case ComboBox1.ItemIndex of
    0:
    begin
      RadioGroup1.ItemIndex := 0;
      AdvSmoothCalendarGroup1.Date := d -126;
    end;
    1:
    begin
      AdvSmoothCalendarGroup1.BeginUpdate;
      RadioGroup1.ItemIndex := 1;
      AdvSmoothCalendarGroup1.StartDate := d - 75;
      AdvSmoothCalendarGroup1.EndDate := d - 50;
      AdvSmoothCalendarGroup1.EndUpdate;
    end;
    2:
    begin
      RadioGroup1.ItemIndex := 2;
      AdvSmoothCalendarGroup1.SelectDisjunctDates([d + 50, d - 260, d - 125, d + 40, d + 135, d - 40, d - 10]);
    end;
  end;
end;

procedure TForm790.FormCreate(Sender: TObject);
begin
  AdvSmoothCalendarGroup1.SetComponentStyle(tsOffice2010Silver);
  AdvSmoothCalendarGroup1.WholeYear;

  AdvSmoothCalendarGroup1.MultiSelect := True;
  AdvSmoothCalendarGroup1.DisjunctDaySelect := True;

  RadioGroup1.ItemIndex := 2;

  AdvSmoothCalendarGroup1.SelectDisjunctDates([Now, Now + Random(100), Now - Random(100), Now + Random(100), Now - Random(100), Now -Random(100), Now - Random(100), Now -Random(100), Now - 149,
  Now - 148, Now - 147, Now - 146, Now - 145]);

  AdvSmoothCalendarGroup1.Month := 1;
  AdvSmoothCalendarGroup1.Year := YearOf(Now);
end;

procedure TForm790.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0:
    begin
      AdvSmoothCalendarGroup1.MultiSelect := False;
      AdvSmoothCalendarGroup1.DisjunctDaySelect := False;
    end;
    1:
    begin
      AdvSmoothCalendarGroup1.MultiSelect := True;
      AdvSmoothCalendarGroup1.DisjunctDaySelect := False;
    end;
    2:
    begin
      AdvSmoothCalendarGroup1.MultiSelect := True;
      AdvSmoothCalendarGroup1.DisjunctDaySelect := True;
    end;
  end;
end;

procedure TForm790.SpeedButton1Click(Sender: TObject);
begin
  ShowMessage('Multi selection can be done by holding the SHIFT key and disjunct selection with the CTRL key');
end;

end.
