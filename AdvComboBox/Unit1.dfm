object Form1: TForm1
  Left = 192
  Top = 149
  Caption = 'TMS software TAdvCombo demo application'
  ClientHeight = 112
  ClientWidth = 431
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object AdvComboBox1: TAdvComboBox
    Left = 16
    Top = 16
    Width = 145
    Height = 21
    Color = clWindow
    Version = '1.4.0.0'
    Visible = True
    Flat = True
    Ctl3D = False
    DropWidth = 0
    Enabled = True
    ItemIndex = -1
    Items.Strings = (
      'Audi'
      'BMW'
      'Bugatti'
      'Ferrari'
      'Lamborghini'
      'Mercedes')
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'MS Sans Serif'
    LabelFont.Style = []
    ParentCtl3D = False
    Sorted = True
    TabOrder = 0
  end
  object AdvComboBox2: TAdvComboBox
    Left = 240
    Top = 16
    Width = 145
    Height = 21
    Color = clBtnFace
    Version = '1.4.0.0'
    Visible = True
    Flat = True
    Ctl3D = False
    DropWidth = 0
    Enabled = True
    ItemIndex = -1
    Items.Strings = (
      'BMW'
      'Mercedes'
      'Ferrari'
      'Porsche'
      'Audi'
      'Bugatti')
    LabelCaption = 'Label :'
    LabelPosition = lpLeftCenter
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'MS Sans Serif'
    LabelFont.Style = []
    ParentCtl3D = False
    TabOrder = 1
  end
end
