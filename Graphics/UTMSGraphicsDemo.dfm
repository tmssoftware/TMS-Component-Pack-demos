object Form1: TForm1
  Left = 603
  Top = 191
  Caption = 'TMS Graphics demo'
  ClientHeight = 327
  ClientWidth = 639
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 109
    Height = 16
    Caption = 'Color selectors'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ColorLabel: TLabel
    Left = 320
    Top = 48
    Width = 49
    Height = 16
    Caption = 'COLOR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ColorLabel2: TLabel
    Left = 128
    Top = 48
    Width = 49
    Height = 16
    Caption = 'COLOR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ColorLabel3: TLabel
    Left = 472
    Top = 48
    Width = 49
    Height = 16
    Caption = 'COLOR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 88
    Width = 474
    Height = 16
    Caption = 
      'Pen width, pen style, shadpw, gradientdirection, border selector' +
      's'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 168
    Width = 93
    Height = 16
    Caption = 'Tool selector'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 136
    Top = 168
    Width = 232
    Height = 16
    Caption = 'Font selector && generic selector'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 16
    Top = 248
    Width = 191
    Height = 16
    Caption = 'Table && character selector'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 136
    Top = 272
    Width = 86
    Height = 13
    Caption = 'Selected table:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 136
    Top = 296
    Width = 99
    Height = 13
    Caption = 'Selected symbol:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 248
    Top = 272
    Width = 4
    Height = 13
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 248
    Top = 296
    Width = 3
    Height = 16
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Symbol'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 16
    Top = 112
    Width = 617
    Height = 41
    TabOrder = 0
    object AdvPenStyleSelector2: TAdvPenStyleSelector
      Left = 40
      Top = 9
      Width = 25
      Height = 23
      TabOrder = 0
      Version = '1.4.0.0'
      AutoThemeAdapt = True
      BorderDownColor = clBlack
      BorderHotColor = clBlack
      BorderDropDownColor = 9841920
      Color = 16640730
      ColorTo = 14986888
      ColorDown = 557032
      ColorDownTo = 8182519
      ColorHot = 14483455
      ColorHotTo = 6013175
      ColorDropDown = 16251129
      ColorSelected = 7454719
      ColorSelectedTo = clNone
      ColorSelectionDown = 7323903
      ColorSelectionDownTo = clNone
      ColorSelectionHot = 12775167
      ColorSelectionHotTo = clNone
      Glyph.Data = {
        7E030000424D7E030000000000003600000028000000130000000E0000000100
        18000000000048030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000FFFFFFFFFF
        FF000000000000FFFFFFFFFFFF000000FFFFFFFFFFFF000000000000FFFFFFFF
        FFFF000000FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFF000000000000000000FFFFFF0000000000000000
        00FFFFFF000000000000000000FFFFFF000000000000000000FFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF0000
        00FFFFFF000000FFFFFF000000FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000}
      PenColor = clBlack
      SelectedIndex = -1
      Style = ssButton
      Tools = <
        item
          CaptionAlignment = taCenter
          ImageIndex = 0
          Hint = 'Solid'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 1
          Hint = 'Round Dot'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 2
          Hint = 'Square Dots'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 3
          Hint = 'Dash'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 4
          Hint = 'Dash Dots'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 5
          Hint = 'Long Dash'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 6
          Hint = 'Long Dash Dot'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 7
          Hint = 'Long Dash Dot Dot'
        end
        item
          Caption = 'More Style'
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'More Style'
          ItemType = itFullWidthButton
        end>
    end
    object AdvBrushStyleSelector2: TAdvBrushStyleSelector
      Left = 8
      Top = 9
      Width = 23
      Height = 22
      TabOrder = 1
      Version = '1.4.0.0'
      AutoThemeAdapt = True
      BorderDownColor = clBlack
      BorderHotColor = clBlack
      BorderDropDownColor = 9841920
      BrushColor = clBlack
      Color = 16640730
      ColorTo = 14986888
      ColorDown = 557032
      ColorDownTo = 8182519
      ColorHot = 14483455
      ColorHotTo = 6013175
      ColorDropDown = 16251129
      ColorSelected = 7454719
      ColorSelectedTo = clNone
      ColorSelectionDown = 7323903
      ColorSelectionDownTo = clNone
      ColorSelectionHot = 12775167
      ColorSelectionHotTo = clNone
      Glyph.Data = {
        B6030000424DB603000000000000360000002800000012000000100000000100
        18000000000080030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFA2B0B5575F6763757CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF96ADB750
        68704078902038408E98A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EB2BC60708060B8D040A8C03090B0
        2038408F99A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFF98B3C37090A080D0E070D0E060B8D040A8C03090B0203840919A
        A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFAFCDD280B8
        C090D8E080E0F080D8F070D0E060B8D040A8C03090B0304050BCBDC0FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFBDD8E490C0D0B0E8F0C0F8FFA0E8F090
        E0F080D8F070D0E060B8D06098A0605850504840B3B4B3FFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFF90D0E0B0E8F0C0FFFFC0FFFFB0F8FFB0F0FF90E0F080D8F0
        80B8C0606060808080606060504840FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        A0D8E0C0F8FFC0FFFFC0FFFFC0FFFFC0FFFFB0F8FF90C8D0807880A098A08078
        70707070505040FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF9AC4D380B8
        C0B0F0F0C0FFFFC0FFFFB0E0E0A0A0A0E0E0E0908880B0A8B0505050918993E5
        E9EBFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFDFE6E992BAC880B0C0B0
        D8E0B0B0B0F0E8F0D0C8C0E0D8E0808080806060674A4AB6B4B6E6EAECFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDD8DDB0B0B0E0E0E0D0C8D0
        E0E0E0A0A0A0C09890D06060903840684A4AB8B5B6FFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D4D5B0B0B0B0B0B0B0B0B0CFC7C4B088
        90D09090D06060903840684A4AFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAC9CBC09090E09090B0
        6870806870FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0D8D7C29595C08890FFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      SelectedIndex = -1
      Style = ssButton
      Tools = <
        item
          CaptionAlignment = taCenter
          ImageIndex = 0
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 1
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 2
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 3
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 4
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 5
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 6
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 7
        end
        item
          Caption = ' More Style'
          CaptionAlignment = taCenter
          ImageIndex = -1
          ItemType = itFullWidthButton
        end>
    end
    object AdvShadowSelector2: TAdvShadowSelector
      Left = 72
      Top = 9
      Width = 23
      Height = 22
      TabOrder = 2
      Version = '1.4.0.0'
      AutoThemeAdapt = True
      BorderDownColor = clBlack
      BorderHotColor = clBlack
      BorderDropDownColor = 9841920
      Color = 16640730
      ColorTo = 14986888
      ColorDown = 557032
      ColorDownTo = 8182519
      ColorHot = 14483455
      ColorHotTo = 6013175
      ColorDropDown = 16251129
      ColorSelected = 7454719
      ColorSelectedTo = clNone
      ColorSelectionDown = 7323903
      ColorSelectionDownTo = clNone
      ColorSelectionHot = 12775167
      ColorSelectionHotTo = clNone
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        18000000000008020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFF509050607060607060506050304030202820101810101810101810
        101810101810FFFFFF00FFFFFF50905070C08060A86060A06050986050905050
        8850508050507850407040101810FFFFFF00FFFFFF60986080C08070C08070B8
        7060B07060A86060A060509850509040507850101810FFFFFF00FFFFFF609860
        80C89080C08070C08070B87060B07060A86060A060509850508050101810FFFF
        FF00FFFFFF60987090D09080C89080C08070C08070B87060B07060A86060A060
        508850101810FFFFFF00FFFFFF70A070A0D0A090D09080C89080C08070C08070
        B87060B07060A860509050202820FFFFFF00FFFFFF70A880B0D8B0A0D0A090D0
        9080C89080C08070C08070B87060B070509860304030FFFFFF00FFFFFF80B080
        B0E0C0B0D8B0A0D0A090D09080C89080C08070C08070B87060A060506050FFFF
        FF00FFFFFF80B890C0E0C0B0E0C0B0D8B0A0D0A090D09080C89080C08070C080
        60A860607060FFFFFF00FFFFFF80C090C0E0C0C0E0C0B0E0C0B0D8B0A0D0A090
        D09080C89080C08070C080607060FFFFFF00FFFFFF90C8A080C09080B89080B0
        8070A88070A070609870609860609860509050509050FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      Style = ssButton
      SelectedIndex = -1
      Tools = <
        item
          Caption = 'No Shadow'
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'No Shadow'
          ItemType = itFullWidthButton
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 0
          Hint = 'Shadow Style 1'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 1
          Hint = 'Shadow Style 2'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 2
          Hint = 'Shadow Style 3'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 3
          Hint = 'Shadow Style 4'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 4
          Hint = 'Shadow Style 5'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 5
          Hint = 'Shadow Style 6'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 6
          Hint = 'Shadow Style 7'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 7
          Hint = 'Shadow Style 8'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 8
          Hint = 'Shadow Style 9'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 9
          Hint = 'Shadow Style 10'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 10
          Hint = 'Shadow Style 11'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 11
          Hint = 'Shadow Style 12'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 12
          Hint = 'Shadow Style 13'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 13
          Hint = 'Shadow Style 14'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 14
          Hint = 'Shadow Style 15'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 15
          Hint = 'Shadow Style 16'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 16
          Hint = 'Shadow Style 17'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 17
          Hint = 'Shadow Style 18'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 18
          Hint = 'Shadow Style 19'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 19
          Hint = 'Shadow Style 20'
        end
        item
          Caption = 'Shadow Settings'
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Shadow Settings'
          ItemType = itFullWidthButton
        end>
    end
    object AdvTableBorderSelector2: TAdvTableBorderSelector
      Left = 104
      Top = 9
      Width = 23
      Height = 22
      TabOrder = 3
      Version = '1.4.0.0'
      AutoThemeAdapt = True
      BorderDownColor = clBlack
      BorderHotColor = clBlack
      BorderDropDownColor = 9841920
      Color = 16640730
      ColorTo = 14986888
      ColorDown = 557032
      ColorDownTo = 8182519
      ColorHot = 14483455
      ColorHotTo = 6013175
      ColorDropDown = 16251129
      ColorSelected = 7454719
      ColorSelectedTo = clNone
      ColorSelectionDown = 7323903
      ColorSelectionDownTo = clNone
      ColorSelectionHot = 12775167
      ColorSelectionHotTo = clNone
      Glyph.Data = {
        06030000424D060300000000000036000000280000000F0000000F0000000100
        180000000000D0020000C40E0000C40E00000000000000000000F7F8F9F7F8F9
        F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8
        F9F7F8F9F7F8F9000000F7F8F900000000000000000000000000000000000000
        0000000000000000000000000000000000000000F7F8F9000000F7F8F9000000
        F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8
        F9000000F7F8F9000000F7F8F9000000F7F8F9F7F8F9F7F8F9F7F8F9F7F8F970
        6060F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9000000F7F8F9000000F7F8F9000000
        F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8
        F9000000F7F8F9000000F7F8F9000000F7F8F9F7F8F9F7F8F9F7F8F9F7F8F970
        6860F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9000000F7F8F9000000F7F8F9000000
        F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8
        F9000000F7F8F9000000F7F8F9000000F7F8F9807060F7F8F9807060F7F8F970
        6860F7F8F9706860F7F8F9706060F7F8F9000000F7F8F9000000F7F8F9000000
        F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8
        F9000000F7F8F9000000F7F8F9000000F7F8F9F7F8F9F7F8F9F7F8F9F7F8F980
        7060F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9000000F7F8F9000000F7F8F9000000
        F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8
        F9000000F7F8F9000000F7F8F9000000F7F8F9F7F8F9F7F8F9F7F8F9F7F8F980
        7060F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9000000F7F8F9000000F7F8F9000000
        F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8
        F9000000F7F8F9000000F7F8F900000000000000000000000000000000000000
        0000000000000000000000000000000000000000F7F8F9000000F7F8F9F7F8F9
        F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8
        F9F7F8F9F7F8F9000000}
      Style = ssButton
      SelectedIndex = -1
      Tools = <
        item
          CaptionAlignment = taCenter
          ImageIndex = 0
          Hint = 'OutSide Border'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 1
          Hint = 'All Border'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 2
          Hint = 'Top Border'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 3
          Hint = 'Left Border'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 4
          Hint = 'InSide Horizontal Border'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 5
          Hint = 'Decending Diagonal'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 6
          Hint = 'Horizontal Line'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 7
          Hint = 'Inside Border'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 8
          Hint = 'No Border'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 9
          Hint = 'Bottom Border'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 10
          Hint = 'Right Border'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 11
          Hint = 'InSide Vertical Border'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 12
          Hint = 'Ascending Diagonal'
        end>
    end
    object AdvGradientDirectionSelector1: TAdvGradientDirectionSelector
      Left = 136
      Top = 9
      Width = 23
      Height = 22
      TabOrder = 4
      Version = '1.4.0.0'
      StartColor = clGray
      EndColor = clWhite
      AutoThemeAdapt = True
      BorderDownColor = clBlack
      BorderHotColor = clBlack
      BorderDropDownColor = 9841920
      Color = 16640730
      ColorTo = 14986888
      ColorDown = 557032
      ColorDownTo = 8182519
      ColorHot = 14483455
      ColorHotTo = 6013175
      ColorDropDown = 16251129
      ColorSelected = 7454719
      ColorSelectedTo = clNone
      ColorSelectionDown = 7323903
      ColorSelectionDownTo = clNone
      ColorSelectionHot = 12775167
      ColorSelectionHotTo = clNone
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000230B0000230B00000001000000010000CE630000FFCE
        9400FFD6AD00FFE7C600FFF7E700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00050505050505
        0505050505050505050505050505050505050201010101010105050505050505
        0505020404040404010505050505050505050204040404040105050505000000
        0000000000000404010505050500060404040302020004040105050505000606
        0604040302000404010505050500060606060604030002020205020101000606
        0606060604000505050502040400060606060606040005050505020404000606
        0606060604000505050502040400060606060606040005050505020404000000
        0000000000000505050502040404040401050505050505050505020202020202
        0205050505050505050505050505050505050505050505050505}
      Style = ssButton
      SelectedIndex = -1
      Tools = <
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'VerticalIn'
          Value = 'VerticalIn'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'VerticalOut'
          Value = 'VerticalOut'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'HorizontalIn'
          Value = 'HorizontalIn'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'HorizontalOut'
          Value = 'HorizontalOut'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'VerticalInOut'
          Value = 'VerticalInOut'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'HorizontalInOut'
          Value = 'HorizontalInOut'
        end>
    end
    object AdvPenWidthSelector1: TAdvPenWidthSelector
      Left = 168
      Top = 9
      Width = 23
      Height = 22
      TabOrder = 5
      Version = '1.4.0.0'
      AutoThemeAdapt = True
      BorderDownColor = clBlack
      BorderHotColor = clBlack
      BorderDropDownColor = 9841920
      Color = 16640730
      ColorTo = 14986888
      ColorDown = 557032
      ColorDownTo = 8182519
      ColorHot = 14483455
      ColorHotTo = 6013175
      ColorDropDown = 16251129
      ColorSelected = 7454719
      ColorSelectedTo = clNone
      ColorSelectionDown = 7323903
      ColorSelectionDownTo = clNone
      ColorSelectionHot = 12775167
      ColorSelectionHotTo = clNone
      Glyph.Data = {
        A6020000424DA6020000000000003600000028000000110000000C0000000100
        18000000000070020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000FFFF
        FF00FFFFFF000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFF000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00}
      Style = ssButton
      SelectedIndex = 2
      Tools = <
        item
          Caption = '1/4 pt'
          CaptionAlignment = taLeftJustify
          ImageIndex = 0
        end
        item
          Caption = '1/2 pt'
          CaptionAlignment = taLeftJustify
          ImageIndex = 1
        end
        item
          Caption = '3/4 pt'
          CaptionAlignment = taLeftJustify
          ImageIndex = 2
        end
        item
          Caption = '1 pt'
          CaptionAlignment = taLeftJustify
          ImageIndex = 3
        end
        item
          Caption = '1 1/2 pt'
          CaptionAlignment = taLeftJustify
          ImageIndex = 4
        end
        item
          Caption = '2 1/4 pt'
          CaptionAlignment = taLeftJustify
          ImageIndex = 5
        end
        item
          Caption = '3 pt'
          CaptionAlignment = taLeftJustify
          ImageIndex = 6
        end
        item
          Caption = '4 1/2 pt'
          CaptionAlignment = taLeftJustify
          ImageIndex = 7
        end
        item
          Caption = '6 pt'
          CaptionAlignment = taLeftJustify
          ImageIndex = 8
        end
        item
          Caption = '3 pt'
          CaptionAlignment = taLeftJustify
          ImageIndex = 9
        end
        item
          Caption = '4 1/2 pt'
          CaptionAlignment = taLeftJustify
          ImageIndex = 10
        end
        item
          Caption = '4 1/2 pt'
          CaptionAlignment = taLeftJustify
          ImageIndex = 11
        end
        item
          Caption = '6 pt'
          CaptionAlignment = taLeftJustify
          ImageIndex = 12
        end
        item
          Caption = 'More Lines'
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'More Lines'
          ItemType = itFullWidthButton
        end>
    end
    object AdvPenWidthSelector2: TAdvPenWidthSelector
      Left = 472
      Top = 12
      Width = 129
      Height = 19
      TabOrder = 6
      Version = '1.4.0.0'
      AutoThemeAdapt = True
      BorderDownColor = clBlack
      BorderHotColor = clBlack
      BorderDropDownColor = 9841920
      Color = 16640730
      ColorTo = 14986888
      ColorDown = 557032
      ColorDownTo = 8182519
      ColorHot = 14483455
      ColorHotTo = 6013175
      ColorDropDown = 16251129
      ColorSelected = 7454719
      ColorSelectedTo = clNone
      ColorSelectionDown = 7323903
      ColorSelectionDownTo = clNone
      ColorSelectionHot = 12775167
      ColorSelectionHotTo = clNone
      Glyph.Data = {
        A6020000424DA6020000000000003600000028000000110000000C0000000100
        18000000000070020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000FFFF
        FF00FFFFFF000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFF000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00}
      Style = ssCombo
      SelectedIndex = -1
      Tools = <
        item
          Caption = '1/4 pt'
          CaptionAlignment = taLeftJustify
          ImageIndex = 0
        end
        item
          Caption = '1/2 pt'
          CaptionAlignment = taLeftJustify
          ImageIndex = 1
        end
        item
          Caption = '3/4 pt'
          CaptionAlignment = taLeftJustify
          ImageIndex = 2
        end
        item
          Caption = '1 pt'
          CaptionAlignment = taLeftJustify
          ImageIndex = 3
        end
        item
          Caption = '1 1/2 pt'
          CaptionAlignment = taLeftJustify
          ImageIndex = 4
        end
        item
          Caption = '2 1/4 pt'
          CaptionAlignment = taLeftJustify
          ImageIndex = 5
        end
        item
          Caption = '3 pt'
          CaptionAlignment = taLeftJustify
          ImageIndex = 6
        end
        item
          Caption = '4 1/2 pt'
          CaptionAlignment = taLeftJustify
          ImageIndex = 7
        end
        item
          Caption = '6 pt'
          CaptionAlignment = taLeftJustify
          ImageIndex = 8
        end
        item
          Caption = '3 pt'
          CaptionAlignment = taLeftJustify
          ImageIndex = 9
        end
        item
          Caption = '4 1/2 pt'
          CaptionAlignment = taLeftJustify
          ImageIndex = 10
        end
        item
          Caption = '4 1/2 pt'
          CaptionAlignment = taLeftJustify
          ImageIndex = 11
        end
        item
          Caption = '6 pt'
          CaptionAlignment = taLeftJustify
          ImageIndex = 12
        end
        item
          Caption = 'More Lines'
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'More Lines'
          ItemType = itFullWidthButton
        end>
    end
    object AdvPenStyleSelector1: TAdvPenStyleSelector
      Left = 328
      Top = 12
      Width = 133
      Height = 19
      TabOrder = 7
      Version = '1.4.0.0'
      AutoThemeAdapt = True
      BorderDownColor = clBlack
      BorderHotColor = clBlack
      BorderDropDownColor = 9841920
      Color = 16640730
      ColorTo = 14986888
      ColorDown = 557032
      ColorDownTo = 8182519
      ColorHot = 14483455
      ColorHotTo = 6013175
      ColorDropDown = 16251129
      ColorSelected = 7454719
      ColorSelectedTo = clNone
      ColorSelectionDown = 7323903
      ColorSelectionDownTo = clNone
      ColorSelectionHot = 12775167
      ColorSelectionHotTo = clNone
      Glyph.Data = {
        7E030000424D7E030000000000003600000028000000130000000E0000000100
        18000000000048030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000FFFFFFFFFF
        FF000000000000FFFFFFFFFFFF000000FFFFFFFFFFFF000000000000FFFFFFFF
        FFFF000000FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFF000000000000000000FFFFFF0000000000000000
        00FFFFFF000000000000000000FFFFFF000000000000000000FFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF0000
        00FFFFFF000000FFFFFF000000FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000}
      PenColor = clBlack
      SelectedIndex = -1
      Style = ssCombo
      Tools = <
        item
          CaptionAlignment = taCenter
          ImageIndex = 0
          Hint = 'Solid'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 1
          Hint = 'Round Dot'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 2
          Hint = 'Square Dots'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 3
          Hint = 'Dash'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 4
          Hint = 'Dash Dots'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 5
          Hint = 'Long Dash'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 6
          Hint = 'Long Dash Dot'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 7
          Hint = 'Long Dash Dot Dot'
        end
        item
          Caption = 'More Style'
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'More Style'
          ItemType = itFullWidthButton
        end>
    end
    object AdvBrushStyleSelector1: TAdvBrushStyleSelector
      Left = 207
      Top = 12
      Width = 108
      Height = 19
      TabOrder = 8
      Version = '1.4.0.0'
      AutoThemeAdapt = True
      BorderDownColor = clBlack
      BorderHotColor = clBlack
      BorderDropDownColor = 9841920
      BrushColor = clBlack
      Color = 16640730
      ColorTo = 14986888
      ColorDown = 557032
      ColorDownTo = 8182519
      ColorHot = 14483455
      ColorHotTo = 6013175
      ColorDropDown = 16251129
      ColorSelected = 7454719
      ColorSelectedTo = clNone
      ColorSelectionDown = 7323903
      ColorSelectionDownTo = clNone
      ColorSelectionHot = 12775167
      ColorSelectionHotTo = clNone
      Glyph.Data = {
        B6030000424DB603000000000000360000002800000012000000100000000100
        18000000000080030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFA2B0B5575F6763757CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF96ADB750
        68704078902038408E98A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EB2BC60708060B8D040A8C03090B0
        2038408F99A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFF98B3C37090A080D0E070D0E060B8D040A8C03090B0203840919A
        A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFAFCDD280B8
        C090D8E080E0F080D8F070D0E060B8D040A8C03090B0304050BCBDC0FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFBDD8E490C0D0B0E8F0C0F8FFA0E8F090
        E0F080D8F070D0E060B8D06098A0605850504840B3B4B3FFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFF90D0E0B0E8F0C0FFFFC0FFFFB0F8FFB0F0FF90E0F080D8F0
        80B8C0606060808080606060504840FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        A0D8E0C0F8FFC0FFFFC0FFFFC0FFFFC0FFFFB0F8FF90C8D0807880A098A08078
        70707070505040FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF9AC4D380B8
        C0B0F0F0C0FFFFC0FFFFB0E0E0A0A0A0E0E0E0908880B0A8B0505050918993E5
        E9EBFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFDFE6E992BAC880B0C0B0
        D8E0B0B0B0F0E8F0D0C8C0E0D8E0808080806060674A4AB6B4B6E6EAECFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDD8DDB0B0B0E0E0E0D0C8D0
        E0E0E0A0A0A0C09890D06060903840684A4AB8B5B6FFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D4D5B0B0B0B0B0B0B0B0B0CFC7C4B088
        90D09090D06060903840684A4AFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAC9CBC09090E09090B0
        6870806870FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0D8D7C29595C08890FFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      SelectedIndex = -1
      Style = ssCombo
      Tools = <
        item
          CaptionAlignment = taCenter
          ImageIndex = 0
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 1
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 2
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 3
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 4
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 5
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 6
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 7
        end
        item
          Caption = 'More Styles'
          CaptionAlignment = taCenter
          ImageIndex = -1
          ItemType = itFullWidthButton
        end>
    end
  end
  object Panel4: TPanel
    Left = 16
    Top = 32
    Width = 103
    Height = 41
    TabOrder = 1
    object AdvColorSelector4: TAdvColorSelector
      Left = 68
      Top = 10
      Width = 23
      Height = 22
      TabOrder = 0
      Version = '1.4.0.0'
      SelectionStyle = csColorCube
      SelectedColor = clLime
      ShowRGBHint = True
      AutoThemeAdapt = True
      BorderDownColor = clBlack
      BorderHotColor = clBlack
      BorderDropDownColor = 9841920
      Color = 16640730
      ColorTo = 14986888
      ColorDown = 557032
      ColorDownTo = 8182519
      ColorHot = 14483455
      ColorHotTo = 6013175
      ColorDropDown = 16251129
      ColorSelected = 7454719
      ColorSelectedTo = clNone
      ColorSelectionDown = 7323903
      ColorSelectionDownTo = clNone
      ColorSelectionHot = 12775167
      ColorSelectionHotTo = clNone
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        18000000000008020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFA87D6885513A766049FFFFFFFFFFFFFFFFFFFFFFFF603820704020
        70402067422BFFFFFF00FFFFFFDCDDDD94603AFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF70382076422BFFFFFFFFFFFF00FFFFFFFFFFFFB58A74A47B5DFFFF
        FFFFFFFFFFFFFFFFFFFF804830704020936E5EFFFFFFFFFFFF00FFFFFFFFFFFF
        DBD6D4A058409F6C529265529F6C5294583A804830703820FFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFAC795FFFFFFFFFFFFFFFFFFF95603B905030986F5E
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFCBB9ABAC795FFFFFFFD4C5BC90
        5830905030D0C3BCFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFA468
        4AE3E2E2A073529050309A6246FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFC59980BB9480A06040905030CDBBB2FFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFE6E5E5B07050B07050A4684AFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC08870B07050E3
        D5CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFBF8F77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      Style = ssButton
      Tools = <
        item
          Caption = 'Automatic'
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Automatic'
          Value = 'clBlack'
          ItemType = itFullWidthButton
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clBlack'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00003399'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00003333'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00003300'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00663300'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clNavy'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00353333'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00333333'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clMaroon'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$000066FF'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clOlive'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clGreen'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clTeal'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clBlue'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00996666'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clGray'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clRed'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$000099FF'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$0000CC99'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00669933'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00CCCC33'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00FF6633'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clPurple'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00999999'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clFuchsia'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$0000CCFF'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clYellow'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clLime'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clAqua'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00FFCC00'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00663399'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clSilver'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00CC99FF'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$0099CCFF'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$0099FFFF'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00CCFFCC'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00FFFFCC'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00FFCC99'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00FF99CC'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clWhite'
        end
        item
          Caption = 'More Colors...'
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'More Colors'
          Value = 'clNone'
          ItemType = itFullWidthButton
        end>
      OnSelect = AdvColorSelector4Select
    end
    object AdvColorSelector5: TAdvColorSelector
      Left = 10
      Top = 10
      Width = 23
      Height = 22
      TabOrder = 1
      Version = '1.4.0.0'
      SelectionStyle = csSpectrum
      SelectedColor = clRed
      ShowRGBHint = True
      AutoThemeAdapt = True
      BorderDownColor = clBlack
      BorderHotColor = clBlack
      BorderDropDownColor = 9841920
      Color = 16640730
      ColorTo = 14986888
      ColorDown = 557032
      ColorDownTo = 8182519
      ColorHot = 14483455
      ColorHotTo = 6013175
      ColorDropDown = 16251129
      ColorSelected = 7454719
      ColorSelectedTo = clNone
      ColorSelectionDown = 7323903
      ColorSelectionDownTo = clNone
      ColorSelectionHot = 12775167
      ColorSelectionHotTo = clNone
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        18000000000008020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFA87D6885513A766049FFFFFFFFFFFFFFFFFFFFFFFF603820704020
        70402067422BFFFFFF00FFFFFFDCDDDD94603AFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF70382076422BFFFFFFFFFFFF00FFFFFFFFFFFFB58A74A47B5DFFFF
        FFFFFFFFFFFFFFFFFFFF804830704020936E5EFFFFFFFFFFFF00FFFFFFFFFFFF
        DBD6D4A058409F6C529265529F6C5294583A804830703820FFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFAC795FFFFFFFFFFFFFFFFFFF95603B905030986F5E
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFCBB9ABAC795FFFFFFFD4C5BC90
        5830905030D0C3BCFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFA468
        4AE3E2E2A073529050309A6246FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFC59980BB9480A06040905030CDBBB2FFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFE6E5E5B07050B07050A4684AFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC08870B07050E3
        D5CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFBF8F77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      Style = ssButton
      Tools = <
        item
          Caption = 'Automatic'
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Automatic'
          Value = 'clBlack'
          ItemType = itFullWidthButton
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clBlack'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00003399'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00003333'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00003300'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00663300'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clNavy'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00353333'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00333333'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clMaroon'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$000066FF'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clOlive'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clGreen'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clTeal'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clBlue'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00996666'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clGray'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clRed'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$000099FF'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$0000CC99'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00669933'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00CCCC33'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00FF6633'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clPurple'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00999999'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clFuchsia'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$0000CCFF'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clYellow'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clLime'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clAqua'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00FFCC00'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00663399'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clSilver'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00CC99FF'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$0099CCFF'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$0099FFFF'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00CCFFCC'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00FFFFCC'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00FFCC99'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00FF99CC'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clWhite'
        end
        item
          Caption = 'More Colors...'
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'More Color'
          Value = 'clNone'
          ItemType = itFullWidthButton
        end>
      OnSelect = AdvColorSelector5Select
    end
    object AdvColorSelector1: TAdvColorSelector
      Left = 40
      Top = 10
      Width = 23
      Height = 22
      TabOrder = 2
      Version = '1.4.0.0'
      SelectedColor = clBlue
      ShowRGBHint = True
      AutoThemeAdapt = True
      BorderDownColor = 7021576
      BorderHotColor = clBlack
      BorderDropDownColor = 9841920
      Color = 16640730
      ColorTo = 14986888
      ColorDown = 557032
      ColorDownTo = 8182519
      ColorHot = 14483455
      ColorHotTo = 6013175
      ColorDropDown = 16251129
      ColorSelected = 7454719
      ColorSelectedTo = clNone
      ColorSelectionDown = 7323903
      ColorSelectionDownTo = clNone
      ColorSelectionHot = 12775167
      ColorSelectionHotTo = clNone
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        18000000000008020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFA87D6885513A766049FFFFFFFFFFFFFFFFFFFFFFFF603820704020
        70402067422BFFFFFF00FFFFFFDCDDDD94603AFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF70382076422BFFFFFFFFFFFF00FFFFFFFFFFFFB58A74A47B5DFFFF
        FFFFFFFFFFFFFFFFFFFF804830704020936E5EFFFFFFFFFFFF00FFFFFFFFFFFF
        DBD6D4A058409F6C529265529F6C5294583A804830703820FFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFAC795FFFFFFFFFFFFFFFFFFF95603B905030986F5E
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFCBB9ABAC795FFFFFFFD4C5BC90
        5830905030D0C3BCFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFA468
        4AE3E2E2A073529050309A6246FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFC59980BB9480A06040905030CDBBB2FFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFE6E5E5B07050B07050A4684AFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC08870B07050E3
        D5CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFBF8F77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      Style = ssButton
      Tools = <
        item
          BackGroundColor = clBlack
          Caption = 'Automatic'
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Automatic'
          ItemType = itFullWidthButton
        end
        item
          BackGroundColor = clBlack
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13209
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13107
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13056
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 6697728
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clNavy
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 3486515
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 3355443
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clMaroon
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 26367
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clOlive
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clGreen
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clTeal
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clBlue
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 10053222
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clGray
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clRed
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 39423
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 52377
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 6723891
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13421619
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 16737843
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clPurple
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 10066329
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clFuchsia
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 52479
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clYellow
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clLime
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clAqua
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 16763904
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 6697881
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clSilver
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13408767
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 10079487
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 10092543
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13434828
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 16777164
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 16764057
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 16751052
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clWhite
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          Caption = 'More Colors...'
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'More Color'
          ItemType = itFullWidthButton
        end>
      OnSelect = AdvColorSelector1Select
    end
  end
  object Panel5: TPanel
    Left = 184
    Top = 32
    Width = 129
    Height = 41
    TabOrder = 2
    object AdvColorSelector7: TAdvColorSelector
      Left = 84
      Top = 9
      Width = 33
      Height = 22
      TabOrder = 0
      Version = '1.4.0.0'
      SelectionStyle = csColorCube
      SelectedColor = clYellow
      ShowRGBHint = True
      AutoThemeAdapt = True
      BorderDownColor = clBlack
      BorderHotColor = clBlack
      BorderDropDownColor = 9841920
      Color = 16640730
      ColorTo = 14986888
      ColorDown = 557032
      ColorDownTo = 8182519
      ColorHot = 14483455
      ColorHotTo = 6013175
      ColorDropDown = 16251129
      ColorSelected = 7454719
      ColorSelectedTo = clNone
      ColorSelectionDown = 7323903
      ColorSelectionDownTo = clNone
      ColorSelectionHot = 12775167
      ColorSelectionHotTo = clNone
      DropDownButton = True
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        18000000000008020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFA87D6885513A766049FFFFFFFFFFFFFFFFFFFFFFFF603820704020
        70402067422BFFFFFF00FFFFFFDCDDDD94603AFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF70382076422BFFFFFFFFFFFF00FFFFFFFFFFFFB58A74A47B5DFFFF
        FFFFFFFFFFFFFFFFFFFF804830704020936E5EFFFFFFFFFFFF00FFFFFFFFFFFF
        DBD6D4A058409F6C529265529F6C5294583A804830703820FFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFAC795FFFFFFFFFFFFFFFFFFF95603B905030986F5E
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFCBB9ABAC795FFFFFFFD4C5BC90
        5830905030D0C3BCFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFA468
        4AE3E2E2A073529050309A6246FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFC59980BB9480A06040905030CDBBB2FFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFE6E5E5B07050B07050A4684AFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC08870B07050E3
        D5CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFBF8F77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      Style = ssButton
      Tools = <
        item
          Caption = 'Automatic'
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Automatic'
          Value = 'clBlack'
          ItemType = itFullWidthButton
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clBlack'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00003399'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00003333'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00003300'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00663300'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clNavy'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00353333'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00333333'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clMaroon'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$000066FF'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clOlive'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clGreen'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clTeal'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clBlue'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00996666'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clGray'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clRed'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$000099FF'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$0000CC99'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00669933'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00CCCC33'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00FF6633'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clPurple'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00999999'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clFuchsia'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$0000CCFF'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clYellow'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clLime'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clAqua'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00FFCC00'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00663399'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clSilver'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00CC99FF'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$0099CCFF'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$0099FFFF'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00CCFFCC'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00FFFFCC'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00FFCC99'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00FF99CC'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clWhite'
        end
        item
          Caption = 'More Colors...'
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'More Colors'
          Value = 'clNone'
          ItemType = itFullWidthButton
        end>
      OnClick = AdvColorSelector7Click
    end
    object AdvColorSelector8: TAdvColorSelector
      Left = 10
      Top = 9
      Width = 33
      Height = 22
      TabOrder = 1
      Version = '1.4.0.0'
      SelectionStyle = csSpectrum
      SelectedColor = clRed
      ShowRGBHint = True
      AutoThemeAdapt = True
      BorderDownColor = clBlack
      BorderHotColor = clBlack
      BorderDropDownColor = 9841920
      Color = 16640730
      ColorTo = 14986888
      ColorDown = 557032
      ColorDownTo = 8182519
      ColorHot = 14483455
      ColorHotTo = 6013175
      ColorDropDown = 16251129
      ColorSelected = 7454719
      ColorSelectedTo = clNone
      ColorSelectionDown = 7323903
      ColorSelectionDownTo = clNone
      ColorSelectionHot = 12775167
      ColorSelectionHotTo = clNone
      DropDownButton = True
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        18000000000008020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFA87D6885513A766049FFFFFFFFFFFFFFFFFFFFFFFF603820704020
        70402067422BFFFFFF00FFFFFFDCDDDD94603AFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF70382076422BFFFFFFFFFFFF00FFFFFFFFFFFFB58A74A47B5DFFFF
        FFFFFFFFFFFFFFFFFFFF804830704020936E5EFFFFFFFFFFFF00FFFFFFFFFFFF
        DBD6D4A058409F6C529265529F6C5294583A804830703820FFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFAC795FFFFFFFFFFFFFFFFFFF95603B905030986F5E
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFCBB9ABAC795FFFFFFFD4C5BC90
        5830905030D0C3BCFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFA468
        4AE3E2E2A073529050309A6246FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFC59980BB9480A06040905030CDBBB2FFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFE6E5E5B07050B07050A4684AFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC08870B07050E3
        D5CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFBF8F77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      Style = ssButton
      Tools = <
        item
          Caption = 'Automatic'
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Automatic'
          Value = 'clBlack'
          ItemType = itFullWidthButton
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clBlack'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00003399'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00003333'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00003300'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00663300'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clNavy'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00353333'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00333333'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clMaroon'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$000066FF'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clOlive'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clGreen'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clTeal'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clBlue'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00996666'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clGray'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clRed'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$000099FF'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$0000CC99'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00669933'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00CCCC33'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00FF6633'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clPurple'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00999999'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clFuchsia'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$0000CCFF'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clYellow'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clLime'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clAqua'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00FFCC00'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00663399'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clSilver'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00CC99FF'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$0099CCFF'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$0099FFFF'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00CCFFCC'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00FFFFCC'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00FFCC99'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = '$00FF99CC'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = -1
          Value = 'clWhite'
        end
        item
          Caption = 'More Colors...'
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'More Color'
          Value = 'clNone'
          ItemType = itFullWidthButton
        end>
      OnClick = AdvColorSelector8Click
    end
    object AdvColorSelector9: TAdvColorSelector
      Left = 48
      Top = 9
      Width = 33
      Height = 22
      TabOrder = 2
      Version = '1.4.0.0'
      SelectedColor = clLime
      ShowRGBHint = True
      AutoThemeAdapt = True
      BorderDownColor = 7021576
      BorderHotColor = clBlack
      BorderDropDownColor = 9841920
      Color = 16640730
      ColorTo = 14986888
      ColorDown = 557032
      ColorDownTo = 8182519
      ColorHot = 14483455
      ColorHotTo = 6013175
      ColorDropDown = 16251129
      ColorSelected = 7454719
      ColorSelectedTo = clNone
      ColorSelectionDown = 7323903
      ColorSelectionDownTo = clNone
      ColorSelectionHot = 12775167
      ColorSelectionHotTo = clNone
      DropDownButton = True
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        18000000000008020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFA87D6885513A766049FFFFFFFFFFFFFFFFFFFFFFFF603820704020
        70402067422BFFFFFF00FFFFFFDCDDDD94603AFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF70382076422BFFFFFFFFFFFF00FFFFFFFFFFFFB58A74A47B5DFFFF
        FFFFFFFFFFFFFFFFFFFF804830704020936E5EFFFFFFFFFFFF00FFFFFFFFFFFF
        DBD6D4A058409F6C529265529F6C5294583A804830703820FFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFAC795FFFFFFFFFFFFFFFFFFF95603B905030986F5E
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFCBB9ABAC795FFFFFFFD4C5BC90
        5830905030D0C3BCFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFA468
        4AE3E2E2A073529050309A6246FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFC59980BB9480A06040905030CDBBB2FFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFE6E5E5B07050B07050A4684AFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC08870B07050E3
        D5CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFBF8F77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      Style = ssButton
      Tools = <
        item
          BackGroundColor = clBlack
          Caption = 'Automatic'
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Automatic'
          ItemType = itFullWidthButton
        end
        item
          BackGroundColor = clBlack
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13209
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13107
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13056
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 6697728
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clNavy
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 3486515
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 3355443
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clMaroon
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 26367
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clOlive
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clGreen
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clTeal
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clBlue
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 10053222
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clGray
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clRed
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 39423
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 52377
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 6723891
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13421619
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 16737843
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clPurple
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 10066329
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clFuchsia
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 52479
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clYellow
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clLime
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clAqua
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 16763904
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 6697881
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clSilver
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13408767
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 10079487
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 10092543
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13434828
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 16777164
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 16764057
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 16751052
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clWhite
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          Caption = 'More Colors...'
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'More Color'
          ItemType = itFullWidthButton
        end>
      OnClick = AdvColorSelector9Click
    end
  end
  object Panel6: TPanel
    Left = 384
    Top = 32
    Width = 81
    Height = 41
    TabOrder = 3
    object AdvColorSelector12: TAdvColorSelector
      Left = 48
      Top = 10
      Width = 24
      Height = 22
      TabOrder = 0
      Version = '1.4.0.0'
      SelectedColor = clFuchsia
      ShowRGBHint = True
      AutoThemeAdapt = True
      BorderDownColor = 7021576
      BorderHotColor = clBlack
      BorderDropDownColor = 9841920
      Color = 16640730
      ColorTo = 14986888
      ColorDown = 557032
      ColorDownTo = 8182519
      ColorHot = 14483455
      ColorHotTo = 6013175
      ColorDropDown = 16251129
      ColorSelected = 7454719
      ColorSelectedTo = clNone
      ColorSelectionDown = 7323903
      ColorSelectionDownTo = clNone
      ColorSelectionHot = 12775167
      ColorSelectionHotTo = clNone
      Style = ssButton
      Tools = <
        item
          BackGroundColor = clBlack
          Caption = 'Automatic'
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Automatic'
          ItemType = itFullWidthButton
        end
        item
          BackGroundColor = clBlack
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13209
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13107
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13056
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 6697728
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clNavy
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 3486515
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 3355443
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clMaroon
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 26367
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clOlive
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clGreen
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clTeal
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clBlue
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 10053222
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clGray
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clRed
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 39423
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 52377
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 6723891
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13421619
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 16737843
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clPurple
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 10066329
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clFuchsia
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 52479
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clYellow
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clLime
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clAqua
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 16763904
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 6697881
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clSilver
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13408767
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 10079487
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 10092543
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13434828
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 16777164
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 16764057
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 16751052
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clWhite
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          Caption = 'More Colors...'
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'More Color'
          ItemType = itFullWidthButton
        end>
      OnSelect = AdvColorSelector12Select
    end
    object AdvColorSelector10: TAdvColorSelector
      Left = 8
      Top = 9
      Width = 33
      Height = 22
      TabOrder = 1
      Version = '1.4.0.0'
      SelectedColor = clAqua
      ShowRGBHint = True
      AutoThemeAdapt = True
      BorderDownColor = 7021576
      BorderHotColor = clBlack
      BorderDropDownColor = 9841920
      Color = 16640730
      ColorTo = 14986888
      ColorDown = 557032
      ColorDownTo = 8182519
      ColorHot = 14483455
      ColorHotTo = 6013175
      ColorDropDown = 16251129
      ColorSelected = 7454719
      ColorSelectedTo = clNone
      ColorSelectionDown = 7323903
      ColorSelectionDownTo = clNone
      ColorSelectionHot = 12775167
      ColorSelectionHotTo = clNone
      DropDownButton = True
      Style = ssButton
      Tools = <
        item
          BackGroundColor = clBlack
          Caption = 'Automatic'
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Automatic'
          ItemType = itFullWidthButton
        end
        item
          BackGroundColor = clBlack
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13209
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13107
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13056
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 6697728
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clNavy
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 3486515
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 3355443
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clMaroon
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 26367
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clOlive
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clGreen
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clTeal
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clBlue
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 10053222
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clGray
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clRed
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 39423
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 52377
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 6723891
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13421619
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 16737843
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clPurple
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 10066329
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clFuchsia
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 52479
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clYellow
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clLime
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clAqua
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 16763904
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 6697881
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clSilver
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13408767
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 10079487
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 10092543
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13434828
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 16777164
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 16764057
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 16751052
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clWhite
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          Caption = 'More Colors...'
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'More Color'
          ItemType = itFullWidthButton
        end>
      OnClick = AdvColorSelector10Click
      OnSelect = AdvColorSelector10Select
    end
  end
  object Panel3: TPanel
    Left = 16
    Top = 192
    Width = 89
    Height = 41
    TabOrder = 4
    object AdvToolSelector3: TAdvToolSelector
      Left = 8
      Top = 9
      Width = 35
      Height = 22
      Hint = 'Tool selector'
      TabOrder = 0
      Version = '1.4.0.0'
      AutoThemeAdapt = True
      BorderDownColor = clBlack
      BorderHotColor = clBlack
      BorderDropDownColor = 9841920
      ButtonsPerRow = 4
      Color = 16640730
      ColorTo = 14986888
      ColorDown = 557032
      ColorDownTo = 8182519
      ColorHot = 14483455
      ColorHotTo = 6013175
      ColorDropDown = 16772558
      ColorDropDownTo = clWhite
      ColorSelected = 7454719
      ColorSelectedTo = clNone
      ColorSelectionDown = 7323903
      ColorSelectionDownTo = clNone
      ColorSelectionHot = 12775167
      ColorSelectionHotTo = clNone
      DropDownButton = True
      Images = ImageList1
      Style = ssButton
      ShowHint = True
      SelectedIndex = 2
      Tools = <
        item
          Caption = 'Default Tool'
          CaptionAlignment = taCenter
          ImageIndex = 0
          Hint = 'Font selection'
          ItemType = itFullWidthButton
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 1
          Hint = 'Delete tool'
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 2
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 6
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 3
        end
        item
          Caption = 'Different Tool'
          CaptionAlignment = taCenter
          ImageIndex = 4
          ItemType = itFullWidthButton
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 5
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 2
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 6
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 7
        end
        item
          Caption = 'More Tools'
          CaptionAlignment = taCenter
          ImageIndex = -1
          ItemType = itFullWidthButton
        end>
    end
    object AdvToolSelector4: TAdvToolSelector
      Left = 56
      Top = 9
      Width = 22
      Height = 22
      TabOrder = 1
      Version = '1.4.0.0'
      AutoThemeAdapt = True
      BorderDownColor = clBlack
      BorderHotColor = clBlack
      BorderDropDownColor = 9841920
      ButtonsPerRow = 4
      Color = 16640730
      ColorTo = 14986888
      ColorDown = 557032
      ColorDownTo = 8182519
      ColorHot = 14483455
      ColorHotTo = 6013175
      ColorDropDown = 16772558
      ColorDropDownTo = clWhite
      ColorSelected = 7454719
      ColorSelectedTo = clNone
      ColorSelectionDown = 7323903
      ColorSelectionDownTo = clNone
      ColorSelectionHot = 12775167
      ColorSelectionHotTo = clNone
      Images = ImageList1
      Style = ssButton
      SelectedIndex = 2
      Tools = <
        item
          Caption = 'Default Tool'
          CaptionAlignment = taCenter
          ImageIndex = 0
          Hint = 'Tool 1'
          ItemType = itFullWidthButton
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 1
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 2
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 6
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 3
        end
        item
          Caption = 'Different Tool'
          CaptionAlignment = taCenter
          ImageIndex = 4
          ItemType = itFullWidthButton
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 5
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 2
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 6
        end
        item
          CaptionAlignment = taCenter
          ImageIndex = 7
        end
        item
          Caption = 'More Tools'
          CaptionAlignment = taCenter
          ImageIndex = -1
          ItemType = itFullWidthButton
        end>
    end
  end
  object Panel7: TPanel
    Left = 136
    Top = 192
    Width = 497
    Height = 41
    TabOrder = 5
    object AdvFontSelector1: TAdvFontSelector
      Left = 8
      Top = 12
      Width = 137
      Height = 19
      AutoFocus = True
      AutoThemeAdapt = True
      Button.Color = 16572875
      Button.ColorTo = 14722429
      Button.ColorHot = 14483455
      Button.ColorHotTo = 6013175
      Button.ColorDown = 557032
      Button.ColorDownTo = 8182519
      Button.Width = 12
      BorderColor = clNone
      BorderHotColor = clBlack
      SelectionColor = 14722429
      SelectionTextColor = clWhite
      Version = '1.5.2.1'
      AllowedFontTypes = [aftBitmap, aftTrueType, aftPostScript, aftPrinter, aftFixedPitch, aftProportional]
      FontGlyphTT.Data = {
        D6000000424DD60000000000000076000000280000000D0000000C0000000100
        0400000000006000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDD000000D
        D000DDDDDDD00DDDD000DDDDDDD00DDDD000D77777700DDDD000DDD77DD00DDD
        D000DDD70DD00DD0D000DDD70DD00DD0D000DDD700D00D00D0007DD700000000
        D0007DD77DD7DDDDD00077D77D77DDDDD00077777777DDDDD000}
      FontGlyphPS.Data = {
        D6000000424DD60000000000000076000000280000000D0000000C0000000100
        0400000000006000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        D000D9997DD997DDD0009999979979DDD000997D7999D79DD000997DD7997DDD
        D000997DDD799DDDD000799DDDD997DDD000D997DDD799DDD000D799DDDD997D
        D000DD799DDD799DD000DDD799DD7997D000DDDDD9999779D000}
      FontGlyphPRN.Data = {
        D6000000424DD60000000000000076000000280000000D0000000C0000000100
        0400000000006000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D00000000000
        D00007777777AA7700000888888888870000D00000000000D000DD07FFFFF70D
        D000DD0F00000F0DD000DD07FFFFF70DD000DD0F00000F0DD000DD07FFFFF70D
        D000DD0F00000F0DD000DD07FFFFF70DD000DD000000000DD000}
      FontGlyphBMP.Data = {
        D6000000424DD60000000000000076000000280000000D0000000C0000000100
        0400000000006000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        D000DDDDDD99DD99D000DDDDDD99DD99D000D11DD199DD99D000D11DD1999999
        D000D11DD199DD99D000D1111199DD99D000D11DD199DD99D000D11DD119999D
        D000D11DD11D99DDD000DD1111DDDDDDD000DDD11DDDDDDDD000}
      FontHeight = 12
      TabOrder = 0
    end
    object AdvOfficeComboBox1: TAdvOfficeComboBox
      Left = 168
      Top = 12
      Width = 145
      Height = 19
      AutoFocus = True
      AutoThemeAdapt = True
      Button.Color = 16572875
      Button.ColorTo = 14722429
      Button.ColorHot = 14483455
      Button.ColorHotTo = 6013175
      Button.ColorDown = 557032
      Button.ColorDownTo = 8182519
      Button.Width = 12
      BorderColor = clNone
      BorderHotColor = clBlack
      SelectionColor = 14722429
      SelectionTextColor = clWhite
      Version = '1.5.2.1'
      ItemIndex = -1
      ItemHeight = 14
      TabOrder = 1
    end
    object Button1: TButton
      Left = 328
      Top = 8
      Width = 161
      Height = 25
      Caption = 'Reset recent selections'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 536
    Top = 32
    Width = 97
    Height = 41
    TabOrder = 6
    object AdvTextColorSelector2: TAdvTextColorSelector
      Left = 8
      Top = 9
      Width = 36
      Height = 22
      TabOrder = 0
      AppearanceStyle = esOffice2003Classic
      Version = '1.4.0.0'
      AutoThemeAdapt = False
      BorderDownColor = 7021576
      BorderHotColor = clBlack
      Color = clBtnFace
      ColorDown = 11900292
      ColorHot = 14073525
      ColorDropDown = 16251129
      ColorSelected = 14604246
      ColorSelectedTo = clNone
      ColorSelectionDown = 14604246
      ColorSelectionDownTo = clNone
      ColorSelectionHot = 14073525
      ColorSelectionHotTo = clNone
      DropDownButton = True
      SelectedColor = clYellow
      Style = ssButton
      Tools = <
        item
          BackGroundColor = clBlack
          Caption = 'Automatic'
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Color'
          ItemType = itFullWidthButton
        end
        item
          BackGroundColor = clBlack
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Black'
        end
        item
          BackGroundColor = clGray
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Gray'
        end
        item
          BackGroundColor = clMaroon
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Maroon'
        end
        item
          BackGroundColor = clOlive
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Olive'
        end
        item
          BackGroundColor = clGreen
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Green'
        end
        item
          BackGroundColor = clTeal
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Teal'
        end
        item
          BackGroundColor = clNavy
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Navy'
        end
        item
          BackGroundColor = clPurple
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Purple'
        end
        item
          BackGroundColor = clWhite
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'White'
        end
        item
          BackGroundColor = clSilver
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Silver'
        end
        item
          BackGroundColor = clRed
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Red'
        end
        item
          BackGroundColor = clYellow
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Yellow'
        end
        item
          BackGroundColor = clLime
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Lime'
        end
        item
          BackGroundColor = clAqua
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Aqua'
        end
        item
          BackGroundColor = clBlue
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Blue'
        end
        item
          BackGroundColor = clFuchsia
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Fuchsia'
        end>
    end
    object AdvTextColorSelector3: TAdvTextColorSelector
      Left = 56
      Top = 9
      Width = 23
      Height = 22
      TabOrder = 1
      AppearanceStyle = esOffice2003Classic
      Version = '1.4.0.0'
      AutoThemeAdapt = False
      BorderDownColor = 7021576
      BorderHotColor = clBlack
      Color = clBtnFace
      ColorDown = 11900292
      ColorHot = 14073525
      ColorDropDown = 16251129
      ColorSelected = 14604246
      ColorSelectedTo = clNone
      ColorSelectionDown = 14604246
      ColorSelectionDownTo = clNone
      ColorSelectionHot = 14073525
      ColorSelectionHotTo = clNone
      SelectedColor = clBlue
      Style = ssButton
      Tools = <
        item
          BackGroundColor = clBlack
          Caption = 'Automatic'
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Color'
          ItemType = itFullWidthButton
        end
        item
          BackGroundColor = clBlack
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Black'
        end
        item
          BackGroundColor = clGray
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Gray'
        end
        item
          BackGroundColor = clMaroon
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Maroon'
        end
        item
          BackGroundColor = clOlive
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Olive'
        end
        item
          BackGroundColor = clGreen
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Green'
        end
        item
          BackGroundColor = clTeal
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Teal'
        end
        item
          BackGroundColor = clNavy
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Navy'
        end
        item
          BackGroundColor = clPurple
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Purple'
        end
        item
          BackGroundColor = clWhite
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'White'
        end
        item
          BackGroundColor = clSilver
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Silver'
        end
        item
          BackGroundColor = clRed
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Red'
        end
        item
          BackGroundColor = clYellow
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Yellow'
        end
        item
          BackGroundColor = clLime
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Lime'
        end
        item
          BackGroundColor = clAqua
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Aqua'
        end
        item
          BackGroundColor = clBlue
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Blue'
        end
        item
          BackGroundColor = clFuchsia
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Fuchsia'
        end>
    end
  end
  object Panel8: TPanel
    Left = 16
    Top = 272
    Width = 89
    Height = 41
    TabOrder = 7
    object AdvTableSelector1: TAdvTableSelector
      Left = 16
      Top = 8
      Width = 23
      Height = 22
      TabOrder = 0
      Version = '1.4.0.0'
      AutoThemeAdapt = True
      BorderDownColor = 7021576
      BorderHotColor = clBlack
      Color = 16640730
      ColorTo = 14986888
      ColorDown = 557032
      ColorDownTo = 8182519
      ColorHot = 14483455
      ColorHotTo = 6013175
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFCC6701CC6701CC6701CC6701CC6701CC6701CC6701CC
        6701CC6701CC6701CC6701CC6701CC6701CC6701CC6701CC6701CC6701FFF1E2
        FFEFDDFFEDD9993300FEE8CEFEE5CAFEE3C4993300FEDFBBFEDDB7FFDBB39933
        00FED8ADFED7ABCC6701CC6701FFF3E6FFF1E1FEEFDC993300FEEAD2FEE7CEFE
        E5C8993300FEE1BEFEDEBBFFDDB6993300FEDAAFFED8ADCC6701CC6701FFF4E9
        FEF2E5FEF0E0993300FEEBD6FEE9D0FEE6CC993300FEE3C3FEDFBDFEDEBA9933
        00FFDBB2FED9AECC6701CC670199330099330099330099330099330099330099
        3300993300993300993300993300993300993300993300CC6701CC6701FFF8F1
        FFF6ECFFF3E8993300FFEFDEFFEDD9FEEBD3993300FEE6CAFEE3C5FFE1C09933
        00FEDDB8FEDBB4CC6701CC6701FFFAF4FFF8EFFFF6EB993300FFF1E2FFEFDDFF
        ECD8993300FEE8CDFFE5C8FEE2C3993300FEDEBAFFDDB7CC6701CC6701FFFBF6
        FFF9F2FFF8EF993300FEF3E5FFF0E0FFEEDB993300FFE9D2FFE7CCFEE5C89933
        00FEE0BEFEDEB9CC6701CC670199330099330099330099330099330099330099
        3300993300993300993300993300993300993300993300CC6701CC6701FFFDFB
        FFFBF8FFFAF5993300FFF7EDFFF4E8FFF1E3993300FFEDD9FFEAD4FFE8CF9933
        00FEE3C5FEE2C0CC6701CC6701FFFFFDFFFDFAFFFBF8993300FFF8EFFEF6ECFF
        F4E6993300FFEFDDFFECD8FEEAD3993300FEE5C9FEE3C4CC6701CC6701FFFFFF
        FFFEFDFFFDFA993300FEF9F3FFF7EFFFF5EA993300FFF1E0FFEEDCFFECD79933
        00FEE7CCFFE5C8CC6701CC6701CC6701CC6701CC6701CC6701CC6701CC6701CC
        6701CC6701CC6701CC6701CC6701CC6701CC6701CC6701CC6701CC6701CC6701
        CC6701CC6701CC6701CC6701CC6701CC6701CC6701CC6701CC6701CC6701CC67
        01CC6701CC6701CC6701FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Style = ssButton
      TextTable = 'Table'
      TextCancel = 'Cancel'
      OnSelect = AdvTableSelector1Select
    end
    object AdvCharacterSelector1: TAdvCharacterSelector
      Left = 48
      Top = 8
      Width = 23
      Height = 22
      TabOrder = 1
      Version = '1.4.0.0'
      AutoLoad = False
      AutoThemeAdapt = True
      BorderDownColor = 7021576
      BorderHotColor = clBlack
      BorderDropDownColor = 9841920
      ButtonsPerRow = 7
      Color = 16640730
      ColorTo = 14986888
      ColorDown = 557032
      ColorDownTo = 8182519
      ColorHot = 14483455
      ColorHotTo = 6013175
      ColorDropDown = 16251129
      Characters = 'abcdefghijklmnopqrstuvwxyz'
      CharFont.Charset = SYMBOL_CHARSET
      CharFont.Color = clWindowText
      CharFont.Height = -13
      CharFont.Name = 'Symbol'
      CharFont.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF917677856E6E856E6EFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF856E6E856E6E856E6EC8
        B6B6E0CDCDD3A3A3856E6E856E6EFF00FFFF00FFFF00FFFF00FFFF00FF856E6E
        856E6E856E6EC6B1B3D4BEC1D5C1C2E1D2D2F2E4E4DEB9B5DAADA8DAA2A3856E
        6E856E6EFF00FFFF00FF856E6ECCB6B7D1BAB9D39F78CF8E56CE9261D3B9B3E1
        D5D7F3E3E4BBB79C007F00E9A7B0E2A8A8E0A5A5856E6E856E6E856E6ED2BCBF
        CF9B74CC813CCD915FCD8C55CF8F57E2D7D9EFE2E3DBB9B7007F00A8A281E6A6
        AFDFA6A7E2A8A7856E6E856E6ED2BCBFD19564CD8443CFAC9DD0B6B4CE9261E1
        C4B1EFE4E7E7B8C17AA060007F00C6A498CEA69BCE9A9C856E6EFF00FF856E6E
        D09462CD8543CF9E7CCFA690CE9566E2C5B1EDE1E5DDB6BABEA496007F00007F
        00A7A480856E6EFF00FFFF00FF856E6ECEA489CD8A51CE905ECD884DD19563E4
        DBDEEADDDDD3B4B3007F00007F00007F00D4A2A6856E6EFF00FFFF00FF856E6E
        C2AFB3D0A78FCD9469CE9A75D7C1C0E6D9D7E7D8D7D4B0B3A3A083659E518EA4
        71856E6EFF00FFFF00FFFF00FFFF00FF856E6EDBC9CDDACCD2DDD2DAD8D0DEEB
        E7F0E6E1E9E6D0C8D9B2B3D8A2AED5A3AB856E6EFF00FFFF00FFFF00FFFF00FF
        856E6E856E6EF7F2F1F1EBEE6B67BD2321A52321A59594D2CEC6DFEDDDDB856E
        6EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF856E6E856E6ECBBDC8B5
        A9C4BFB3C4B9ADC5856E6E856E6E917677FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF856E6E856E6E856E6E856E6EFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Style = ssButton
      OnSelect = AdvCharacterSelector1Select
    end
  end
  object ImageList1: TImageList
    DrawingStyle = dsTransparent
    Left = 488
    Top = 8
    Bitmap = {
      494C010108000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
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
      0000000000000000000000000000000000000000000000000000B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073849C0000428C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6A59C00FFEF
      D600F7E7C600F7DEBD00F7DEB500F7D6AD00F7D6A500EFCE9C00EFCE9400EFCE
      9400EFCE9400F7D69C00B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002173AD001873AD0029528400297BB50029A5D600295A
      8C00005294000863A50000000000000000000000000000000000000000000000
      00000000000084848400C6C6C60000840000FFFF000084848400848484008484
      8400848484008484840084848400000000000000000000000000C6A59C00FFEF
      D600F7E7CE00F7DEC600F7DEBD00F7D6B5009C390800EFCE9C00EFCE9C00EFCE
      9400EFCE9400EFCE9C00B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004AADDE0042B5E7000863A5002994CE0031ADDE00086B
      AD001094C6001094CE0000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000C6ADA500FFEF
      E700F7E7D600F7E7CE00F7DEC6009C3908009C390800F7D6AD00EFCE9C00EFCE
      9C00EFCE9400EFCE9C00B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021529400298CC6004ABDEF0042BDEF0042B5E70031ADDE0029A5
      DE0018A5D6001094C60000428C00526384000000000000000000000000000000
      0000000000008484840084848400000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000C6ADA500FFF7
      E700F7E7D600F7E7CE009C3908009C390800CE630000F7D6B500F7D6AD00EFCE
      9C00EFCE9C00EFCE9400B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000214A940042ADE70052C6F7004ABDEF0063BDE7004A849C001873
      A5001094CE001094C600006BA500216394000000000000000000000000000000
      0000000000000000000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000CEB5AD00FFFF
      F700FFEFE7009C390800CE630000CE630000CE630000CE630000CE630000CE63
      0000EFCE9C00EFCE9C00B58484000000000000000000848484008C5A5A008C5A
      5A008C5A5A008C5A5A008C5A5A008C5A5A008C5A5A008C5A5A008C5A5A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006BC6E70052C6EF004ABDEF006BC6EF00DEDEDE006B6B6B00295A
      73001094C6000894CE00109CCE0063ADBD0084848400C6C6C60000840000FFFF
      0000848484008484840084848400FFFFFF000000000084848400848484008484
      840084848400C6C6C60000000000000000000000000000000000D6B5AD00FFFF
      FF00FFF7EF00FFEFE700F7AD4A00F7AD4A00CE630000F7DEC600F7DEBD00CE63
      0000F7D6A500F7D6A500B5848400000000000000000084848400FFFFEF00FFF7
      E700FFF7DE00F7EFDE00F7EFDE00F7EFDE00FFEFDE00F7E7D6008C5A5A000000
      000000000000C600000000000000000000000000000000000000000000000000
      000000000000218C390039A5B5004ABDEF006BC6EF00DEDEDE006B6B6B00316B
      7B0018A5D600189CCE00189CCE000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400FFFFFF000000000084840000848400008484
      000084848400C6C6C60000000000000000000000000000000000D6BDB500FFFF
      FF00FFF7F700FFF7EF00FFEFDE00F7AD4A00F7AD4A00F7E7C600F7DEC600CE63
      0000F7D6B500F7D6AD00B5848400000000000000000084848400FFF7E700F7E7
      CE00F7E7CE00F7DECE00F7DEC600F7DEC600F7E7CE00EFDECE008C5A5A000000
      0000FF000000FF000000C6000000000000000000000063A55A00088C1000007B
      00003994290039CE520031AD9C0042B5DE0063C6D600D6D6D60063636300426B
      7B0029A5D60029A5D60000000000000000008484840084848400000000000000
      0000000000000000000084848400FFFFFF0000000000FFFF0000848400008484
      000084848400C6C6C60000000000000000000000000000000000D6BDB500FFFF
      FF00FFFFFF00FFF7F700FFF7EF00FFEFE700F7AD4A00F7E7CE00F7DEC600CE63
      0000F7DEB500F7DEB500B5848400000000000000000084848400FFF7EF00FFDE
      B500FFDEB500FFDEB500FFD6B500FFD6B500FFDEBD00EFDECE0094636300FF00
      0000FF000000FF000000FF000000C600000000000000299C29004ADE6B0021B5
      310018AD290039CE520018A5390018A55A0042B54200C6B59C00525252008C73
      630042A5C600189CCE0000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C60084848400FFFFFF000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000DEBDB500FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFEFE700FFEFDE00F7E7D600F7E7CE00CE63
      0000F7DEC600F7D6B500B5848400000000000000000084848400FFFFF700FFD6
      A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500F7E7DE00A57B73000000
      0000FF000000FF000000C60000000000000000000000318C18004ADE6B004AE7
      730039D65A0039CE520029C6420021BD310018A51800219418006B8442000000
      0000000000000000000000000000000000000000000084848400FFFFFF000000
      0000848484008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000DEC6B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFEFE700FFEFDE00FFEFDE00FFEF
      D600E7DEC600C6BDAD00B5848400000000000000000084848400FFFFFF00FFEF
      DE00FFE7D600FFE7D600FFE7D600FFEFD600FFF7E700EFE7DE00C6000000C600
      0000FF000000FF000000C60000000000000039A5390021B531004AE773004AE7
      730073D6840073B584001894210010A5180010A51800089C0800529429000000
      0000000000000000000000000000000000000000000084848400FFFFFF000000
      0000848400008484000084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000E7C6B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00F7E7D600C6A5
      9400B5948C00B58C8400B5848400000000000000000084848400FFFFFF00FFD6
      A500FFD6A500FFD6A500FFD6A500EFDEDE00FF000000FF000000FF000000FF00
      0000FF000000FF000000C60000000000000094E7A5006BF7940052EF7B004ADE
      6B00D6D6D600A5A5A500217B29000894080008A5100010A5180073C663000000
      0000000000000000000000000000000000000000000084848400FFFFFF000000
      0000FFFF0000848400008484000084848400C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000E7C6B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700E7CECE00BD8C
      7300EFB57300EFA54A00C6846B00000000000000000084848400FFFFFF00FFE7
      D600FFE7D600FFE7D600FFE7D600B58C8C00B58C8C00B58C8C00B58C8C000000
      0000000000000000000000000000000000000000000042D663004ADE6B004ADE
      6B00D6D6D600A5A5A500399C420021BD310018A518004AA52900000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF000000
      000000000000000000000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000EFCEBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00C694
      7B00FFC67300CE94730000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B58C8C00EFB56B00C68C7B00000000000000
      00000000000000000000000000000000000000000000000000005AE77B004ADE
      6B00CECECE008C8C8C005A944A0052BD4A0063C6630000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000E7C6B500FFF7
      F700FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00E7CECE00C694
      7B00CE9C84000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840000000000000000000000
      00000000000000000000000000000000000000000000000000000000000042D6
      6300B5A58C00736B63008CB54A0021B529000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000E7C6B500EFCE
      B500EFCEB500EFCEB500EFCEB500E7C6B500E7C6B500EFCEB500D6BDB500BD84
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A9CC6008484840084A5AD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031DE000031DE0000000000000000000000000000000000527B
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B8C940073CEE7005A737B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE000000000000000000000000000000000000000000317B
      EF00527BC600296BC60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A9CC6008484840084A5
      AD0000000000000000000000000000000000738C94005AB5E700427B9C000000
      0000000000000000000000000000000000000000000000000000AD7B6B008452
      390073634A000000000000000000000000000000000063392100734221007342
      210063422900000000000000000000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000031
      DE000031DE00000000000000000000000000000000000000000000000000397B
      E700007BFF000073F700527BC600000000000000000000000000000000000000
      000000000000000000000000000000000000000000006BADBD0073C6D6004A63
      6B0000000000000000000000000000000000636B6B00297B9C0029739C007B63
      63009C6B6B000000000000000000000000000000000000000000DEDEDE009463
      3900000000000000000000000000000000000000000000000000733921007342
      29000000000000000000000000000000000000000000000000000031EF000031
      DE000031DE000031DE00000000000000000000000000000000000031DE000031
      DE00000000000000000000000000000000000000000000000000000000000000
      0000009CFF00008CFF00008CFF00527BC6000000000000000000000000000000
      00000000000000000000000000000000000000000000528494005ABDF700426B
      8C0073636300000000009C737300AD737300AD6B6B0052848C0073CEE7008C73
      7B00D68484008C6363000000000000000000000000000000000000000000B58C
      7300A57B5A0000000000000000000000000000000000844A310073422100946B
      5A00000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE000031DE00000000000031DE000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000B5FF00008CFF000094FF00527BC600527BC600000000000000
      00000000000000000000000000000000000000000000000000002184B5002973
      94006B4A4A009C6B6B00D6848400DE8C8C00C67B7B006B737B0084DEEF009484
      8C00DE8C8C00AD7373008C8C8C0000000000000000000000000000000000DED6
      D600A55A42009C6B5200946352009C6B5200945A3900844A3100733921000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031DE000031E7000031E7000031E7000031DE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000B5FF0008C6FF00009CFF00009CFF00527BC6000000
      00000000000000000000000000000000000000000000AD737300528CA50073D6
      FF00635A5A00A56B6B00D6848400D6848400D68484007B636300C6CECE00B58C
      8C00D6848400BD7B7B00947B7B00000000000000000000000000000000000000
      0000AD7B5A0000000000000000000000000094633900945231009C6B5A000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031E7000031E7000031EF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000B5FF0008BDFF0000ADFF00009CFF00527B
      C6000000000000000000000000000000000000000000BD7B7B008C84840084DE
      EF0073949C009C6B6B00C67B7B00C67B7B009C6B6B00A56B6B00CE8C8C00CE94
      9400CE949400C68C8C0094848400000000000000000000000000000000000000
      0000CEBDAD00AD7B5A0000000000D6C6BD00945A310094523100D6C6BD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031DE000031EF000031E7000031EF000031F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000527BC600527BC600527BC60000C6FF0008FFFF0031F7FF0010BDFF0000AD
      FF00527BC600527BC600000000000000000000000000AD7373009C6B6B00949C
      9C00A5A5A5009C6B6B009C6B6B00CE8C8C00DEA5A500E7ADAD00DEA5A500DEA5
      A500DEA5A500C68C8C009C848400000000000000000000000000000000000000
      000000000000A56B4A00E7E7E700A5735200945231009C634200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031F7000031EF000031E70000000000000000000031F7000031F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000029ADFF0000C6FF0000EFFF0000F7FF0000F7FF0000FFFF004AEFFF0018CE
      FF0000A5FF00527BC600000000000000000000000000A56B6B00A56B6B00AD73
      7300CE9C9C00DEB5B500EFBDBD00EFB5B500DEA5A500E7A5A500EFADAD00EFAD
      AD00DEADAD00B58484008C8C8C00000000000000000000000000000000000000
      000000000000C69C8400BD948400A563420094523100CEBDB500000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF000031EF000031F700000000000000000000000000000000000031FF000031
      F700000000000000000000000000000000000000000000000000000000000000
      000039A5FF0000C6FF0000EFFF0000F7FF0000EFFF0000DEFF0000FFFF0000FF
      FF0039EFFF0008C6FF00527BC6000000000000000000AD7B7B00EFD6D600FFEF
      EF00FFE7E700EFCECE00E7C6C600EFC6C600F7C6C600EFBDBD00E7ADAD00EFAD
      AD00CE9C9C009C84840000000000000000000000000000000000000000000000
      000000000000E7E7E700B5735200B5735200A56B4A0000000000000000000000
      00000000000000000000000000000000000000000000000000000031F7000031
      F7000031FF000000000000000000000000000000000000000000000000000031
      F7000031F7000000000000000000000000000000000000000000000000000000
      00000000000008C6FF0039E7FF004AEFFF0042F7FF0018FFFF0000FFFF0000FF
      FF0008FFFF0021FFFF00527BC6000000000000000000B5848400DECECE00FFF7
      F700FFF7F700FFE7E700EFCECE00EFD6D600F7CECE00F7C6C600F7C6C600DEAD
      AD009C8484000000000000000000000000000000000000000000000000000000
      00000000000000000000C68C7300B5735200E7D6CE0000000000000000000000
      000000000000000000000000000000000000000000000031F7000031F7000031
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000031F70000000000000000000000000000000000000000000000
      000000000000000000000000000031D6FF0008F7FF0000FFFF0000F7FF0000D6
      FF0000B5FF00527BC60000000000000000000000000000000000B58C8C00CEAD
      AD00EFDEDE00FFEFEF00FFEFEF00FFE7E700EFC6C600EFB5B5009C8484009C84
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BD8C73000000000000000000000000000000
      0000000000000000000000000000000000000031F7000031F7000031F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000031D6FF0000F7FF0000EF
      FF0000ADFF0000A5FF00527BC60000000000000000000000000000000000AD9C
      9C00C6ADAD00CEB5B500C6ADAD00BDA5A500BDA5A5009C8484008C8484007373
      7300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031F7000031F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000031D6
      FF0042DEFF0010D6FF005AA5FF00527BC6000000000000000000000000000000
      000000000000000000000000000000000000A5A5A500FFFFFF008C8C8C007373
      7300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000031D6FF0052A5FF00527BC6000000000000000000000000000000
      000000000000000000000000000000000000A5A5A500FFFFFF008C8C8C007373
      730000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFC001DDBBFF9FFC01C001AD5B
      FC03F800C001AD5BFC03F800C001A953F800F800C001DDBBF8008001C001801F
      F8000001C001801BF8010001C001801180030001C001800080038001C0018011
      801F8001C0018001001F8001C0018001001F803FC001801F803F803FC003803F
      C07F803FC007807FE0FF803FC00FFFFFFFFFFFFCFFFFFF1FFFFF9FF9EFFFFF1F
      FFFF8FF3E3FF8F1FC78787E7E1FF8F07CFCFC3CFF0FF8403E78FF11FF83FC001
      E01FF83FFC1F8001F71FFC7FFE0F8001F21FF83FF0038001F83FF19FF0038001
      F83FE3CFF0018003F87FC7E7F8018007FC7F8FFBFE03C00FFEFF1FFFFF81E00F
      FFFF3FFFFFE0FF0FFFFFFFFFFFF8FF0F00000000000000000000000000000000
      000000000000}
  end
  object ColorDialog1: TColorDialog
    Left = 528
    Top = 8
  end
end
