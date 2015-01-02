object Form1: TForm1
  Left = 449
  Top = 359
  ActiveControl = AdvEditBtn2
  BorderStyle = bsDialog
  Caption = 'TAdvEdit, TAdvEditBtn, TAdvDirectory Edit, TAdvFileNameEdit demo'
  ClientHeight = 190
  ClientWidth = 787
  Color = 15385507
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 184
    Top = 24
    Width = 321
    Height = 16
    Caption = 'focus color, colored on modify, focus border color'
    Color = 15385507
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 184
    Top = 48
    Width = 521
    Height = 16
    Caption = 
      'Extra embedded button, fixed prefix or suffix and automatic thou' +
      'sand separator'
    Color = 15385507
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 184
    Top = 96
    Width = 298
    Height = 16
    Caption = 'AdvFileNameEdit control with built-in filepicker'
    Color = 15385507
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label5: TLabel
    Left = 184
    Top = 72
    Width = 408
    Height = 16
    Caption = 
      'Flatstyle AdvDirectoryEdit control with built-in directory picke' +
      'r'
    Color = 15385507
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label6: TLabel
    Left = 184
    Top = 120
    Width = 589
    Height = 16
    Caption = 
      'URL Aware with different URL colors and Lookup list (remove  hyp' +
      'erlink and type new one)'
    Color = 15385507
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label7: TLabel
    Left = 184
    Top = 144
    Width = 199
    Height = 16
    Caption = 'Events for all clipboard actions'
    Color = 15385507
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label8: TLabel
    Left = 400
    Top = 144
    Width = 4
    Height = 16
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object AdvEditBtn1: TAdvEditBtn
    Left = 8
    Top = 24
    Width = 165
    Height = 22
    EmptyTextStyle = []
    Flat = False
    FocusBorder = True
    FocusBorderColor = clGreen
    FocusColor = clInactiveCaptionText
    FocusFontColor = clFuchsia
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'MS Sans Serif'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    BevelInner = bvLowered
    Color = clWindow
    ReadOnly = False
    TabOrder = 0
    Text = 'Hello world'
    Visible = True
    Version = '1.3.5.0'
    ButtonStyle = bsButton
    ButtonWidth = 16
    Etched = False
  end
  object AdvEditBtn2: TAdvEditBtn
    Left = 8
    Top = 48
    Width = 165
    Height = 21
    EditAlign = eaRight
    EditType = etMoney
    EmptyTextStyle = []
    Flat = False
    ModifiedColor = clWindow
    Prefix = '$'
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'MS Sans Serif'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = False
    TabOrder = 1
    Text = '0'
    Visible = True
    Version = '1.3.5.0'
    ButtonStyle = bsButton
    ButtonWidth = 16
    Etched = False
    ButtonCaption = 'x'
    OnClickBtn = AdvEditBtn2ClickBtn
  end
  object AdvDirectoryEdit1: TAdvDirectoryEdit
    Left = 8
    Top = 72
    Width = 165
    Height = 23
    EmptyTextStyle = []
    Flat = True
    FocusColor = clBtnFace
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'MS Sans Serif'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    BorderStyle = bsNone
    Color = clBtnFace
    ReadOnly = False
    TabOrder = 2
    Visible = True
    Version = '1.3.5.0'
    ButtonStyle = bsButton
    ButtonWidth = 18
    Etched = False
    Glyph.Data = {
      CE000000424DCE0000000000000076000000280000000C0000000B0000000100
      0400000000005800000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F00000000FFF
      00000088888880FF00000B088888880F00000BB08888888000000BBB00000000
      00000BBBBBBB0B0F00000BBB00000B0F0000F000BBBBBB0F0000FF0BBBBBBB0F
      0000FF0BBB00000F0000FFF000FFFFFF0000}
    BrowseDialogText = 'Select Directory'
  end
  object AdvFileNameEdit1: TAdvFileNameEdit
    Left = 8
    Top = 96
    Width = 165
    Height = 22
    EmptyTextStyle = []
    Flat = False
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'MS Sans Serif'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    ReadOnly = False
    TabOrder = 3
    Visible = True
    Version = '1.3.5.0'
    ButtonStyle = bsButton
    ButtonWidth = 18
    Etched = False
    Glyph.Data = {
      CE000000424DCE0000000000000076000000280000000C0000000B0000000100
      0400000000005800000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D00000000DDD
      00000077777770DD00000F077777770D00000FF07777777000000FFF00000000
      00000FFFFFFF0DDD00000FFF00000DDD0000D000DDDDD0000000DDDDDDDDDD00
      0000DDDDD0DDD0D00000DDDDDD000DDD0000}
    FilterIndex = 0
    DialogOptions = []
    DialogKind = fdOpen
  end
  object AdvEditBtn3: TAdvEditBtn
    Left = 8
    Top = 120
    Width = 165
    Height = 21
    Cursor = crHandPoint
    EmptyTextStyle = []
    Flat = False
    ShowURL = True
    URLColor = clYellow
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'MS Sans Serif'
    LabelFont.Style = []
    Lookup.Color = clBlack
    Lookup.DisplayList.Strings = (
      'http://www.borland.com'
      'http://www.microsoft.com'
      'http://www.tmssoftware.com')
    Lookup.Enabled = True
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
    ReadOnly = False
    TabOrder = 4
    Text = 'http://www.tmssoftware.com'
    Visible = True
    Version = '1.3.5.0'
    ButtonStyle = bsDropDown
    ButtonWidth = 16
    Etched = False
  end
  object AdvEditBtn4: TAdvEditBtn
    Left = 8
    Top = 144
    Width = 165
    Height = 21
    OnClipboardCopy = AdvEditBtn4ClipboardCopy
    OnClipboardCut = AdvEditBtn4ClipboardCut
    OnClipboardPaste = AdvEditBtn4ClipboardPaste
    EmptyTextStyle = []
    Flat = False
    FocusBorderColor = clWindow
    FocusColor = clHotLight
    FocusFontColor = clWindow
    FocusLabel = True
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWhite
    LabelFont.Height = -11
    LabelFont.Name = 'MS Sans Serif'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = False
    TabOrder = 5
    Visible = True
    Version = '1.3.5.0'
    ButtonStyle = bsButton
    ButtonWidth = 16
    Etched = False
  end
end
