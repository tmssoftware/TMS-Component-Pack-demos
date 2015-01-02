object Form1: TForm1
  Left = 397
  Top = 149
  Width = 525
  Height = 569
  Caption = 'TMS software PlannerCalendar demo application'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPageControl1: TAdvPageControl
    Left = 8
    Top = 38
    Width = 388
    Height = 443
    ActivePage = AdvTabSheet3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    DefaultTabColorTo = clWhite
    ActiveColor = clSkyBlue
    ActiveColorTo = clWhite
    TabHoverColor = clInfoBk
    TabHoverColorTo = clWhite
    TabHoverBorder = clInactiveBorder
    TabBackGroundColor = clBtnFace
    TabMargin.LeftMargin = 10
    TabMargin.TopMargin = 2
    TabMargin.RightMargin = 0
    TabOverlap = 0
    TabHeight = 24
    TabOrder = 0
    object AdvTabSheet1: TAdvTabSheet
      Caption = 'TPlannerCalendar'
      ShowClose = True
      TabColor = clBtnFace
      TabColorTo = clWhite
      object Label1: TLabel
        Left = 187
        Top = 0
        Width = 91
        Height = 13
        Caption = 'Selected date : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object PlannerCalendar1: TPlannerCalendar
        Left = 0
        Top = 0
        Width = 180
        Height = 177
        EventMarkerColor = clYellow
        EventMarkerShape = evsCircle
        BackgroundPosition = bpTiled
        BevelOuter = bvNone
        BorderWidth = 1
        BorderXP = True
        Caption3D = False
        Look = lookFlat
        MultiSelect = False
        DayFont.Charset = DEFAULT_CHARSET
        DayFont.Color = 11756644
        DayFont.Height = -11
        DayFont.Name = 'Verdana'
        DayFont.Style = [fsBold]
        WeekFont.Charset = DEFAULT_CHARSET
        WeekFont.Color = clWindowText
        WeekFont.Height = -11
        WeekFont.Name = 'Verdana'
        WeekFont.Style = [fsBold]
        WeekName = 'Wk'
        TextColor = clBlack
        SelectColor = clTeal
        SelectFontColor = clWhite
        InActiveColor = clGray
        HeaderColor = clNone
        FocusColor = clHighlight
        InversColor = clTeal
        WeekendColor = clRed
        NameOfDays.Monday = 'Mo'
        NameOfDays.Tuesday = 'Tu'
        NameOfDays.Wednesday = 'We'
        NameOfDays.Thursday = 'Th'
        NameOfDays.Friday = 'Fr'
        NameOfDays.Saturday = 'Sa'
        NameOfDays.Sunday = 'Su'
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
        MaxDate.Day = 31
        MaxDate.Month = 12
        MaxDate.Year = 2004
        MaxDate.Use = True
        MinDate.Day = 1
        MinDate.Month = 1
        MinDate.Year = 2004
        MinDate.Use = True
        ReturnIsSelect = False
        ShowGotoToday = True
        ShowToday = False
        ShowWeeks = True
        StartDay = 7
        TodayFormat = '"Today" DDD/mm YYYY'
        TodayStyle = tsSunken
        YearStartAt.StartDay = 1
        YearStartAt.StartMonth = 1
        YearStartAt.PrevYearStartDay = 1
        YearStartAt.PrevYearStartMonth = 1
        YearStartAt.NextYearStartDay = 1
        YearStartAt.NextYearStartMonth = 1
        Day = 24
        Month = 8
        Year = 2004
        ShowHint = True
        ParentShowHint = False
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        EventHints = True
        EventDayColor = clBlack
        CaptionColor = clNone
        CaptionTextColor = clBlack
        OnDaySelect = PlannerCalendar1DaySelect
        LineColor = clGray
        Line3D = True
        GradientStartColor = clWhite
        GradientEndColor = clBtnFace
        GradientDirection = gdHorizontal
        MonthGradientStartColor = clNone
        MonthGradientEndColor = clNone
        MonthGradientDirection = gdHorizontal
        Glyphs.NextMonth.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000220B0000220B00000001000000010000003100000042
          0000004A000000520000006B0000004A080000630800006B0800007B0800008C
          080000940800009C080000A50800006B10000873100000A51000089C180000A5
          180008A5180008AD180008842100109C210008A5210010AD2100108C290008A5
          290008AD290010AD290008B5290010A5310018A5310021A5310010AD310018AD
          3100189C390010AD390010A5420010B5420029A54A0010AD4A0018B54A0021BD
          4A0039BD4A0042BD4A0018B5520021B5520039B552004AC6520029BD5A0052C6
          5A0031BD630039BD630042BD63004ABD630039BD6B004ABD6B0042C673004AC6
          730052C673004AC67B0052C67B0052CE7B0073D67B0052CE840063CE8C006BCE
          8C006BD68C0084D68C007BD694007BDE9C0084DE9C008CDE9C0084DEA50094DE
          A50094DEB50094E7B5009CE7B500ADE7B500A5E7C600ADE7C600B5EFC600BDEF
          C600BDEFCE00BDEFD600C6F7DE00D6F7DE00D6F7E700E7F7EF00EFFFEF00F7FF
          F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005A5A5A5A5A00
          01030301005A5A5A5A5A5A5A5A0101080B0B0B0B0802025A5A5A5A5A05060F0C
          0B0B0B0B0C0C07005A5A5A050D16120B0B0B0B0B0B0B0C07025A5A05201B120F
          1755572F0B0B0B0C025A0314251B100B10435B592B0B0B0C0801032428200F0B
          0B0B3E5B592B0B0C0A010D2D2D525150505050595B58310B0B020E36305B5B5B
          5B5B5B5B5B5B4D0B0B030E3C383C3F3F3F3944595B4921120B010E37482D282D
          2D3C575B4620191209015A1F4F41272836595B4620191613075A5A1F3A53402D
          2D4F4A2823201B15075A5A5A1541564C3C33303232291D065A5A5A5A5A35354A
          534E4A453B22225A5A5A5A5A5A5A5A1F2E343426185A5A5A5A5A}
        Glyphs.PrevMonth.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000220B0000220B00000001000000010000003100000042
          0000004A000000520000006B0000004A080000630800006B0800007B0800008C
          080000940800009C080000A50800006B10000873100000A51000089C180000A5
          180008A5180008AD180008842100109C210008A5210010AD2100108C290008A5
          290008AD290008B5290010A5310018A5310021A5310008AD310010AD3100189C
          390010AD390010A5420010B5420029A54A0010AD4A0018B54A0021BD4A0042BD
          4A0018B5520021B5520039B5520029BD520042BD52004AC6520029BD5A0039BD
          5A0042BD5A0042C65A0031BD630039BD630042BD63004ABD630039BD6B004ABD
          6B0042C673004AC6730052C673004AC67B0052C67B0073D67B0063CE8C006BCE
          8C006BD68C0084D68C0073D694007BDE9C0084DEA5008CDEAD0094DEB50094E7
          B5009CE7B500ADE7B500B5E7B500A5E7BD00B5E7BD00A5E7C600ADE7C600B5EF
          C600BDEFCE00BDEFD600C6F7DE00D6F7DE00D6F7E700E7F7EF00EFFFEF00F7FF
          F700FF00FF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005A5A5A5A5A00
          01030301005A5A5A5A5A5A5A5A0101080B0B0B0B0802025A5A5A5A5A05060F0C
          0B0B0B0B0C0C07005A5A5A050D16120B0B0B0B0B0B0B0C07025A5A05201A120F
          2F5755170B0B0B0C025A0314241C1029595C430F0B0B0B0C0801032327202959
          5C3F0B0B0B0B0B0C0A010D2B2B44585C59514E4B4B4B4B0B0B020E3830525C5C
          5C5C5C5C5C5C5C0B0B030E3E3A304D5C59463232323232120B010E39462B2B48
          5C573C202020191209015A1E50412627475C592D1C191613075A5A1E3C53402B
          2A48502B22202015075A5A5A1541564A3E35303434281C065A5A5A5A5A373748
          534F47453D21215A5A5A5A5A5A5A5A1E2C363625185A5A5A5A5A}
        HintPrevYear = 'Previous Year'
        HintPrevMonth = 'Previous Month'
        HintNextMonth = 'Next Month'
        HintNextYear = 'Next Year'
      end
      object Edit1: TEdit
        Left = 188
        Top = 16
        Width = 121
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object PlannerCalendar2: TPlannerCalendar
        Left = 1
        Top = 197
        Width = 180
        Height = 180
        EventMarkerColor = clYellow
        EventMarkerShape = evsCircle
        BackgroundPosition = bpTiled
        BevelOuter = bvNone
        BorderWidth = 1
        BorderXP = True
        Caption3D = False
        Look = lookFlat
        MultiSelect = False
        DayFont.Charset = DEFAULT_CHARSET
        DayFont.Color = clWindowText
        DayFont.Height = -11
        DayFont.Name = 'MS Sans Serif'
        DayFont.Style = []
        WeekFont.Charset = DEFAULT_CHARSET
        WeekFont.Color = clHighlight
        WeekFont.Height = -11
        WeekFont.Name = 'MS Sans Serif'
        WeekFont.Style = []
        WeekName = 'Wk'
        TextColor = clBlack
        SelectColor = clTeal
        SelectFontColor = clWhite
        InActiveColor = clGray
        HeaderColor = clNone
        FocusColor = clHighlight
        InversColor = clTeal
        WeekendColor = 16415389
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
        MaxDate.Day = 0
        MaxDate.Month = 0
        MaxDate.Year = 0
        MaxDate.Use = False
        MinDate.Day = 0
        MinDate.Month = 0
        MinDate.Year = 0
        MinDate.Use = False
        ReturnIsSelect = False
        ShowGotoToday = False
        ShowToday = False
        ShowWeeks = False
        StartDay = 7
        TodayFormat = '"Today" DDD/mm, YYYY'
        TodayStyle = tsSunken
        YearStartAt.StartDay = 1
        YearStartAt.StartMonth = 1
        YearStartAt.PrevYearStartDay = 1
        YearStartAt.PrevYearStartMonth = 1
        YearStartAt.NextYearStartDay = 1
        YearStartAt.NextYearStartMonth = 1
        Day = 24
        Month = 8
        Year = 2004
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        EventHints = False
        EventDayColor = clBlack
        CaptionColor = clNone
        CaptionTextColor = clBlack
        LineColor = clGray
        Line3D = True
        GradientStartColor = 16247535
        GradientEndColor = 14352122
        GradientDirection = gdHorizontal
        MonthGradientStartColor = clNone
        MonthGradientEndColor = clNone
        MonthGradientDirection = gdHorizontal
        HintPrevYear = 'Previous Year'
        HintPrevMonth = 'Previous Month'
        HintNextMonth = 'Next Month'
        HintNextYear = 'Next Year'
      end
    end
    object AdvTabSheet2: TAdvTabSheet
      Caption = 'TPlannerDatePicker'
      ImageIndex = 2
      ShowClose = True
      TabColor = clBtnFace
      TabColorTo = clWhite
      object PlannerDatePicker1: TPlannerDatePicker
        Left = 8
        Top = 16
        Width = 180
        Height = 21
        AutoFocus = False
        EditAlign = eaLeft
        EditType = etString
        ErrorMarkerPos = 0
        ErrorMarkerLen = 0
        ErrorColor = clRed
        ErrorFontColor = clWhite
        ExcelStyleDecimalSeparator = False
        Flat = False
        FlatLineColor = clBlack
        FlatParentColor = True
        FocusAlign = eaDefault
        FocusBorder = False
        FocusColor = clWindow
        FocusFontColor = clWindowText
        FocusLabel = False
        FocusWidthInc = 0
        ModifiedColor = clHighlight
        DisabledColor = clSilver
        URLColor = clBlue
        ReturnIsTab = False
        LengthLimit = 0
        TabOnFullLength = False
        Precision = 0
        LabelPosition = lpLeftTop
        LabelMargin = 4
        LabelTransparent = False
        LabelAlwaysEnabled = False
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Lookup.CaseSensitive = False
        Lookup.Color = clWindow
        Lookup.DisplayCount = 4
        Lookup.Enabled = False
        Lookup.History = False
        Lookup.NumChars = 2
        Lookup.Multi = False
        Lookup.Separator = ';'
        Persistence.Enable = False
        Persistence.Location = plInifile
        Color = clWindow
        Enabled = True
        HintShowLargeText = False
        ParentShowHint = False
        OleDropTarget = False
        OleDropSource = False
        ShowHint = True
        Signed = False
        TabOrder = 0
        Transparent = False
        Visible = True
        ButtonWidth = 16
        Etched = False
        Glyph.Data = {
          DA020000424DDA0200000000000036000000280000000D0000000D0000000100
          200000000000A402000000000000000000000000000000000000D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00000000000000000000000000D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC000000000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000000000000000000000000
          0000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00}
        Calendar = PlannerDatePicker1.cal_
        HideCalendarAfterSelection = True
        object cal_: TPlannerCalendar
          Left = 0
          Top = 0
          Width = 180
          Height = 180
          EventMarkerColor = clYellow
          EventMarkerShape = evsCircle
          BackgroundPosition = bpTiled
          BevelOuter = bvNone
          BorderWidth = 1
          BorderXP = True
          Caption3D = False
          Look = lookFlat
          MultiSelect = False
          DayFont.Charset = DEFAULT_CHARSET
          DayFont.Color = clWhite
          DayFont.Height = -11
          DayFont.Name = 'Verdana'
          DayFont.Style = [fsBold]
          WeekFont.Charset = DEFAULT_CHARSET
          WeekFont.Color = clWindowText
          WeekFont.Height = -11
          WeekFont.Name = 'MS Sans Serif'
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
          MaxDate.Day = 0
          MaxDate.Month = 0
          MaxDate.Year = 0
          MaxDate.Use = False
          MinDate.Day = 0
          MinDate.Month = 0
          MinDate.Year = 0
          MinDate.Use = False
          ReturnIsSelect = False
          ShowGotoToday = False
          ShowToday = False
          ShowWeeks = False
          StartDay = 7
          TodayFormat = '"Today" DDD/mm, YYYY'
          TodayStyle = tsSunken
          YearStartAt.StartDay = 1
          YearStartAt.StartMonth = 1
          YearStartAt.PrevYearStartDay = 1
          YearStartAt.PrevYearStartMonth = 1
          YearStartAt.NextYearStartDay = 1
          YearStartAt.NextYearStartMonth = 1
          Day = 24
          Month = 8
          Year = 2004
          ShowHint = True
          ParentShowHint = False
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          EventHints = False
          EventDayColor = clBlack
          CaptionColor = clNone
          CaptionTextColor = clWhite
          LineColor = clGray
          Line3D = True
          GradientStartColor = clWhite
          GradientEndColor = clBtnFace
          GradientDirection = gdHorizontal
          MonthGradientStartColor = 15850208
          MonthGradientEndColor = 12673280
          MonthGradientDirection = gdVertical
          HintPrevYear = 'Previous Year'
          HintPrevMonth = 'Previous Month'
          HintNextMonth = 'Next Month'
          HintNextYear = 'Next Year'
        end
      end
    end
    object AdvTabSheet3: TAdvTabSheet
      Caption = 'TPlannerCalendarGroup'
      ImageIndex = 1
      ShowClose = True
      TabColor = clBtnFace
      TabColorTo = clWhite
      object PlannerCalendarGroup1: TPlannerCalendarGroup
        Left = 8
        Top = 16
        Width = 304
        Height = 304
        EventMarkerColor = clYellow
        EventMarkerShape = evsCircle
        Background.Data = {
          FFD8FFE000104A46494600010101006400640000FFFE009456542D436F6D7072
          6573732028746D292058696E6720546563686E6F6C6F677920436F72702E0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FFDB00840008050607060508070607090808090C140D
          0C0B0B0C1811120E141D191E1E1C191C1B20242E2720222B221B1C2836282B2F
          313334331F26383C38323C2E323331010809090C0A0C170D0D1731211C213131
          3131313131313131313131313131313131313131313131313131313131313131
          31313131313131313131313131313131FFC00011080060006003011100021101
          031101FFC401A200000105010101010101000000000000000001020304050607
          08090A0B100002010303020403050504040000017D0102030004110512213141
          0613516107227114328191A1082342B1C11552D1F02433627282090A16171819
          1A25262728292A3435363738393A434445464748494A535455565758595A6364
          65666768696A737475767778797A838485868788898A92939495969798999AA2
          A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7
          D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FA010003010101010101
          0101010000000000000102030405060708090A0B110002010204040304070504
          0400010277000102031104052131061241510761711322328108144291A1B1C1
          09233352F0156272D10A162434E125F11718191A262728292A35363738393A43
          4445464748494A535455565758595A636465666768696A737475767778797A82
          838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7
          B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3
          F4F5F6F7F8F9FAFFDD00040000FFDA000C03010002110311003F00DFB6B17561
          C1AFA7954563E1E34CE8F4A5F2B19AE0ABA9DD4958E861990A0E715C0E276A92
          B115D48A5702AA11264EE60EA11EFCE2BBA9BB1C7357306EACD989C0AED84D23
          8E502BAD8B29E957ED111ECC93CA29D452BDC76B09BB6D16B86C216DDD28B580
          6B405FA0A7CC90B96E33EC0C7B1A7ED1217B3677874B541900578DEDAE7AFEC5
          22A4EBE4671DAB48FBC66D7295D6FCAB6335A7B24C8F6962D4770641593858D1
          4AE298C3F5145EC16B8E4D3D5F9C52752C354D322B8D3954702AA354995248C7
          BDB7D99E2BAE12B9CD38D8C79F2A78AEA89CB216DC16344B4089B1656C1F1915
          C93958EA846E6C5B69AAF8E2B96556C75469265E6D4E365C022B1F62D1ABAA99
          9F75209738ADE11E53193B94BECA59B38AD79AC8CB90BF6D6FB40E2B1948DA31
          2CAA62B3B9762E5BF02B291AC465D6369A70148E7F51039AEEA67154306E146E
          3C576C7638E4875B00A45290E26B5A4EA98CD734E373A63248D7B4D45131935C
          B3A4D9D31A891C5C1A9B960326BD67451E546AB37B4D98CA066B8AA4794ECA72
          B9B9042A46715C72675A8A2C2C600E056772D210A7A534161F1F1498D115D37C
          A69C5132307516EB5DD4D1C750C19DB0D5DB15A1C8C6ACB8A6E224C537457A52
          E40E6B11B6A2CBD0D52A498BDA105B5A1DE38AB94D5888C0E974A84A01DABCFA
          AEE77538D8DD89B0B5C4D1D88951F352D148947353B0C7AAD229220BA1F29AB8
          912307508F39AEDA6CE39A30AE213BBA57645A3925122F248ABBA279463427D2
          9A685CA40F6C4F6AB5244389D3416414F4AF39D43BE34CD2B788201815849DCD
          E2AC595E2B36592C752CB45A8C66B265A260BC549762B5C0E3A5691339193771
          839AE98339A48CB96004F4AE952307123FB30F4A7CC4F28A2D01ED4738F90516
          20F6A3DA07B33495C0AE7B1BDC78980A5CA3B8E138A5C83E625867048A871294
          8D1B660D8AC24AC6F12E05F96B234B152E978AD62672464DD0EB5D3039A46748
          A49ADD18B42052298AC3D4E290C955D6A6C55D1456E33DEB6E432521DE71A5CA
          3B89E71A3942E4F6D312C2A2512A2CDDB07CE2B8AA23AE0CD51D2B98E9457B91
          906B4891232AE53AD74C59CD2453F28135ADCCEC2B4400A2E1629CE766715AC5
          5CC9E855371838CD69C867CC538A50718AD5C4CD32EC285F18AC9BB1AA572CAD
          9B11C0ACF9D22D40B16F64CAC38A894D17181B165114C5724DDCEA82B1A6BF76
          B9D9D08AF70783571467233273D6BA228C2455CF35AD8CC2460168481B32AF24
          0335D3089CF36663CC03574289CED956CE5C915A4E36220CEA7488449B78AF3A
          ABB1DF4A373A482C5020C8AF3E5519DF1A6AC482D1074153CEC7C890A2209D05
          17B8ED61C4E052B015673C56B14672336E0D6F146122A16E6B5B1991CEF85AA8
          A25B316FE5C66BAE9C4E59B31E59BE6AEA51399B1F6230C294F61C0ED740FE1A
          F22B9EAD03AA4FBA2BCD67A2B606200A1032A4D70A95AC6173272B155EFD0719
          AD15233F688AF2DEA11D6B454D90E68A335CA9E95B46062E457328CD5F291722
          9E5056AA3125B316F9B39AEB82B1CB332255F9ABA91CCCD0B3401C56337A1B41
          1D7E84301715E5573D3A27531FDC15E733D15B115CB6D4AA8AD489181A85C15C
          D76D3826714E56302EAF995B826BB63493471CAA10AEA0CDC66AFD9225542417
          24D2E4B15CC396626A7942E36493229A883650B8E735BC4C64526404D6A99934
          7FFFD9}
        BackgroundPosition = bpTiled
        Color = clWhite
        ColCount = 2
        RowCount = 2
        CalendarWidth = 150
        CalendarHeight = 150
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        StartDay = 7
        StartMonth = 8
        StartYear = 2004
        SpliterV = 2
        SpliterH = 2
        SplitterColor = clBtnFace
        SplitterBevel = True
        LineColor = clSilver
        Line3D = True
        GradientDirection = gdHorizontal
        GradientStartColor = clWhite
        GradientEndColor = clBtnFace
        MonthGradientDirection = gdHorizontal
        MonthGradientStartColor = clNone
        MonthGradientEndColor = clNone
        HintPrevYear = 'Previous Year'
        HintPrevMonth = 'Previous Month'
        HintNextYear = 'Next Year'
        HintNextMonth = 'Next Month'
        BevelOuter = bvNone
        BevelWidth = 1
        BorderWidth = 0
        CalendarBevelInner = bvNone
        CalendarBevelOuter = bvRaised
        CalendarBevelWidth = 0
        CalendarBorderWidth = 1
        CalendarBorderStyle = bsNone
        Day = 24
        Month = 8
        Year = 2004
        Look = lookFlat
        MultiSelect = False
        DayFont.Charset = DEFAULT_CHARSET
        DayFont.Color = clWindowText
        DayFont.Height = -11
        DayFont.Name = 'MS Sans Serif'
        DayFont.Style = []
        WeekFont.Charset = DEFAULT_CHARSET
        WeekFont.Color = clWindowText
        WeekFont.Height = -11
        WeekFont.Name = 'MS Sans Serif'
        WeekFont.Style = []
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
        TextColor = clBlack
        SelectColor = clTeal
        SelectFontColor = clWhite
        InActiveColor = clGray
        HeaderColor = clBtnFace
        FocusColor = clHighlight
        InversColor = clWhite
        WeekendColor = clRed
        ShowSelection = True
        ShowToday = False
        ShowWeeks = False
        EventHints = True
        EventDayColor = clBlack
        CaptionTextColor = clBlack
        YearStartAt.StartDay = 1
        YearStartAt.StartMonth = 1
        YearStartAt.PrevYearStartDay = 1
        YearStartAt.PrevYearStartMonth = 1
        YearStartAt.NextYearStartDay = 1
        YearStartAt.NextYearStartMonth = 1
        DesignSize = (
          304
          304)
      end
    end
  end
end
