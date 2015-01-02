object Form93: TForm93
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Advanced Smooth Calendar Demo'
  ClientHeight = 674
  ClientWidth = 594
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label9: TLabel
    Left = 11
    Top = 59
    Width = 28
    Height = 13
    Caption = 'Style:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 320
    Top = 64
    Width = 53
    Height = 13
    Caption = 'Start date:'
  end
  object Label2: TLabel
    Left = 458
    Top = 64
    Width = 47
    Height = 13
    Caption = 'End date:'
  end
  object AdvSmoothCalendar1: TAdvSmoothCalendar
    Left = 320
    Top = 83
    Width = 257
    Height = 249
    Year = 2008
    Month = 7
    Fill.GradientType = gtTexture
    Fill.BackGroundPicture.Data = {}
    Fill.BackGroundPicturePosition = ppStretched
    Fill.Picture.Data = {}
    Fill.BorderColor = clBlack
    Fill.BorderOpacity = 99
    DateAppearance.DateFont.Charset = DEFAULT_CHARSET
    DateAppearance.DateFont.Color = clWindowText
    DateAppearance.DateFont.Height = -11
    DateAppearance.DateFont.Name = 'Tahoma'
    DateAppearance.DateFont.Style = [fsBold]
    DateAppearance.DateFill.Color = clWhite
    DateAppearance.DateFill.ColorTo = clWhite
    DateAppearance.DateFill.BackGroundPicture.Data = {}
    DateAppearance.DateFill.Picture.Data = {}
    DateAppearance.DateFill.Opacity = 102
    DateAppearance.DateFill.OpacityTo = 167
    DateAppearance.DateFill.BorderColor = 10066329
    DateAppearance.DateFill.BorderOpacity = 148
    DateAppearance.DayOfWeekFont.Charset = DEFAULT_CHARSET
    DateAppearance.DayOfWeekFont.Color = clWindowText
    DateAppearance.DayOfWeekFont.Height = -16
    DateAppearance.DayOfWeekFont.Name = 'Tahoma'
    DateAppearance.DayOfWeekFont.Style = [fsBold]
    DateAppearance.DayOfWeekFill.Color = clWhite
    DateAppearance.DayOfWeekFill.ColorTo = clWhite
    DateAppearance.DayOfWeekFill.BackGroundPicture.Data = {}
    DateAppearance.DayOfWeekFill.Picture.Data = {}
    DateAppearance.DayOfWeekFill.Opacity = 128
    DateAppearance.DayOfWeekFill.OpacityTo = 191
    DateAppearance.DayOfWeekFill.BorderColor = clBlack
    DateAppearance.DayOfWeekFill.BorderOpacity = 71
    DateAppearance.SelectedDateFont.Charset = DEFAULT_CHARSET
    DateAppearance.SelectedDateFont.Color = clWindowText
    DateAppearance.SelectedDateFont.Height = -11
    DateAppearance.SelectedDateFont.Name = 'Tahoma'
    DateAppearance.SelectedDateFont.Style = [fsBold]
    DateAppearance.SelectedDateFill.Color = 52377
    DateAppearance.SelectedDateFill.ColorTo = 52377
    DateAppearance.SelectedDateFill.BackGroundPicture.Data = {}
    DateAppearance.SelectedDateFill.Picture.Data = {}
    DateAppearance.SelectedDateFill.Opacity = 127
    DateAppearance.SelectedDateFill.OpacityTo = 190
    DateAppearance.SelectedDateFill.BorderColor = clGray
    DateAppearance.CurrentDateFont.Charset = DEFAULT_CHARSET
    DateAppearance.CurrentDateFont.Color = clWindowText
    DateAppearance.CurrentDateFont.Height = -12
    DateAppearance.CurrentDateFont.Name = 'Tahoma'
    DateAppearance.CurrentDateFont.Style = [fsBold]
    DateAppearance.CurrentDateFill.Color = 16763904
    DateAppearance.CurrentDateFill.ColorTo = 16764057
    DateAppearance.CurrentDateFill.BackGroundPicture.Data = {}
    DateAppearance.CurrentDateFill.Picture.Data = {}
    DateAppearance.CurrentDateFill.Opacity = 127
    DateAppearance.CurrentDateFill.OpacityTo = 192
    DateAppearance.CurrentDateFill.BorderColor = clNavy
    DateAppearance.CurrentDateFill.BorderOpacity = 217
    DateAppearance.HoverDateFont.Charset = DEFAULT_CHARSET
    DateAppearance.HoverDateFont.Color = clWindowText
    DateAppearance.HoverDateFont.Height = -11
    DateAppearance.HoverDateFont.Name = 'Tahoma'
    DateAppearance.HoverDateFont.Style = [fsBold]
    DateAppearance.HoverDateFill.Color = 16772829
    DateAppearance.HoverDateFill.ColorTo = 16764057
    DateAppearance.HoverDateFill.BackGroundPicture.Data = {}
    DateAppearance.HoverDateFill.Picture.Data = {}
    DateAppearance.HoverDateFill.Opacity = 128
    DateAppearance.HoverDateFill.OpacityTo = 191
    DateAppearance.HoverDateFill.BorderColor = clWhite
    DateAppearance.MonthDateFont.Charset = DEFAULT_CHARSET
    DateAppearance.MonthDateFont.Color = clWindowText
    DateAppearance.MonthDateFont.Height = -11
    DateAppearance.MonthDateFont.Name = 'Tahoma'
    DateAppearance.MonthDateFont.Style = []
    DateAppearance.YearDateFont.Charset = DEFAULT_CHARSET
    DateAppearance.YearDateFont.Color = clWindowText
    DateAppearance.YearDateFont.Height = -11
    DateAppearance.YearDateFont.Name = 'Tahoma'
    DateAppearance.YearDateFont.Style = []
    DateAppearance.WeekNumbers.Visible = True
    DateAppearance.WeekNumbers.Font.Charset = DEFAULT_CHARSET
    DateAppearance.WeekNumbers.Font.Color = clWindowText
    DateAppearance.WeekNumbers.Font.Height = -11
    DateAppearance.WeekNumbers.Font.Name = 'Tahoma'
    DateAppearance.WeekNumbers.Font.Style = [fsBold]
    DateAppearance.WeekNumbers.Fill.Color = clWhite
    DateAppearance.WeekNumbers.Fill.ColorTo = clWhite
    DateAppearance.WeekNumbers.Fill.GradientType = gtHorizontal
    DateAppearance.WeekNumbers.Fill.BackGroundPicture.Data = {}
    DateAppearance.WeekNumbers.Fill.Picture.Data = {}
    DateAppearance.WeekNumbers.Fill.Opacity = 128
    DateAppearance.WeekNumbers.Fill.OpacityTo = 190
    DateAppearance.WeekNumbers.Fill.BorderColor = 10066329
    DateAppearance.WeekNumbers.Fill.BorderOpacity = 154
    DateAppearance.WeekNumbers.Width = 20
    Header.Fill.ColorTo = clWhite
    Header.Fill.BackGroundPicture.Data = {}
    Header.Fill.Picture.Data = {}
    Header.Fill.Opacity = 123
    Header.Fill.OpacityTo = 89
    Header.Fill.BorderColor = 10066329
    Header.Fill.BorderOpacity = 151
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clWhite
    Header.Font.Height = -16
    Header.Font.Name = 'Tahoma'
    Header.Font.Style = [fsBold]
    Footer.Fill.Color = clWhite
    Footer.Fill.ColorTo = clSilver
    Footer.Fill.BackGroundPicture.Data = {}
    Footer.Fill.Picture.Data = {}
    Footer.Fill.Opacity = 86
    Footer.Fill.OpacityTo = 138
    Footer.Fill.BorderColor = 10066329
    Footer.Fill.BorderOpacity = 145
    Footer.Font.Charset = DEFAULT_CHARSET
    Footer.Font.Color = clWindowText
    Footer.Font.Height = -13
    Footer.Font.Name = 'Tahoma'
    Footer.Font.Style = []
    Footer.CurrentDateCaption = False
    Version = '1.0.0.0'
    OnSelectDate = AdvSmoothCalendar1SelectDate
    OnSelectMultiDate = AdvSmoothCalendar1SelectMultiDate
    OnMonthChanged = AdvSmoothCalendar1MonthChanged
    TabOrder = 0
    TabStop = True
  end
  object AdvSmoothCalendar2: TAdvSmoothCalendar
    Left = 8
    Top = 83
    Width = 257
    Height = 249
    Animation = False
    Year = 2008
    Month = 7
    Fill.Color = 15984090
    Fill.ColorTo = 15785680
    Fill.BackGroundPicture.Data = {}
    Fill.Picture.Data = {}
    Fill.Rounding = 1
    DateAppearance.DateFont.Charset = DEFAULT_CHARSET
    DateAppearance.DateFont.Color = clWindowText
    DateAppearance.DateFont.Height = -11
    DateAppearance.DateFont.Name = 'Tahoma'
    DateAppearance.DateFont.Style = []
    DateAppearance.DateFill.Color = 16773091
    DateAppearance.DateFill.ColorTo = 16768452
    DateAppearance.DateFill.ColorMirror = 16765357
    DateAppearance.DateFill.ColorMirrorTo = 16767936
    DateAppearance.DateFill.GradientMirrorType = gtVertical
    DateAppearance.DayOfWeekFont.Charset = DEFAULT_CHARSET
    DateAppearance.DayOfWeekFont.Color = clWindowText
    DateAppearance.DayOfWeekFont.Height = -11
    DateAppearance.DayOfWeekFont.Name = 'Tahoma'
    DateAppearance.DayOfWeekFont.Style = []
    DateAppearance.DayOfWeekFill.Color = 15984090
    DateAppearance.DayOfWeekFill.ColorTo = 15785680
    DateAppearance.SelectedDateFont.Charset = DEFAULT_CHARSET
    DateAppearance.SelectedDateFont.Color = clWindowText
    DateAppearance.SelectedDateFont.Height = -11
    DateAppearance.SelectedDateFont.Name = 'Tahoma'
    DateAppearance.SelectedDateFont.Style = []
    DateAppearance.SelectedDateFill.Color = 11196927
    DateAppearance.SelectedDateFill.ColorTo = 7257087
    DateAppearance.SelectedDateFill.ColorMirror = 4370174
    DateAppearance.SelectedDateFill.ColorMirrorTo = 8053246
    DateAppearance.SelectedDateFill.GradientMirrorType = gtVertical
    DateAppearance.SelectedDateFill.BorderColor = 4370174
    DateAppearance.CurrentDateFont.Charset = DEFAULT_CHARSET
    DateAppearance.CurrentDateFont.Color = clWindowText
    DateAppearance.CurrentDateFont.Height = -11
    DateAppearance.CurrentDateFont.Name = 'Tahoma'
    DateAppearance.CurrentDateFont.Style = [fsBold]
    DateAppearance.CurrentDateFill.Color = 7778289
    DateAppearance.CurrentDateFill.ColorTo = 4296947
    DateAppearance.CurrentDateFill.ColorMirror = 946929
    DateAppearance.CurrentDateFill.ColorMirrorTo = 5021693
    DateAppearance.CurrentDateFill.GradientMirrorType = gtVertical
    DateAppearance.CurrentDateFill.BackGroundPicture.Data = {}
    DateAppearance.CurrentDateFill.Picture.Data = {}
    DateAppearance.CurrentDateFill.BorderColor = 4548219
    DateAppearance.HoverDateFont.Charset = DEFAULT_CHARSET
    DateAppearance.HoverDateFont.Color = clWindowText
    DateAppearance.HoverDateFont.Height = -11
    DateAppearance.HoverDateFont.Name = 'Tahoma'
    DateAppearance.HoverDateFont.Style = []
    DateAppearance.HoverDateFill.Color = 15465983
    DateAppearance.HoverDateFill.ColorTo = 11332863
    DateAppearance.HoverDateFill.ColorMirror = 5888767
    DateAppearance.HoverDateFill.ColorMirrorTo = 10807807
    DateAppearance.HoverDateFill.GradientMirrorType = gtVertical
    DateAppearance.HoverDateFill.BorderColor = 10079963
    DateAppearance.MonthDateFont.Charset = DEFAULT_CHARSET
    DateAppearance.MonthDateFont.Color = clWindowText
    DateAppearance.MonthDateFont.Height = -11
    DateAppearance.MonthDateFont.Name = 'Tahoma'
    DateAppearance.MonthDateFont.Style = []
    DateAppearance.YearDateFont.Charset = DEFAULT_CHARSET
    DateAppearance.YearDateFont.Color = clWindowText
    DateAppearance.YearDateFont.Height = -11
    DateAppearance.YearDateFont.Name = 'Tahoma'
    DateAppearance.YearDateFont.Style = []
    DateAppearance.WeekNumbers.Font.Charset = DEFAULT_CHARSET
    DateAppearance.WeekNumbers.Font.Color = clWindowText
    DateAppearance.WeekNumbers.Font.Height = -11
    DateAppearance.WeekNumbers.Font.Name = 'Tahoma'
    DateAppearance.WeekNumbers.Font.Style = []
    DateAppearance.WeekNumbers.Fill.Color = 15984090
    DateAppearance.WeekNumbers.Fill.ColorTo = 15785680
    Header.Fill.Color = 16773091
    Header.Fill.ColorTo = 16765615
    Header.Fill.BorderColor = 16765615
    Header.ArrowColor = 7485192
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = 7485192
    Header.Font.Height = -11
    Header.Font.Name = 'Tahoma'
    Header.Font.Style = []
    Footer.Fill.Color = 16773091
    Footer.Fill.ColorTo = 16765615
    Footer.Fill.BorderColor = 16765615
    Footer.Font.Charset = DEFAULT_CHARSET
    Footer.Font.Color = 7485192
    Footer.Font.Height = -11
    Footer.Font.Name = 'Tahoma'
    Footer.Font.Style = []
    Version = '1.0.0.0'
    MultiSelect = True
    TabOrder = 1
    TabStop = True
  end
  object AdvSmoothDatePicker1: TAdvSmoothDatePicker
    Left = 320
    Top = 338
    Width = 257
    Height = 21
    Flat = False
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    Enabled = True
    TabOrder = 2
    Text = '18/07/2008'
    Visible = True
    Version = '1.0.0.0'
    ButtonStyle = bsDropDown
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
    HideCalendarAfterSelection = True
    Calendar.DateAppearance.DateFont.Charset = DEFAULT_CHARSET
    Calendar.DateAppearance.DateFont.Color = clWindowText
    Calendar.DateAppearance.DateFont.Height = -11
    Calendar.DateAppearance.DateFont.Name = 'Tahoma'
    Calendar.DateAppearance.DateFont.Style = []
    Calendar.DateAppearance.DayOfWeekFont.Charset = DEFAULT_CHARSET
    Calendar.DateAppearance.DayOfWeekFont.Color = clWindowText
    Calendar.DateAppearance.DayOfWeekFont.Height = -11
    Calendar.DateAppearance.DayOfWeekFont.Name = 'Tahoma'
    Calendar.DateAppearance.DayOfWeekFont.Style = []
    Calendar.DateAppearance.SelectedDateFont.Charset = DEFAULT_CHARSET
    Calendar.DateAppearance.SelectedDateFont.Color = clWindowText
    Calendar.DateAppearance.SelectedDateFont.Height = -11
    Calendar.DateAppearance.SelectedDateFont.Name = 'Tahoma'
    Calendar.DateAppearance.SelectedDateFont.Style = []
    Calendar.DateAppearance.CurrentDateFont.Charset = DEFAULT_CHARSET
    Calendar.DateAppearance.CurrentDateFont.Color = clWindowText
    Calendar.DateAppearance.CurrentDateFont.Height = -11
    Calendar.DateAppearance.CurrentDateFont.Name = 'Tahoma'
    Calendar.DateAppearance.CurrentDateFont.Style = []
    Calendar.DateAppearance.HoverDateFont.Charset = DEFAULT_CHARSET
    Calendar.DateAppearance.HoverDateFont.Color = clWindowText
    Calendar.DateAppearance.HoverDateFont.Height = -11
    Calendar.DateAppearance.HoverDateFont.Name = 'Tahoma'
    Calendar.DateAppearance.HoverDateFont.Style = []
    Calendar.DateAppearance.MonthDateFont.Charset = DEFAULT_CHARSET
    Calendar.DateAppearance.MonthDateFont.Color = clWindowText
    Calendar.DateAppearance.MonthDateFont.Height = -11
    Calendar.DateAppearance.MonthDateFont.Name = 'Tahoma'
    Calendar.DateAppearance.MonthDateFont.Style = []
    Calendar.DateAppearance.YearDateFont.Charset = DEFAULT_CHARSET
    Calendar.DateAppearance.YearDateFont.Color = clWindowText
    Calendar.DateAppearance.YearDateFont.Height = -11
    Calendar.DateAppearance.YearDateFont.Name = 'Tahoma'
    Calendar.DateAppearance.YearDateFont.Style = []
    Calendar.DateAppearance.WeekNumbers.Font.Charset = DEFAULT_CHARSET
    Calendar.DateAppearance.WeekNumbers.Font.Color = clWindowText
    Calendar.DateAppearance.WeekNumbers.Font.Height = -11
    Calendar.DateAppearance.WeekNumbers.Font.Name = 'Tahoma'
    Calendar.DateAppearance.WeekNumbers.Font.Style = []
    Calendar.Footer.Font.Charset = DEFAULT_CHARSET
    Calendar.Footer.Font.Color = clWindowText
    Calendar.Footer.Font.Height = -11
    Calendar.Footer.Font.Name = 'Tahoma'
    Calendar.Footer.Font.Style = []
    Calendar.Header.Font.Charset = DEFAULT_CHARSET
    Calendar.Header.Font.Color = clWindowText
    Calendar.Header.Font.Height = -11
    Calendar.Header.Font.Name = 'Tahoma'
    Calendar.Header.Font.Style = []
    Date = 39647.000000000000000000
  end
  object AdvSmoothDatePicker2: TAdvSmoothDatePicker
    Left = 8
    Top = 338
    Width = 89
    Height = 21
    Flat = False
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    Enabled = True
    TabOrder = 3
    Text = '18/07/2008'
    Visible = True
    Version = '1.0.0.0'
    ButtonStyle = bsDropDown
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
    HideCalendarAfterSelection = True
    Calendar.DateAppearance.DateFont.Charset = DEFAULT_CHARSET
    Calendar.DateAppearance.DateFont.Color = clWindowText
    Calendar.DateAppearance.DateFont.Height = -11
    Calendar.DateAppearance.DateFont.Name = 'Tahoma'
    Calendar.DateAppearance.DateFont.Style = []
    Calendar.DateAppearance.DayOfWeekFont.Charset = DEFAULT_CHARSET
    Calendar.DateAppearance.DayOfWeekFont.Color = clWindowText
    Calendar.DateAppearance.DayOfWeekFont.Height = -11
    Calendar.DateAppearance.DayOfWeekFont.Name = 'Tahoma'
    Calendar.DateAppearance.DayOfWeekFont.Style = []
    Calendar.DateAppearance.SelectedDateFont.Charset = DEFAULT_CHARSET
    Calendar.DateAppearance.SelectedDateFont.Color = clWindowText
    Calendar.DateAppearance.SelectedDateFont.Height = -11
    Calendar.DateAppearance.SelectedDateFont.Name = 'Tahoma'
    Calendar.DateAppearance.SelectedDateFont.Style = []
    Calendar.DateAppearance.CurrentDateFont.Charset = DEFAULT_CHARSET
    Calendar.DateAppearance.CurrentDateFont.Color = clWindowText
    Calendar.DateAppearance.CurrentDateFont.Height = -11
    Calendar.DateAppearance.CurrentDateFont.Name = 'Tahoma'
    Calendar.DateAppearance.CurrentDateFont.Style = []
    Calendar.DateAppearance.HoverDateFont.Charset = DEFAULT_CHARSET
    Calendar.DateAppearance.HoverDateFont.Color = clWindowText
    Calendar.DateAppearance.HoverDateFont.Height = -11
    Calendar.DateAppearance.HoverDateFont.Name = 'Tahoma'
    Calendar.DateAppearance.HoverDateFont.Style = []
    Calendar.DateAppearance.MonthDateFont.Charset = DEFAULT_CHARSET
    Calendar.DateAppearance.MonthDateFont.Color = clWindowText
    Calendar.DateAppearance.MonthDateFont.Height = -11
    Calendar.DateAppearance.MonthDateFont.Name = 'Tahoma'
    Calendar.DateAppearance.MonthDateFont.Style = []
    Calendar.DateAppearance.YearDateFont.Charset = DEFAULT_CHARSET
    Calendar.DateAppearance.YearDateFont.Color = clWindowText
    Calendar.DateAppearance.YearDateFont.Height = -11
    Calendar.DateAppearance.YearDateFont.Name = 'Tahoma'
    Calendar.DateAppearance.YearDateFont.Style = []
    Calendar.DateAppearance.WeekNumbers.Font.Charset = DEFAULT_CHARSET
    Calendar.DateAppearance.WeekNumbers.Font.Color = clWindowText
    Calendar.DateAppearance.WeekNumbers.Font.Height = -11
    Calendar.DateAppearance.WeekNumbers.Font.Name = 'Tahoma'
    Calendar.DateAppearance.WeekNumbers.Font.Style = []
    Calendar.Footer.Font.Charset = DEFAULT_CHARSET
    Calendar.Footer.Font.Color = clWindowText
    Calendar.Footer.Font.Height = -11
    Calendar.Footer.Font.Name = 'Tahoma'
    Calendar.Footer.Font.Style = []
    Calendar.Header.Font.Charset = DEFAULT_CHARSET
    Calendar.Header.Font.Color = clWindowText
    Calendar.Header.Font.Height = -11
    Calendar.Header.Font.Name = 'Tahoma'
    Calendar.Header.Font.Style = []
    Date = 39647.000000000000000000
  end
  object ComboBox1: TComboBox
    Left = 48
    Top = 56
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 4
    OnChange = ComboBox1Change
    Items.Strings = (
      'Office 2003 Blue'
      'Office 2003 Silver'
      'Office 2003 Olive'
      'Office 2003 Classic'
      'Office 2007 Luna'
      'Office 2007 Obsidian'
      'Office 2007 Silver')
  end
  object CheckBox1: TCheckBox
    Left = 320
    Top = 8
    Width = 185
    Height = 17
    Caption = 'Multiselect (Drag and hold mouse)'
    TabOrder = 5
    OnClick = CheckBox1Click
  end
  object CheckBox2: TCheckBox
    Left = 320
    Top = 31
    Width = 97
    Height = 17
    Caption = 'Animation'
    Checked = True
    State = cbChecked
    TabOrder = 6
    OnClick = CheckBox2Click
  end
end
