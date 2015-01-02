unit UDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvSmoothTimeLine, AdvSmoothScrollBar, DateUtils, Math, StdCtrls,
  ExtCtrls, Menus;

type
  TForm63 = class(TForm)
    AdvSmoothTimeLine1: TAdvSmoothTimeLine;
    ComboBox1: TComboBox;
    Panel1: TPanel;
    Label2: TLabel;
    AdvSmoothScrollBar1: TAdvSmoothScrollBar;
    Label1: TLabel;
    PopupMenu1: TPopupMenu;
    ChangeShape1: TMenuItem;
    ChangeColor1: TMenuItem;
    Circle1: TMenuItem;
    None1: TMenuItem;
    N1: TMenuItem;
    ColorDialog1: TColorDialog;
    procedure FormCreate(Sender: TObject);
    procedure AdvSmoothScrollBar1PositionChanged(Sender: TObject;
      Position: Integer);
    procedure AdvSmoothScrollBar1PageSizeChanged(Sender: TObject;
      PageSize: Integer);
    procedure ComboBox1Change(Sender: TObject);
    procedure AdvSmoothTimeLine1IndicatorClick(Sender: TObject;
      indicator: TAdvSmoothTimeLineBarIndicator);
    procedure Circle1Click(Sender: TObject);
    procedure None1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure ChangeColor1Click(Sender: TObject);
    procedure AdvSmoothTimeLine1IndicatorPositionChanging(Sender: TObject;
      indicator: TAdvSmoothTimeLineBarIndicator; Position: TDateTime);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetRangeToPosition(p: integer): TDateTime;
    function GetRangeFromPosition(p: integer): TDateTime;
    function GetRangeToPageSize(p: integer): TDateTime;
    function GetRangeFromPageSize(p: integer): TDateTime;
    function GetMax:TDateTime;
    procedure InitScrollBar;
  end;

var
  Form63: TForm63;
  rf, rt, rfmax, rtmax: TDateTime;

implementation

{$R *.dfm}

procedure TForm63.AdvSmoothScrollBar1PageSizeChanged(Sender: TObject;
  PageSize: Integer);
begin
  AdvSmoothTimeLine1.Range.RangeTo := GetRangeToPageSize(PageSize);
  rt := AdvSmoothTimeLine1.Range.RangeTo;
end;

procedure TForm63.AdvSmoothScrollBar1PositionChanged(Sender: TObject;
  Position: Integer);
begin
  AdvSmoothTimeLine1.Range.RangeFrom := GetRangeFromPosition(Position);
  AdvSmoothTimeLine1.Range.RangeTo := GetRangeToPosition(Position)
end;

procedure TForm63.AdvSmoothTimeLine1IndicatorClick(Sender: TObject;
  indicator: TAdvSmoothTimeLineBarIndicator);
begin
  Label1.Caption := 'Indicator: ' + FormatDateTime('m/d/yyyy hh:nn:ss:zzz', indicator.Position);
end;

procedure TForm63.AdvSmoothTimeLine1IndicatorPositionChanging(Sender: TObject;
  indicator: TAdvSmoothTimeLineBarIndicator; Position: TDateTime);
begin
  Label1.Caption := 'Indicator: ' + FormatDateTime('m/d/yyyy hh:nn:ss:zzz', Position);
end;

procedure TForm63.ChangeColor1Click(Sender: TObject);
begin
  ColorDialog1.Color := AdvSmoothTimeLine1.TimeLineIndicators[0].Color;
  ColorDialog1.Execute;
  AdvSmoothTimeLine1.TimeLineIndicators[0].Color := ColorDialog1.Color;
  AdvSmoothTimeLine1.TimeLineIndicators[0].ColorTo := ColorDialog1.Color;
end;

procedure TForm63.Circle1Click(Sender: TObject);
begin
  AdvSmoothTimeLine1.TimeLineIndicators[0].Shape := isCircle;
end;

procedure TForm63.ComboBox1Change(Sender: TObject);
begin
  InitScrollBar;
end;

procedure TForm63.FormCreate(Sender: TObject);
begin
  InitScrollBar;
end;

function TForm63.GetMax: TDateTime;
begin
  Result := 0;
  case ComboBox1.ItemIndex of
    0:Result := IncSecond(rt, AdvSmoothScrollBar1.Max);
    1:Result := IncHour(rt, AdvSmoothScrollBar1.Max);
    2:Result := IncDay(rt, AdvSmoothScrollBar1.Max);
  end;
end;

function TForm63.GetRangeFromPageSize(p: integer): TDateTime;
begin
  Result := 0;
  case ComboBox1.ItemIndex of
    0:Result := Min(IncSecond(rf, p * 1), rtMax);
    1:Result := Min(IncHour(rf, p * 1), rtMax);
    2:Result := Min(IncDay(rf, p * 1), rtMax);
  end;
end;

