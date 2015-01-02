object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'TMS vCard viewer'
  ClientHeight = 342
  ClientWidth = 495
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 64
    Width = 105
    Height = 105
    Proportional = True
    Stretch = True
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 97
    Height = 25
    Caption = 'Open vCard'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 111
    Top = 64
    Width = 377
    Height = 265
    TabOrder = 1
  end
  object vCard1: TvCard
    vContacts = <>
    Left = 304
  end
  object OpenDialog1: TOpenDialog
    Filter = 'vCard file|*.vcf'
    Left = 224
  end
end
