object Form92: TForm92
  Left = 0
  Top = 0
  Caption = 'PlannerRangeSelector Demo'
  ClientHeight = 302
  ClientWidth = 448
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 247
    Top = 281
    Width = 134
    Height = 13
    Caption = 'Selected timespan: 1 day(s)'
  end
  object Label2: TLabel
    Left = 247
    Top = 46
    Width = 186
    Height = 59
    Caption = 
      'Drag select to select range of dates or left click on start date' +
      ' and right-click on end date.'
    WordWrap = True
  end
  object PlannerRangeSelector1: TPlannerRangeSelector
    Left = 8
    Top = 14
    Width = 169
    Height = 21
    Color = clWindow
    Enabled = True
    TabOrder = 0
    Text = '25/02/2014'
    Visible = True
    AutoFocus = False
    Flat = False
    FlatLineColor = clBlack
    FlatParentColor = True
    ShowModified = False
    FocusColor = clWindow
    FocusBorder = False
    FocusFontColor = clBlack
    LabelAlwaysEnabled = False
    LabelPosition = lpLeftTop
    LabelMargin = 4
    LabelTransparent = False
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    ModifiedColor = clRed
    SelectFirstChar = False
    Version = '1.0.0.0'
    OnChange = PlannerRangeSelector1Change
    OnClick = PlannerRangeSelector1Click
    ButtonStyle = bsButton
    ButtonWidth = 16
    Etched = False
    Glyph.Data = {
      DA020000424DDA0200000000000036000000280000000D0000000D0000000100
      200000000000A402000000000000000000000000000000000000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F00000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000000000000000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F0000000000000000000000000000000000000000000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000}
    OnClickBtn = PlannerRangeSelector1ClickBtn
    Calendar = mcal1_.Owner
    DateStart = 41695.000000000000000000
    DateEnd = 41695.000000000000000000
    HideCalendarAfterSelection = False
    OnRangeSelect = PlannerRangeSelector1RangeSelect
    object mcal1_: TPlannerCalendar
      Left = 0
      Top = 0
      Width = 180
      Height = 180
      EventDayColor = clBlack
      EventFont.Charset = DEFAULT_CHARSET
      EventFont.Color = clWindowText
      EventFont.Height = -11
      EventFont.Name = 'Tahoma'
      EventFont.Style = [fsBold]
      EventMarkerColor = clYellow
      EventMarkerShape = evsCircle
      BackgroundPosition = bpTiled
      BevelOuter = bvNone
      BorderWidth = 1
      Look = lookFlat
      DateDownColor = clNone
      DateHoverColor = clNone
      DayFont.Charset = DEFAULT_CHARSET
      DayFont.Color = clWindowText
      DayFont.Height = -11
      DayFont.Name = 'Tahoma'
      DayFont.Style = []
      WeekFont.Charset = DEFAULT_CHARSET
      WeekFont.Color = clWindowText
      WeekFont.Height = -11
      WeekFont.Name = 'Tahoma'
      WeekFont.Style = []
      WeekName = 'Wk'
      TextColor = clBlack
      SelectColor = clTeal
      SelectFontColor = clWhite
      InActiveColor = clGray
      HeaderColor = clNone
      FocusColor = clHighlight
      InversColor = clTeal
      WeekendColor = clRed
      NameOfDays.Monday = 'ma'
      NameOfDays.Tuesday = 'di'
      NameOfDays.Wednesday = 'wo'
      NameOfDays.Thursday = 'do'
      NameOfDays.Friday = 'vr'
      NameOfDays.Saturday = 'za'
      NameOfDays.Sunday = 'zo'
      NameOfMonths.January = 'jan'
      NameOfMonths.February = 'feb'
      NameOfMonths.March = 'mrt'
      NameOfMonths.April = 'apr'
      NameOfMonths.May = 'mei'
      NameOfMonths.June = 'jun'
      NameOfMonths.July = 'jul'
      NameOfMonths.August = 'aug'
      NameOfMonths.September = 'sep'
      NameOfMonths.October = 'okt'
      NameOfMonths.November = 'nov'
      NameOfMonths.December = 'dec'
      NameOfMonths.UseIntlNames = True
      StartDay = 7
      TodayFormat = '"Today" DDD/mm, YYYY'
      Day = 25
      Month = 2
      Year = 2014
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      CaptionColor = clNone
      CaptionTextColor = clBlack
      LineColor = clGray
      Line3D = True
      GradientStartColor = clWhite
      GradientEndColor = clBtnFace
      GradientDirection = gdVertical
      MonthGradientStartColor = clNone
      MonthGradientEndColor = clNone
      MonthGradientDirection = gdHorizontal
      HintPrevYear = 'Previous Year'
      HintPrevMonth = 'Previous Month'
      HintNextMonth = 'Next Month'
      HintNextYear = 'Next Year'
      Version = '2.1.0.0'
    end
  end
  object Button1: TButton
    Left = 8
    Top = 41
    Width = 129
    Height = 25
    Caption = 'End 5 days from start'
    TabOrder = 1
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 8
    Top = 72
    Width = 217
    Height = 222
    ItemHeight = 13
    PopupMenu = PopupMenu1
    TabOrder = 2
  end
  object CheckBox1: TCheckBox
    Left = 247
    Top = 16
    Width = 201
    Height = 17
    Caption = 'Auto hide calendar after selection'
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = CheckBox1Click
  end
  object PopupMenu1: TPopupMenu
    Left = 168
    Top = 168
    object Clear1: TMenuItem
      Caption = '&Clear'
      OnClick = Clear1Click
    end
  end
end