function TForm63.GetRangeFromPosition(p: integer): TDateTime;
begin
  Result := 0;
  case ComboBox1.ItemIndex of
    0:Result := Max(rfmax, IncSecond(rf, p * 1));
    1:Result := Max(rfmax, IncHour(rf, p * 1));
    2:Result := Max(rfmax, IncDay(rf, p * 1));
  end;
end;

function TForm63.GetRangeToPageSize(p: integer): TDateTime;
begin
  Result := 0;
  case ComboBox1.ItemIndex of
    0:Result := Min(IncSecond(rf, p * 1), rtMax);
    1:Result := Min(IncHour(rf, p * 1), rtMax);
    2:Result := Min(IncDay(rf, p * 1), rtMax);
  end;
end;

function TForm63.GetRangeToPosition(p: integer): TDateTime;
begin
  Result := 0;
  case ComboBox1.ItemIndex of
    0:Result := Min(IncSecond(rt, p * 1), rtMax);
    1:Result := Min(IncHour(rt, p * 1), rtMax);
    2:Result := Min(IncDay(rt, p * 1), rtMax);
  end;
end;

procedure TForm63.InitScrollBar;
var
  I: Integer;
begin
  case ComboBox1.ItemIndex of
  0: AdvSmoothTimeLine1.RangeAppearance.DivisionFormat := 'hh:nn:ss:zzz';
  1: AdvSmoothTimeLine1.RangeAppearance.DivisionFormat := 'dd.mm.yy hh"h"';
  2: AdvSmoothTimeLine1.RangeAppearance.DivisionFormat := 'dd.mm.yy';
  end;

  AdvSmoothTimeLine1.Range.RangeFrom := Now;
  rf := AdvSmoothTimeLine1.Range.RangeFrom;
  case ComboBox1.ItemIndex of
  0: rt := IncSecond(rf, 10);
  1: rt := IncHour(rf, 10);
  2: rt := IncDay(rf, 10);
  end;
  AdvSmoothTimeLine1.Range.RangeTo := rt;
  rtmax := GetMax;
  rfmax := rf;

  AdvSmoothScrollBar1.PageSize := Round((AdvSmoothScrollBar1.Max - AdvSmoothScrollBar1.Min) / (rtmax - rfmax) * (rt - rf));

  for I := 0 to AdvSmoothTimeLine1.TimeLineSections.Count - 1 do
  begin
    with AdvSmoothTimeLine1.TimeLineSections[I] do
    begin
      Hint := 'Section From: '+DateTimeToStr(StartTime) + ' To: ' + DateTimeToStr(EndTime);
      case ComboBox1.ItemIndex of
        0:
        begin
          AdvSmoothTimeLine1.TimeLineSections[I].StartTime := IncSecond(rf, 2 + (I * 10));
          AdvSmoothTimeLine1.TimeLineSections[I].EndTime := IncSecond(rf, 5 +  (I * 15));
        end;
        1:
        begin
          AdvSmoothTimeLine1.TimeLineSections[I].StartTime := IncHour(rf, 2 +  (I * 10));
          AdvSmoothTimeLine1.TimeLineSections[I].EndTime := IncHour(rf, 5 +  (I * 15));
        end;
        2:
        begin
          AdvSmoothTimeLine1.TimeLineSections[I].StartTime := IncDay(rf, 2 +  (I * 11));
          AdvSmoothTimeLine1.TimeLineSections[I].EndTime := IncDay(rf, 5 +  (I * 15));
        end;
      end;
    end;
  end;

  for I := 0 to AdvSmoothTimeLine1.TimeLineIndicators.Count - 1 do
  begin
    with AdvSmoothTimeLine1.TimeLineIndicators[I] do
    begin
      case ComboBox1.ItemIndex of
        0: AdvSmoothTimeLine1.TimeLineIndicators[I].Position := IncSecond(rf, Random(AdvSmoothScrollBar1.Max));
        1: AdvSmoothTimeLine1.TimeLineIndicators[I].Position := IncHour(rf, Random(AdvSmoothScrollBar1.Max));
        2: AdvSmoothTimeLine1.TimeLineIndicators[I].Position := IncDay(rf, Random(AdvSmoothScrollBar1.Max));
      end;
      if I = 0 then
        Hint := 'Right-click me !'
      else
        Hint := 'Special Event added : ' + DateTimeToStr(Position);

      Shape := TAdvSmoothTimeLineBarIndicatorShape(Random(7));
      Color := RGB(Random(255), Random(255), Random(255));
      ColorTo := Color;
    end;
  end;
end;

procedure TForm63.N1Click(Sender: TObject);
begin
  AdvSmoothTimeLine1.TimeLineIndicators[0].Shape := isSquare;
end;

procedure TForm63.None1Click(Sender: TObject);
begin
  AdvSmoothTimeLine1.TimeLineIndicators[0].Shape := isDiamond;
end;

end.
