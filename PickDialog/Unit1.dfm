object Form1: TForm1
  Left = 188
  Top = 145
  Width = 384
  Height = 188
  Caption = 'TMS software TPickDialog demo application'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 104
    Top = 8
    Width = 69
    Height = 13
    Caption = 'Selected items'
  end
  object Button1: TButton
    Left = 16
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Pick list'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 104
    Top = 24
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 1
  end
  object PickDialog1: TPickDialog
    PickItems.Strings = (
      'BMW'
      'Porsche'
      'Audi'
      'Mercedes'
      'Opel'
      'Ferrari')
    MultiSel = True
    AcceptDblClick = False
    Sort = False
    ShowTitle = False
    ButtonPosition = bpBottom
    Width = 280
    Height = 270
    TopPosition = 0
    LeftPosition = 0
    DialogPosition = fposCenter
    CancelCaption = 'Cancel'
    OkCaption = 'OK'
    Sizeable = False
    ToolWindow = False
    Left = 48
    Top = 40
  end
end
