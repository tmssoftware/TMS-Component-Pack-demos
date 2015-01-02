object Form790: TForm790
  Left = 0
  Top = 0
  Caption = 'TMS Advanced Calendar Group'
  ClientHeight = 648
  ClientWidth = 885
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 885
    Height = 49
    Align = alTop
    TabOrder = 0
    DesignSize = (
      885
      49)
    object SpeedButton1: TSpeedButton
      Left = 856
      Top = 3
      Width = 25
      Height = 25
      Anchors = [akTop, akRight]
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000C30E0000C30E00000001000000010000B5683B00B570
        3B00B5704900B4774900B5774A00C0704000C0784000C4774900C0785000C080
        5000C3845E00D0805000D0885000C3856000C28E6700CE8E6700CE8F6900D088
        6000C3906A00D0906000D0986000CA9A7300CB9C7700CC987800D0987000D49E
        7C00E0987000CFA37F00E0A07000FF1DF200CFA28700CFA68600D0A08300D0A4
        8000D0A18400D1A28400D0A68400D1A68400D8A68600D0A68C00D8A78800D0A9
        8B00E0A08000E0A88000E0A89000E0B09000E0B8A000E0C0A000E0C8B000E6CD
        B900E6CEB900E9CDB800EACFBB00E8D0BF00E9D1C200E8D3C100EFDDCF00EFDE
        CE00F0D0C000F0D8C000F0DDCD00F0DECE00F2E4D900F0E8E000F0F0F000F0F8
        F000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001D1D1D1D3725
        0D00000D23361D1D1D1D1D1D3E240106090B09060500233E1D1D1D3E16091111
        0C0C0B0B090805173E1D1D2709131311113F3F0B0B090805221D370213131313
        1141410B0B0B09080035290B141313131311110C0C0B0B090520121314131313
        133F3A110C0B0B0B060A0414181413131340412B110C0B0B090004141A181413
        132A41412E110C0C0B0010131A1A18141313133F412B110C090A28111A1A2F41
        3B1313304130111106213407181A1C41413B2D40412C131101321D26111A1A2F
        41414141301313091B1D1D3D1911181A1A2D2D1813130915391D1D1D3C260711
        131414130B021E381D1D1D1D1D1D33260F03030E1F311D1D1D1D}
      OnClick = SpeedButton1Click
    end
    object Label1: TLabel
      Left = 455
      Top = 19
      Width = 72
      Height = 13
      Caption = 'Date selection:'
    end
    object Button1: TButton
      Left = 89
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Next'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 8
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Previous'
      TabOrder = 1
      OnClick = Button2Click
    end
    object RadioGroup1: TRadioGroup
      Left = 170
      Top = 6
      Width = 279
      Height = 37
      Caption = 'Selection mode'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Single'
        'Multi'
        'Disjunct')
      TabOrder = 2
      OnClick = RadioGroup1Click
    end
    object ComboBox1: TComboBox
      Left = 535
      Top = 15
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 3
      OnChange = ComboBox1Change
      Items.Strings = (
        'Single Selection Mode Sample'
        'Multi Selection Mode Sample'
        'Disjunct Selection Mode Sample')
    end
    object Button3: TButton
      Left = 686
      Top = 13
      Width = 123
      Height = 25
      Caption = 'Show Selected Date(s)'
      TabOrder = 4
      OnClick = Button3Click
    end
  end
  object AdvSmoothCalendarGroup1: TAdvSmoothCalendarGroup
    Left = 0
    Top = 49
    Width = 885
    Height = 599
    Header.Fill.Color = 15588301
    Header.Fill.ColorTo = clNone
    Header.Fill.ColorMirror = clNone
    Header.Fill.ColorMirrorTo = clNone
    Header.Fill.GradientType = gtVertical
    Header.Fill.GradientMirrorType = gtSolid
    Header.Fill.BorderColor = 15654351
    Header.Fill.Rounding = 0
    Header.Fill.ShadowOffset = 0
    Header.Fill.Glow = gmNone
    Header.ArrowColor = 5978398
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = 5978398
    Header.Font.Height = -11
    Header.Font.Name = 'Tahoma'
    Header.Font.Style = []
    Footer.Fill.Color = 15588301
    Footer.Fill.ColorTo = clNone
    Footer.Fill.ColorMirror = clNone
    Footer.Fill.ColorMirrorTo = clNone
    Footer.Fill.GradientType = gtVertical
    Footer.Fill.GradientMirrorType = gtSolid
    Footer.Fill.BorderColor = 15654351
    Footer.Fill.Rounding = 0
    Footer.Fill.ShadowOffset = 0
    Footer.Fill.Glow = gmNone
    Footer.Font.Charset = DEFAULT_CHARSET
    Footer.Font.Color = 5978398
    Footer.Font.Height = -11
    Footer.Font.Name = 'Tahoma'
    Footer.Font.Style = []
    OnDateFill = AdvSmoothCalendarGroup1DateFill
    Fill.Color = 15588301
    Fill.ColorTo = clNone
    Fill.ColorMirror = clNone
    Fill.ColorMirrorTo = clNone
    Fill.GradientType = gtVertical
    Fill.GradientMirrorType = gtSolid
    Fill.BorderColor = clNone
    Fill.Rounding = 0
    Fill.ShadowOffset = 0
    Fill.Glow = gmNone
    Month = 10
    Year = 2012
    TabOrder = 1
    ShowHint = True
    Version = '1.1.0.0'
    DateAppearance.DateFont.Charset = DEFAULT_CHARSET
    DateAppearance.DateFont.Color = clBlack
    DateAppearance.DateFont.Height = -11
    DateAppearance.DateFont.Name = 'Tahoma'
    DateAppearance.DateFont.Style = []
    DateAppearance.DateFill.Color = 15588301
    DateAppearance.DateFill.ColorTo = clNone
    DateAppearance.DateFill.ColorMirror = clNone
    DateAppearance.DateFill.ColorMirrorTo = clNone
    DateAppearance.DateFill.GradientType = gtVertical
    DateAppearance.DateFill.GradientMirrorType = gtVertical
    DateAppearance.DateFill.BorderColor = clNone
    DateAppearance.DateFill.Rounding = 0
    DateAppearance.DateFill.ShadowOffset = 0
    DateAppearance.DateFill.Glow = gmNone
    DateAppearance.DayOfWeekFont.Charset = DEFAULT_CHARSET
    DateAppearance.DayOfWeekFont.Color = clBlack
    DateAppearance.DayOfWeekFont.Height = -11
    DateAppearance.DayOfWeekFont.Name = 'Tahoma'
    DateAppearance.DayOfWeekFont.Style = []
    DateAppearance.DayOfWeekFill.Color = 15588301
    DateAppearance.DayOfWeekFill.ColorTo = clNone
    DateAppearance.DayOfWeekFill.ColorMirror = clNone
    DateAppearance.DayOfWeekFill.ColorMirrorTo = clNone
    DateAppearance.DayOfWeekFill.GradientType = gtVertical
    DateAppearance.DayOfWeekFill.GradientMirrorType = gtSolid
    DateAppearance.DayOfWeekFill.BorderColor = 16762522
    DateAppearance.DayOfWeekFill.Rounding = 0
    DateAppearance.DayOfWeekFill.ShadowOffset = 0
    DateAppearance.DayOfWeekFill.Glow = gmNone
    DateAppearance.SelectedDateFont.Charset = DEFAULT_CHARSET
    DateAppearance.SelectedDateFont.Color = clBlack
    DateAppearance.SelectedDateFont.Height = -11
    DateAppearance.SelectedDateFont.Name = 'Tahoma'
    DateAppearance.SelectedDateFont.Style = []
    DateAppearance.SelectedDateFill.Color = 14598569
    DateAppearance.SelectedDateFill.ColorTo = clNone
    DateAppearance.SelectedDateFill.ColorMirror = clNone
    DateAppearance.SelectedDateFill.ColorMirrorTo = clNone
    DateAppearance.SelectedDateFill.GradientType = gtVertical
    DateAppearance.SelectedDateFill.GradientMirrorType = gtVertical
    DateAppearance.SelectedDateFill.BorderColor = clNone
    DateAppearance.SelectedDateFill.Rounding = 0
    DateAppearance.SelectedDateFill.ShadowOffset = 0
    DateAppearance.SelectedDateFill.Glow = gmNone
    DateAppearance.CurrentDateFont.Charset = DEFAULT_CHARSET
    DateAppearance.CurrentDateFont.Color = clBlack
    DateAppearance.CurrentDateFont.Height = -11
    DateAppearance.CurrentDateFont.Name = 'Tahoma'
    DateAppearance.CurrentDateFont.Style = []
    DateAppearance.CurrentDateFill.Color = 15588301
    DateAppearance.CurrentDateFill.ColorTo = clNone
    DateAppearance.CurrentDateFill.ColorMirror = clNone
    DateAppearance.CurrentDateFill.ColorMirrorTo = clNone
    DateAppearance.CurrentDateFill.GradientType = gtVertical
    DateAppearance.CurrentDateFill.GradientMirrorType = gtVertical
    DateAppearance.CurrentDateFill.BorderColor = 351433
    DateAppearance.CurrentDateFill.Rounding = 0
    DateAppearance.CurrentDateFill.ShadowOffset = 0
    DateAppearance.CurrentDateFill.Glow = gmNone
    DateAppearance.WeekendFill.Color = 15588301
    DateAppearance.WeekendFill.ColorTo = clNone
    DateAppearance.WeekendFill.ColorMirror = clNone
    DateAppearance.WeekendFill.ColorMirrorTo = clNone
    DateAppearance.WeekendFill.GradientType = gtVertical
    DateAppearance.WeekendFill.GradientMirrorType = gtVertical
    DateAppearance.WeekendFill.BorderColor = clNone
    DateAppearance.WeekendFill.Rounding = 0
    DateAppearance.WeekendFill.ShadowOffset = 0
    DateAppearance.WeekendFill.Glow = gmNone
    DateAppearance.WeekendFont.Charset = DEFAULT_CHARSET
    DateAppearance.WeekendFont.Color = clBlack
    DateAppearance.WeekendFont.Height = -11
    DateAppearance.WeekendFont.Name = 'Tahoma'
    DateAppearance.WeekendFont.Style = []
    DateAppearance.HoverDateFont.Charset = DEFAULT_CHARSET
    DateAppearance.HoverDateFont.Color = 5978398
    DateAppearance.HoverDateFont.Height = -11
    DateAppearance.HoverDateFont.Name = 'Tahoma'
    DateAppearance.HoverDateFont.Style = []
    DateAppearance.HoverDateFill.Color = 16772059
    DateAppearance.HoverDateFill.ColorTo = clNone
    DateAppearance.HoverDateFill.ColorMirror = clNone
    DateAppearance.HoverDateFill.ColorMirrorTo = clNone
    DateAppearance.HoverDateFill.GradientType = gtVertical
    DateAppearance.HoverDateFill.GradientMirrorType = gtVertical
    DateAppearance.HoverDateFill.BorderColor = clNone
    DateAppearance.HoverDateFill.Rounding = 0
    DateAppearance.HoverDateFill.ShadowOffset = 0
    DateAppearance.HoverDateFill.Glow = gmNone
    DateAppearance.MonthDateFont.Charset = DEFAULT_CHARSET
    DateAppearance.MonthDateFont.Color = clBlack
    DateAppearance.MonthDateFont.Height = -11
    DateAppearance.MonthDateFont.Name = 'Tahoma'
    DateAppearance.MonthDateFont.Style = []
    DateAppearance.YearDateFont.Charset = DEFAULT_CHARSET
    DateAppearance.YearDateFont.Color = clBlack
    DateAppearance.YearDateFont.Height = -11
    DateAppearance.YearDateFont.Name = 'Tahoma'
    DateAppearance.YearDateFont.Style = []
    DateAppearance.WeekNumbers.Font.Charset = DEFAULT_CHARSET
    DateAppearance.WeekNumbers.Font.Color = clWindowText
    DateAppearance.WeekNumbers.Font.Height = -11
    DateAppearance.WeekNumbers.Font.Name = 'Tahoma'
    DateAppearance.WeekNumbers.Font.Style = []
    DateAppearance.WeekNumbers.Fill.Color = 15588301
    DateAppearance.WeekNumbers.Fill.ColorTo = clNone
    DateAppearance.WeekNumbers.Fill.ColorMirror = clNone
    DateAppearance.WeekNumbers.Fill.ColorMirrorTo = clNone
    DateAppearance.WeekNumbers.Fill.GradientType = gtVertical
    DateAppearance.WeekNumbers.Fill.GradientMirrorType = gtSolid
    DateAppearance.WeekNumbers.Fill.BorderColor = 16762522
    DateAppearance.WeekNumbers.Fill.Rounding = 0
    DateAppearance.WeekNumbers.Fill.ShadowOffset = 0
    DateAppearance.WeekNumbers.Fill.Glow = gmNone
    DateAppearance.DisabledDateFont.Charset = DEFAULT_CHARSET
    DateAppearance.DisabledDateFont.Color = clWhite
    DateAppearance.DisabledDateFont.Height = -11
    DateAppearance.DisabledDateFont.Name = 'Tahoma'
    DateAppearance.DisabledDateFont.Style = []
    DateAppearance.DisabledDateFill.Color = 14598569
    DateAppearance.DisabledDateFill.ColorTo = clNone
    DateAppearance.DisabledDateFill.ColorMirror = clNone
    DateAppearance.DisabledDateFill.ColorMirrorTo = clNone
    DateAppearance.DisabledDateFill.GradientType = gtVertical
    DateAppearance.DisabledDateFill.GradientMirrorType = gtVertical
    DateAppearance.DisabledDateFill.BorderColor = clNone
    DateAppearance.DisabledDateFill.Rounding = 0
    DateAppearance.DisabledDateFill.ShadowOffset = 0
    DateAppearance.DisabledDateFill.Glow = gmNone
    DateAppearance.DateBeforeFill.Color = 15588301
    DateAppearance.DateBeforeFill.ColorTo = clNone
    DateAppearance.DateBeforeFill.ColorMirror = clNone
    DateAppearance.DateBeforeFill.ColorMirrorTo = clNone
    DateAppearance.DateBeforeFill.GradientType = gtVertical
    DateAppearance.DateBeforeFill.GradientMirrorType = gtSolid
    DateAppearance.DateBeforeFill.BorderColor = clNone
    DateAppearance.DateBeforeFill.Rounding = 0
    DateAppearance.DateBeforeFill.ShadowOffset = 0
    DateAppearance.DateBeforeFill.Glow = gmNone
    DateAppearance.DateAfterFill.Color = 15588301
    DateAppearance.DateAfterFill.ColorTo = clNone
    DateAppearance.DateAfterFill.ColorMirror = clNone
    DateAppearance.DateAfterFill.ColorMirrorTo = clNone
    DateAppearance.DateAfterFill.GradientType = gtVertical
    DateAppearance.DateAfterFill.GradientMirrorType = gtSolid
    DateAppearance.DateAfterFill.BorderColor = clNone
    DateAppearance.DateAfterFill.Rounding = 0
    DateAppearance.DateAfterFill.ShadowOffset = 0
    DateAppearance.DateAfterFill.Glow = gmNone
    DateAppearance.DateBeforeFont.Charset = DEFAULT_CHARSET
    DateAppearance.DateBeforeFont.Color = 11370846
    DateAppearance.DateBeforeFont.Height = -11
    DateAppearance.DateBeforeFont.Name = 'Tahoma'
    DateAppearance.DateBeforeFont.Style = []
    DateAppearance.DateAfterFont.Charset = DEFAULT_CHARSET
    DateAppearance.DateAfterFont.Color = 11370846
    DateAppearance.DateAfterFont.Height = -11
    DateAppearance.DateAfterFont.Name = 'Tahoma'
    DateAppearance.DateAfterFont.Style = []
    StatusAppearance.Fill.Color = clRed
    StatusAppearance.Fill.ColorMirror = clNone
    StatusAppearance.Fill.ColorMirrorTo = clNone
    StatusAppearance.Fill.GradientType = gtSolid
    StatusAppearance.Fill.GradientMirrorType = gtSolid
    StatusAppearance.Fill.BorderColor = clGray
    StatusAppearance.Fill.Rounding = 0
    StatusAppearance.Fill.ShadowOffset = 0
    StatusAppearance.Fill.Glow = gmNone
    StatusAppearance.Font.Charset = DEFAULT_CHARSET
    StatusAppearance.Font.Color = clWhite
    StatusAppearance.Font.Height = -11
    StatusAppearance.Font.Name = 'Tahoma'
    StatusAppearance.Font.Style = []
    OnDateHint = AdvSmoothCalendarGroup1DateHint
    OnDateStatus = AdvSmoothCalendarGroup1DateStatus
    OnDateStatusClick = AdvSmoothCalendarGroup1DateStatusClick
    Align = alClient
  end
end
