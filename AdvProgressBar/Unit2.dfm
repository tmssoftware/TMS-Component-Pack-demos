object Form1: TForm1
  Left = 353
  Top = 241
  Caption = 'AdvProgressBar demo'
  ClientHeight = 221
  ClientWidth = 334
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object AdvProgressBar1: TAdvProgressBar
    Left = 16
    Top = 24
    Width = 49
    Height = 177
    BorderColor = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    Level0ColorTo = 14811105
    Level1ColorTo = 13303807
    Level2Color = 5483007
    Level2ColorTo = 11064319
    Level3ColorTo = 13290239
    Level1Perc = 70
    Level2Perc = 90
    Orientation = goVertical
    Position = 50
    ShowBorder = True
    Steps = 20
    Version = '1.2.0.2'
  end
  object TrackBar1: TTrackBar
    Left = 88
    Top = 16
    Width = 45
    Height = 193
    Max = 100
    Orientation = trVertical
    Frequency = 5
    Position = 50
    TabOrder = 0
    OnChange = TrackBar1Change
  end
  object CheckBox1: TCheckBox
    Left = 136
    Top = 40
    Width = 97
    Height = 17
    Caption = 'Show gradient'
    Checked = True
    State = cbChecked
    TabOrder = 1
    OnClick = CheckBox1Click
  end
  object CheckBox2: TCheckBox
    Left = 136
    Top = 64
    Width = 97
    Height = 17
    Caption = 'Show percentage'
    Checked = True
    State = cbChecked
    TabOrder = 2
    OnClick = CheckBox2Click
  end
  object CheckBox3: TCheckBox
    Left = 136
    Top = 88
    Width = 97
    Height = 17
    Caption = 'Show position'
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = CheckBox3Click
  end
  object CheckBox4: TCheckBox
    Left = 136
    Top = 112
    Width = 153
    Height = 17
    Caption = 'Show colors stacked'
    TabOrder = 4
    OnClick = CheckBox4Click
  end
  object CheckBox5: TCheckBox
    Left = 136
    Top = 136
    Width = 97
    Height = 17
    Caption = 'Show completion smooth'
    TabOrder = 5
    OnClick = CheckBox5Click
  end
  object CheckBox6: TCheckBox
    Left = 136
    Top = 160
    Width = 97
    Height = 17
    Caption = 'Rounded corners'
    Checked = True
    State = cbChecked
    TabOrder = 6
    OnClick = CheckBox6Click
  end
end
