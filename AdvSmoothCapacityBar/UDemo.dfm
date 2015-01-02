object Form164: TForm164
  Left = 0
  Top = 0
  Caption = 'TMS Software '
  ClientHeight = 289
  ClientWidth = 674
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object AdvSmoothCapacityBar1: TAdvSmoothCapacityBar
    Left = 0
    Top = 0
    Width = 674
    Height = 184
    Align = alClient
    Appearance.AutoFormatValues = False
    Appearance.BackGroundFill.Color = 9404020
    Appearance.BackGroundFill.ColorTo = 10983309
    Appearance.BackGroundFill.ColorMirror = clNone
    Appearance.BackGroundFill.ColorMirrorTo = clNone
    Appearance.BackGroundFill.GradientType = gtVertical
    Appearance.BackGroundFill.GradientMirrorType = gtSolid
    Appearance.BackGroundFill.BorderColor = clNone
    Appearance.BackGroundFill.Rounding = 0
    Appearance.BackGroundFill.ShadowOffset = 0
    Appearance.BackGroundFill.Glow = gmNone
    Appearance.Color = 15592683
    Appearance.ColorTo = 14605788
    Appearance.CapacityFont.Charset = DEFAULT_CHARSET
    Appearance.CapacityFont.Color = clWhite
    Appearance.CapacityFont.Height = -12
    Appearance.CapacityFont.Name = 'Tahoma'
    Appearance.CapacityFont.Style = []
    Appearance.CapacityFormat = '100 MB'
    Appearance.FreeFormat = '%.0f MB'
    Appearance.LegendFormat = '%.0f MB'
    Appearance.LegendFont.Charset = DEFAULT_CHARSET
    Appearance.LegendFont.Color = clWhite
    Appearance.LegendFont.Height = -12
    Appearance.LegendFont.Name = 'Tahoma'
    Appearance.LegendFont.Style = []
    Appearance.Rounded = False
    Items = <
      item
        Value = 12.000000000000000000
        Color = 16725422
        ColorTo = 16717731
        Description = 'Video'
      end
      item
        Value = 2.000000000000000000
        Color = 2686975
        ColorTo = 61680
        Description = 'Photos'
      end
      item
        Value = 15.000000000000000000
        Color = 5820781
        ColorTo = 3523662
        Description = 'Apps'
      end>
    CapacityDescription = 'Capacity'
    FreeDescription = 'Free'
    TotalCapacity = 100.000000000000000000
  end
  object Panel1: TPanel
    Left = 0
    Top = 184
    Width = 674
    Height = 105
    Align = alBottom
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 10
      Width = 77
      Height = 13
      Caption = 'Capacity label : '
    end
    object Label2: TLabel
      Left = 8
      Top = 42
      Width = 46
      Height = 13
      Caption = 'Capacity:'
    end
    object Label3: TLabel
      Left = 8
      Top = 77
      Width = 58
      Height = 13
      Caption = 'Free Space:'
    end
    object Label4: TLabel
      Left = 216
      Top = 42
      Width = 3
      Height = 13
    end
    object Label5: TLabel
      Left = 216
      Top = 77
      Width = 3
      Height = 13
    end
    object Button1: TButton
      Left = 264
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Add Capacity'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 91
      Top = 7
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Button2: TButton
      Left = 264
      Top = 36
      Width = 75
      Height = 25
      Caption = 'Clear'
      TabOrder = 2
      OnClick = Button2Click
    end
    object TrackBar1: TTrackBar
      Left = 85
      Top = 34
      Width = 133
      Height = 29
      Max = 500
      Min = 10
      Frequency = 10
      Position = 10
      TabOrder = 3
      OnChange = TrackBar1Change
    end
    object TrackBar2: TTrackBar
      Left = 85
      Top = 69
      Width = 133
      Height = 29
      Max = 1000
      Min = 10
      Frequency = 50
      Position = 10
      TabOrder = 4
      OnChange = TrackBar2Change
    end
  end
end
