object Form1: TForm1
  Left = 576
  Top = 210
  Width = 556
  Height = 388
  Caption = 'Macro Recorder demo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button2: TButton
    Left = 8
    Top = 8
    Width = 107
    Height = 25
    Caption = 'Start recording'
    TabOrder = 0
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 48
    Width = 107
    Height = 25
    Caption = 'Stop recording'
    TabOrder = 1
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 88
    Width = 107
    Height = 25
    Caption = 'Playback'
    TabOrder = 2
    OnClick = Button4Click
  end
  object GroupBox1: TGroupBox
    Left = 128
    Top = 8
    Width = 409
    Height = 313
    Caption = 'Some controls to use during macro recording'
    TabOrder = 3
    object Label1: TLabel
      Left = 16
      Top = 128
      Width = 29
      Height = 13
      Caption = '&Memo'
      FocusControl = Memo1
    end
    object Button1: TButton
      Left = 8
      Top = 24
      Width = 121
      Height = 25
      Caption = 'Show other form'
      TabOrder = 0
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 152
      Top = 24
      Width = 97
      Height = 17
      Caption = 'CheckBox 1'
      TabOrder = 1
    end
    object CheckBox2: TCheckBox
      Left = 152
      Top = 56
      Width = 97
      Height = 17
      Caption = 'CheckBox 2'
      TabOrder = 2
    end
    object Button6: TButton
      Left = 14
      Top = 88
      Width = 115
      Height = 25
      Caption = 'Show message'
      TabOrder = 3
      OnClick = Button6Click
    end
    object Memo1: TMemo
      Left = 16
      Top = 144
      Width = 377
      Height = 161
      TabOrder = 4
    end
    object Edit1: TEdit
      Left = 176
      Top = 92
      Width = 121
      Height = 21
      TabOrder = 5
    end
  end
  object MacroRecorder1: TMacroRecorder
    PlaybackSpeed = pbNormal
    RecordingRange = rrApplication
    Options = [roMouseMove, roMouseRelative]
    Version = '1.0.0.0'
    Left = 8
    Top = 8
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 128
    object File1: TMenuItem
      Caption = 'File'
      object Open1: TMenuItem
        Caption = 'Open'
      end
      object Save1: TMenuItem
        Caption = 'Save'
      end
      object Saveas1: TMenuItem
        Caption = 'Save as'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object Edit2: TMenuItem
      Caption = 'Edit'
      object Cut1: TMenuItem
        Caption = 'Cut'
      end
      object Copy1: TMenuItem
        Caption = 'Copy'
      end
      object Paste1: TMenuItem
        Caption = 'Paste'
      end
    end
    object Vies1: TMenuItem
      Caption = 'View'
      object Zoomin1: TMenuItem
        Caption = 'Zoom in'
      end
      object Zoomout1: TMenuItem
        Caption = 'Zoom out'
        OnClick = Zoomout1Click
      end
    end
  end
end
