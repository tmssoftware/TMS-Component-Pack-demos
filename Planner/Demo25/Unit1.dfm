object Form1: TForm1
  Left = 468
  Top = 181
  Width = 722
  Height = 498
  Caption = 'Custom MyMonthPlanner'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 440
    Width = 272
    Height = 13
    Caption = 'Warning : Make sure to install first MyMonthPlanner.PAS !'
  end
  object MyMonthPlannerView1: TMyMonthPlannerView
    Left = 8
    Top = 16
    Width = 481
    Height = 417
    AttachementGlyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888700078888888888708880788888888808808808888888880808080
      8888888880808080888888888080808088888888808080808888888880808080
      8888888880808080888888888080808088888888808080808888888888808080
      8888888888808880888888888888000888888888888888888888}
    AutoInsDel = True
    BackgroundPosition = bpTiled
    BevelOuter = bvNone
    BorderWidth = 1
    BorderXP = True
    CaptionColor = clNone
    CaptionColorTo = clNone
    CaptionHoverColor = clHighlight
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'MS Sans Serif'
    CaptionFont.Style = []
    CaptionHeight = 13
    ColorCurrent = clYellow
    ColorCurrentItem = clLime
    DateFormat = 'dd/mm/yyyy'
    DayFont.Charset = DEFAULT_CHARSET
    DayFont.Color = clWindowText
    DayFont.Height = -11
    DayFont.Name = 'MS Sans Serif'
    DayFont.Style = []
    DefaultItem.Alarm.Active = False
    DefaultItem.Alarm.ID = 0
    DefaultItem.Alarm.NotifyType = anCaption
    DefaultItem.Alarm.Tag = 0
    DefaultItem.Alarm.Time = atBefore
    DefaultItem.Alignment = taLeftJustify
    DefaultItem.AllowOverlap = True
    DefaultItem.Background = False
    DefaultItem.BrushStyle = bsSolid
    DefaultItem.CaptionAlign = taLeftJustify
    DefaultItem.CaptionBkg = clWhite
    DefaultItem.CaptionFont.Charset = DEFAULT_CHARSET
    DefaultItem.CaptionFont.Color = clWindowText
    DefaultItem.CaptionFont.Height = -11
    DefaultItem.CaptionFont.Name = 'MS Sans Serif'
    DefaultItem.CaptionFont.Style = []
    DefaultItem.CaptionType = ctNone
    DefaultItem.Color = clWhite
    DefaultItem.ColorTo = clBtnFace
    DefaultItem.Completion = 0
    DefaultItem.CompletionDisplay = cdNone
    DefaultItem.Cursor = -1
    DefaultItem.DBTag = 0
    DefaultItem.FixedPos = False
    DefaultItem.FixedPosition = False
    DefaultItem.FixedSize = False
    DefaultItem.FixedTime = False
    DefaultItem.Font.Charset = DEFAULT_CHARSET
    DefaultItem.Font.Color = clWindowText
    DefaultItem.Font.Height = -11
    DefaultItem.Font.Name = 'MS Sans Serif'
    DefaultItem.Font.Style = []
    DefaultItem.ImageID = -1
    DefaultItem.ImagePosition = ipHorizontal
    DefaultItem.InHeader = False
    DefaultItem.InplaceEdit = peMemo
    DefaultItem.ItemBegin = 16
    DefaultItem.ItemEnd = 17
    DefaultItem.ItemPos = 0
    DefaultItem.Layer = 0
    DefaultItem.Name = 'PlannerItem0'
    DefaultItem.OwnsItemObject = False
    DefaultItem.ReadOnly = False
    DefaultItem.SelectColor = clInfoBk
    DefaultItem.SelectColorTo = clNone
    DefaultItem.SelectFontColor = clRed
    DefaultItem.Selected = False
    DefaultItem.Shadow = True
    DefaultItem.Tag = 0
    DefaultItem.TrackColor = clBlue
    DefaultItem.TrackSelectColor = clBlue
    DeleteGlyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      0800000000000001000000000000000000000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
      A6000020400000206000002080000020A0000020C0000020E000004000000040
      20000040400000406000004080000040A0000040C0000040E000006000000060
      20000060400000606000006080000060A0000060C0000060E000008000000080
      20000080400000806000008080000080A0000080C0000080E00000A0000000A0
      200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
      200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
      200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
      20004000400040006000400080004000A0004000C0004000E000402000004020
      20004020400040206000402080004020A0004020C0004020E000404000004040
      20004040400040406000404080004040A0004040C0004040E000406000004060
      20004060400040606000406080004060A0004060C0004060E000408000004080
      20004080400040806000408080004080A0004080C0004080E00040A0000040A0
      200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
      200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
      200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
      20008000400080006000800080008000A0008000C0008000E000802000008020
      20008020400080206000802080008020A0008020C0008020E000804000008040
      20008040400080406000804080008040A0008040C0008040E000806000008060
      20008060400080606000806080008060A0008060C0008060E000808000008080
      20008080400080806000808080008080A0008080C0008080E00080A0000080A0
      200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
      200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
      200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
      2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
      2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
      2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
      2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
      2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
      2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
      2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D9ED07070707
      0707070707070707ECD9EC5E5E5E5E5E5E5E5E5E5E5E5E5E5DED070D0E161616
      161616160E0E0E0E5E07070D161656561616161616160E0E5E07070D16AF075E
      56561657B7EF0E0E5E07070D56AFF6075F565FAFF6AF160E5E07070D565EAFF6
      075FEFF6AF17160E5E07070D5E5E5EAFF607F6AF161616165E07070D5E5E5E5E
      EFF60756161616165E07070D5E5E5FEFF6EFF6075E1616165E07070D5F5F07F6
      EF5EAFF6075616165E07070D6707F6075E5656AFF60716165E07070DA7AF075F
      5E5E5E5EAFAF56165E07070DA7A7675F5F5E5E5E5E5E56165E07EDAF0D0D0D0D
      0D0D0D0D0D0D0D0D5EECD9ED070707070707070707070707EDD1}
    DirectMove = False
    FocusColor = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    GradientStartColor = clWhite
    GradientEndColor = clBtnFace
    GradientDirection = gdHorizontal
    HeaderColor = clNone
    HintPrevYear = 'Previous Year'
    HintPrevMonth = 'Previous Month'
    HintNextMonth = 'Next Month'
    HintNextYear = 'Next Year'
    InActiveColor = clGray
    InversColor = clTeal
    Items = <>
    ItemSpace = 2
    LineColor = clGray
    Line3D = True
    Look = lookFlat
    MaxDate.Day = 0
    MaxDate.Month = 0
    MaxDate.Year = 0
    MaxDate.Use = False
    MinDate.Day = 0
    MinDate.Month = 0
    MinDate.Year = 0
    MinDate.Use = False
    MaxItemsDisplayed = 3
    MonthGradientStartColor = clNone
    MonthGradientEndColor = clNone
    MonthGradientDirection = gdHorizontal
    MultiSelect = True
    NameOfDays.Monday = 'ma'
    NameOfDays.Tuesday = 'di'
    NameOfDays.Wednesday = 'wo'
    NameOfDays.Thursday = 'do'
    NameOfDays.Friday = 'vr'
    NameOfDays.Saturday = 'za'
    NameOfDays.Sunday = 'zo'
    NameOfDays.UseIntlNames = True
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
    ReturnIsSelect = False
    SelectColor = clTeal
    SelectFontColor = clWhite
    ShadowColor = clGray
    Skin.SkinCaptionX = 0
    Skin.SkinCaptionY = 0
    Skin.SkinX = 0
    Skin.SkinY = 0
    ShowCurrent = False
    ShowCurrentItem = False
    ShowLines = True
    ShowToday = False
    ShowWeeks = False
    StartDay = 7
    TextColor = clBlack
    TabOrder = 0
    TodayStyle = tsSunken
    TrackWidth = 4
    URLGlyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888880000800
      0088888808F8F0F8F80888808000000000808880F070888070F0888080000000
      0080880408F8F0F8F80880CCC0000400008874CCC2222C4788887CCCC22226C0
      88887CC822222CC088887C822224642088887C888422C220888877CF8CCCC227
      888887F8F8222208888888776888208888888887777778888888}
    WeekFont.Charset = DEFAULT_CHARSET
    WeekFont.Color = clWindowText
    WeekFont.Height = -11
    WeekFont.Name = 'MS Sans Serif'
    WeekFont.Style = []
    WeekName = 'Wk'
    WeekWidth = 30
    YearStartAt.StartDay = 1
    YearStartAt.StartMonth = 1
    YearStartAt.PrevYearStartDay = 1
    YearStartAt.PrevYearStartMonth = 1
    YearStartAt.NextYearStartDay = 1
    YearStartAt.NextYearStartMonth = 1
    Day = 13
    Month = 7
    Year = 2004
  end
  object Button1: TButton
    Left = 496
    Top = 16
    Width = 209
    Height = 25
    Caption = 'Create TMyMonthPlannerItem class'
    TabOrder = 1
    OnClick = Button1Click
  end
end
