object Form92: TForm92
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'AdvFancyLabel/AdvCurve Demo'
  ClientHeight = 469
  ClientWidth = 788
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
    Left = 8
    Top = 411
    Width = 26
    Height = 13
    Caption = 'Text:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object AdvFancyLabel1: TAdvFancyLabel
    Left = 8
    Top = 8
    Width = 772
    Height = 392
    Shadow = False
    Points = <
      item
        X = 26.666671752929690000
        Y = 22.500000000000000000
        XTo = 271.333343505859400000
        YTo = 149.500000000000000000
      end
      item
        X = 81.000000000000000000
        Y = 193.000000000000000000
        XTo = 228.000000000000000000
        YTo = 270.000000000000000000
      end
      item
        X = 450.000000000000000000
        Y = 307.000000000000000000
        XTo = 566.000000000000000000
        YTo = 265.000000000000000000
      end
      item
        X = 798.000000000000000000
        Y = -36.000000000000000000
        XTo = 550.000000000000000000
        YTo = 52.000000000000000000
      end
      item
        X = 407.000000000000000000
        Y = 243.000000000000000000
        XTo = 554.000000000000000000
        YTo = 192.000000000000000000
      end
      item
        X = 631.000000000000000000
        Y = 138.000000000000000000
        XTo = 631.000000000000000000
        YTo = 138.000000000000000000
      end>
    Transparent = False
    Version = '1.0.0.0'
    Text = 'TAdvFancyLabel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object Edit1: TEdit
    Left = 40
    Top = 408
    Width = 219
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = Edit1Change
  end
  object Button1: TButton
    Left = 8
    Top = 435
    Width = 89
    Height = 25
    Caption = 'Font Settings'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 103
    Top = 435
    Width = 75
    Height = 25
    Caption = 'Pick Color'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 495
    Top = 435
    Width = 89
    Height = 25
    Caption = 'Load Settings'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 391
    Top = 435
    Width = 89
    Height = 25
    Caption = 'Save Settings'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 184
    Top = 435
    Width = 75
    Height = 25
    Caption = 'Edit Curve'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 599
    Top = 435
    Width = 89
    Height = 25
    Caption = 'Save As Bitmap'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button6Click
  end
  object CheckBox1: TCheckBox
    Left = 281
    Top = 410
    Width = 97
    Height = 17
    Caption = 'Add Shadow'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = CheckBox1Click
  end
  object Button7: TButton
    Left = 281
    Top = 435
    Width = 66
    Height = 25
    Caption = 'Animate'
    TabOrder = 8
    OnClick = Button7Click
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = []
    Left = 416
    Top = 176
  end
  object ColorDialog1: TColorDialog
    Left = 528
    Top = 160
  end
  object AdvCurveEditorDialog1: TAdvCurveEditorDialog
    Left = 472
    Top = 120
  end
  object SaveDialog1: TSaveDialog
    Left = 552
    Top = 264
  end
  object OpenDialog1: TOpenDialog
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 464
    Top = 272
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 696
    Top = 424
  end
end
