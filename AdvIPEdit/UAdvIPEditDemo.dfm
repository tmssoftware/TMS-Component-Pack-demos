object Form92: TForm92
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'AdvIPEdit Demo'
  ClientHeight = 56
  ClientWidth = 299
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object AdvIPEdit1: TAdvIPEdit
    Left = 63
    Top = 8
    Width = 120
    Height = 21
    Color = clWindow
    Enabled = True
    MaxLength = 3
    TabOrder = 0
    Visible = True
    AutoFocus = True
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
    SelectFirstChar = True
    Version = '1.0.0.0'
    EditMask = ''
    IPAddress = '192.168.1.120'
    IPAddressType = ipv4
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 8
    Width = 49
    Height = 21
    AutoComplete = False
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 1
    Text = 'IPv4'
    OnChange = ComboBox1Change
    Items.Strings = (
      'IPv4'
      'IPv6')
  end
  object Button1: TButton
    Left = 190
    Top = 6
    Width = 100
    Height = 25
    Caption = 'Show IP Address'
    TabOrder = 2
    OnClick = Button1Click
  end
end
