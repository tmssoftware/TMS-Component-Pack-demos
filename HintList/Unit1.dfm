object Form1: TForm1
  Left = 192
  Top = 149
  Caption = 'TMS software THintList demo'
  ClientHeight = 211
  ClientWidth = 378
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object HintList1: THintList
    Left = 8
    Top = 8
    Width = 121
    Height = 97
    ItemHeight = 13
    Items.Strings = (
      'Item 1'
      'Item 2'
      'Item 3 that is too long to display'
      'Item 4'
      'Item 5 that is also too long to display'
      'Item 6')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    HintColor = 16045539
    Version = '1.4.0.0'
  end
end
