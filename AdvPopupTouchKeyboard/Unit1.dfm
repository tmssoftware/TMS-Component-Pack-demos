object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'AdvPopupTouchKeyboard demo'
  ClientHeight = 223
  ClientWidth = 441
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
    Left = 24
    Top = 8
    Width = 395
    Height = 13
    Caption = 
      'The keyboard automatically hides for controls that cannot accept' +
      ' keys like buttons'
  end
  object Edit1: TEdit
    Left = 40
    Top = 70
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 40
    Top = 102
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object Memo1: TMemo
    Left = 208
    Top = 46
    Width = 185
    Height = 101
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object Button1: TButton
    Left = 86
    Top = 169
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
  end
  object Button2: TButton
    Left = 184
    Top = 169
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 4
  end
  object AdvPopupTouchKeyBoard1: TAdvPopupTouchKeyBoard
    AutoFollowFocus = True
    AutoHide = True
    KeyboardType = ktQWERTY
    Left = 360
    Top = 144
  end
end
