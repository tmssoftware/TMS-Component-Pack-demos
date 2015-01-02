{********************************************************************}
{ PlannerCalendar DEMO application                                   }
{ TPlannerCalendar version 1.3                                       }
{ TPlannerDatePicker version 1.3                                     }
{ TPlannerCalendarGroup version 1.1                                  }
{ for Delphi 4.0,5.0,6.0,7.0 & C++Builder 4.0,5.0,6.0                }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2003-2004                                   }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}


unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, PlannerCal, AdvPageControl, ComCtrls,
  AdvEdit, AdvEdBtn, PlannerDatePicker;

type
  TForm1 = class(TForm)
    AdvPageControl1: TAdvPageControl;
    AdvTabSheet1: TAdvTabSheet;
    AdvTabSheet2: TAdvTabSheet;
    AdvTabSheet3: TAdvTabSheet;
    PlannerCalendar1: TPlannerCalendar;
    Edit1: TEdit;
    Label1: TLabel;
    PlannerCalendar2: TPlannerCalendar;
    PlannerCalendarGroup1: TPlannerCalendarGroup;
    PlannerDatePicker1: TPlannerDatePicker;
    procedure PlannerCalendar1DaySelect(Sender: TObject;
      SelDate: TDateTime);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.PlannerCalendar1DaySelect(Sender: TObject;
  SelDate: TDateTime);
begin
  Edit1.Text := DateTimeToStr(SelDate);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  with PlannerCalendar1.Events.Add do
  begin
    Date := EncodeDate(2004,8,12);
    Hint := 'Hello world';
    FontColor := ClBlue;
    Color := ClYellow;
    Shape := evsTriangle;
  end;

  with PlannerCalendar1.Events.Add do
  begin
    Date := EncodeDate(2004,8,5);
    Hint := 'Event 2';
    FontColor := ClWhite;
    Color := ClRed;
    Shape := evsCircle;
  end;

  with PlannerCalendar1.Events.Add do
  begin
    Date := EncodeDate(2004,8,25);
    Hint := 'Event 3';
    FontColor := ClWhite;
    Color := ClLime;
    Shape := evsRectangle;
  end;

  with plannercalendarGroup1.Events.Add do
  begin
    Date := EncodeDate(2004,8,9);
    Hint := 'Event on August 9';
    FontColor := ClWhite;
    Color := ClGreen;
    Shape := evsRectangle;
  end;
  with plannercalendarGroup1.Events.Add do
  begin
    Date := EncodeDate(2004,8,25);
    Hint := 'Release';
    FontColor := ClBlack;
    Color := ClYellow;
    Shape := evsTriangle;
  end;

  with plannercalendarGroup1.Events.Add do
  begin
    Date := EncodeDate(2004,8,31);
    Hint := 'Event on August 31';
    FontColor := ClBlack;
    Color := ClLime;
    Shape := evsCircle;
  end;

  with plannercalendarGroup1.Events.Add do
  begin
    Date := EncodeDate(2004,9,7);
    Hint := 'Event on September 7';
    FontColor := ClBlack;
//    Color := clFushia;
    Shape := evsCircle;
  end;

  with plannercalendarGroup1.Events.Add do
  begin
    Date := EncodeDate(2004,9,15);
    Hint := 'Event on September 15';
    FontColor := ClBlack;
    Color := clRed;
    Shape := evsCircle;
  end;

  with plannercalendarGroup1.Events.Add do
  begin
    Date := EncodeDate(2004,9,20);
    Hint := 'Event on September 20';
    FontColor := ClWhite;
    Color := clGreen;
    Shape := evsRectangle;
  end;

  with plannercalendarGroup1.Events.Add do
  begin
    Date := EncodeDate(2004,9,21);
    Hint := 'Event on September 21';
    FontColor := ClWhite;
    Color := clGreen;
    Shape := evsRectangle;
  end;

  with plannercalendarGroup1.Events.Add do
  begin
    Date := EncodeDate(2004,9,22);
    Hint := 'Event on September 22';
    FontColor := ClWhite;
    Color := clGreen;
    Shape := evsRectangle;
  end;

  with plannercalendarGroup1.Events.Add do
  begin
    Date := EncodeDate(2004,9,23);
    Hint := 'Event on September 23';
    FontColor := ClWhite;
    Color := clGreen;
    Shape := evsRectangle;
  end;

  with plannercalendarGroup1.Events.Add do
  begin
    Date := EncodeDate(2004,10,4);
    Hint := 'Event on October 4';
    FontColor := ClWhite;
    Color := clGreen;
    Shape := evsRectangle;
  end;

  with plannercalendarGroup1.Events.Add do
  begin
    Date := EncodeDate(2004,10,6);
    Hint := 'Event on October 6';
    FontColor := ClWhite;
    Color := clGreen;
    Shape := evsRectangle;
  end;







end;

end.
