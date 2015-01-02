object Form343: TForm343
  Left = 0
  Top = 0
  Caption = 'TMS Advanced Smooth Calculator Demo'
  ClientHeight = 362
  ClientWidth = 533
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 254
    Top = 85
    Width = 46
    Height = 13
    Caption = 'Precision:'
  end
  object Label2: TLabel
    Left = 254
    Top = 35
    Width = 28
    Height = 13
    Caption = 'Style:'
  end
  object AdvSmoothCalculator1: TAdvSmoothCalculator
    Left = 32
    Top = 32
    Width = 200
    Height = 200
    CalculatorLook.Font.Charset = DEFAULT_CHARSET
    CalculatorLook.Font.Color = 7485192
    CalculatorLook.Font.Height = -11
    CalculatorLook.Font.Name = 'Tahoma'
    CalculatorLook.Font.Style = []
    CalculatorLook.ButtonBevelColor = 12496803
    CalculatorLook.ButtonColorSpecial = 12496803
    CalculatorLook.ButtonColor = 16640730
    CalculatorLook.DisplayAppearance.Fill.Color = clWhite
    CalculatorLook.DisplayAppearance.Fill.ColorTo = clWhite
    CalculatorLook.DisplayAppearance.Fill.ColorMirror = clNone
    CalculatorLook.DisplayAppearance.Fill.ColorMirrorTo = clNone
    CalculatorLook.DisplayAppearance.Fill.GradientType = gtVertical
    CalculatorLook.DisplayAppearance.Fill.GradientMirrorType = gtSolid
    CalculatorLook.DisplayAppearance.Fill.Opacity = 70
    CalculatorLook.DisplayAppearance.Fill.OpacityTo = 120
    CalculatorLook.DisplayAppearance.Fill.BorderColor = clNone
    CalculatorLook.DisplayAppearance.Fill.Rounding = 0
    CalculatorLook.DisplayAppearance.Fill.ShadowOffset = 0
    CalculatorLook.DisplayAppearance.Fill.Glow = gmNone
    CalculatorLook.DisplayAppearance.ColorStart = 12223744
    CalculatorLook.DisplayAppearance.ColorEnd = 12223744
    CalculatorLook.DisplayAppearance.ColorOff = clWhite
    CalculatorLook.DisplayAppearance.ColorOffOpacity = 40
    CalculatorLook.Fill.Color = 16765615
    CalculatorLook.Fill.ColorTo = 16765615
    CalculatorLook.Fill.ColorMirror = clNone
    CalculatorLook.Fill.ColorMirrorTo = clNone
    CalculatorLook.Fill.GradientType = gtVertical
    CalculatorLook.Fill.GradientMirrorType = gtSolid
    CalculatorLook.Fill.BorderColor = 12496803
    CalculatorLook.Fill.Rounding = 0
    CalculatorLook.Fill.ShadowOffset = 0
    CalculatorLook.Fill.Glow = gmNone
    TabStop = True
  end
  object ComboBox1: TComboBox
    Left = 306
    Top = 32
    Width = 207
    Height = 21
    Style = csDropDownList
    TabOrder = 1
    OnChange = ComboBox1Change
    Items.Strings = (
      'Office 2003 Blue'
      'Office 2003 Silver'
      'Office 2003 Olive'
      'Office 2003 Classic '
      'Office 2007 Luna'
      'Office 2007 Obsidian'
      'Office 2007 Silver '
      'Windows XP'
      'Whidbey'
      'Windows Vista   '
      'Windows 7'
      'Terminal'
      'Windows 8')
  end
  object AdvSmoothCalculatorDropDown1: TAdvSmoothCalculatorDropDown
    Left = 32
    Top = 248
    Width = 200
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
    ReadOnly = False
    TabOrder = 2
    Text = '0'
    Visible = True
    Version = '1.0.0.3'
    ButtonStyle = bsDropDown
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
    HideCalculatorAfterSelection = True
    Calculator.Precision = 0
    Calculator.CalculatorLook.Font.Charset = DEFAULT_CHARSET
    Calculator.CalculatorLook.Font.Color = clWindowText
    Calculator.CalculatorLook.Font.Height = -11
    Calculator.CalculatorLook.Font.Name = 'Tahoma'
    Calculator.CalculatorLook.Font.Style = []
    Calculator.CalculatorLook.ButtonBevelColor = 12496803
    Calculator.CalculatorLook.ButtonColorSpecial = 12496803
    Calculator.CalculatorLook.ButtonColor = 16640730
    Calculator.CalculatorLook.DisplayAppearance.Fill.Color = clWhite
    Calculator.CalculatorLook.DisplayAppearance.Fill.ColorTo = clWhite
    Calculator.CalculatorLook.DisplayAppearance.Fill.ColorMirror = clNone
    Calculator.CalculatorLook.DisplayAppearance.Fill.ColorMirrorTo = clNone
    Calculator.CalculatorLook.DisplayAppearance.Fill.GradientType = gtVertical
    Calculator.CalculatorLook.DisplayAppearance.Fill.GradientMirrorType = gtSolid
    Calculator.CalculatorLook.DisplayAppearance.Fill.Opacity = 70
    Calculator.CalculatorLook.DisplayAppearance.Fill.OpacityTo = 120
    Calculator.CalculatorLook.DisplayAppearance.Fill.BorderColor = clNone
    Calculator.CalculatorLook.DisplayAppearance.Fill.Rounding = 0
    Calculator.CalculatorLook.DisplayAppearance.Fill.ShadowOffset = 0
    Calculator.CalculatorLook.DisplayAppearance.Fill.Glow = gmNone
    Calculator.CalculatorLook.DisplayAppearance.ColorStart = 12223744
    Calculator.CalculatorLook.DisplayAppearance.ColorEnd = 12223744
    Calculator.CalculatorLook.DisplayAppearance.ColorOff = clWhite
    Calculator.CalculatorLook.DisplayAppearance.ColorOffOpacity = 40
    Calculator.CalculatorLook.Fill.Color = 16765615
    Calculator.CalculatorLook.Fill.ColorTo = 16765615
    Calculator.CalculatorLook.Fill.ColorMirror = clNone
    Calculator.CalculatorLook.Fill.ColorMirrorTo = clNone
    Calculator.CalculatorLook.Fill.GradientType = gtVertical
    Calculator.CalculatorLook.Fill.GradientMirrorType = gtSolid
    Calculator.CalculatorLook.Fill.BorderColor = 12496803
    Calculator.CalculatorLook.Fill.Rounding = 0
    Calculator.CalculatorLook.Fill.ShadowOffset = 0
    Calculator.CalculatorLook.Fill.Glow = gmNone
    Calculator.Width = 200
    Calculator.Height = 200
    Calculator.AutoPrecision = False
  end
  object TrackBar1: TTrackBar
    Left = 306
    Top = 80
    Width = 207
    Height = 33
    Max = 5
    Position = 2
    TabOrder = 3
    OnChange = TrackBar1Change
  end
end
