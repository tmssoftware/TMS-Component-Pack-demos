object Form674: TForm674
  Left = 0
  Top = 0
  Caption = 'TMS Advanced Smooth Slideshow'
  ClientHeight = 843
  ClientWidth = 1155
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1155
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 345
      Top = 47
      Width = 92
      Height = 13
      Caption = 'Thumbnail position:'
    end
    object Label3: TLabel
      Left = 353
      Top = 13
      Width = 84
      Height = 13
      Caption = 'Rotation interval:'
    end
    object Button1: TButton
      Left = 8
      Top = 9
      Width = 129
      Height = 25
      Caption = 'Hide Thumbnails'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 143
      Top = 9
      Width = 100
      Height = 25
      Caption = 'Fullscreen'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 249
      Top = 9
      Width = 97
      Height = 25
      Caption = 'Start Rotation'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 8
      Top = 42
      Width = 129
      Height = 25
      Caption = 'Next Image'
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 143
      Top = 42
      Width = 100
      Height = 25
      Caption = 'Previous Image'
      TabOrder = 4
      OnClick = Button5Click
    end
    object ComboBox2: TComboBox
      Left = 443
      Top = 44
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 5
      OnChange = ComboBox2Change
      Items.Strings = (
        'Left'
        'Top'
        'Right'
        'Bottom')
    end
    object SpinEdit1: TSpinEdit
      Left = 443
      Top = 11
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 6
      Value = 0
      OnChange = SpinEdit1Change
    end
  end
  object AdvSmoothSlideShow1: TAdvSmoothSlideShow
    Left = 233
    Top = 73
    Width = 922
    Height = 770
    PlaceHolderFill.Color = clWhite
    PlaceHolderFill.ColorMirror = clNone
    PlaceHolderFill.ColorMirrorTo = clNone
    PlaceHolderFill.GradientType = gtSolid
    PlaceHolderFill.GradientMirrorType = gtVertical
    PlaceHolderFill.BorderColor = clSilver
    PlaceHolderFill.Rounding = 0
    PlaceHolderFill.ShadowOffset = 0
    PlaceHolderFill.Glow = gmNone
    Fill.Color = clWhite
    Fill.ColorMirror = clNone
    Fill.ColorMirrorTo = clNone
    Fill.GradientType = gtSolid
    Fill.GradientMirrorType = gtVertical
    Fill.BorderColor = clSilver
    Fill.Rounding = 0
    Fill.ShadowOffset = 0
    Fill.Glow = gmNone
    DescriptionFill.Color = clWhite
    DescriptionFill.ColorMirror = clNone
    DescriptionFill.ColorMirrorTo = clNone
    DescriptionFill.GradientType = gtSolid
    DescriptionFill.GradientMirrorType = gtSolid
    DescriptionFill.BorderColor = clSilver
    DescriptionFill.Rounding = 0
    DescriptionFill.ShadowOffset = 0
    DescriptionFill.Glow = gmNone
    Items = <>
    Margin.Left = 10
    Margin.Top = 10
    Margin.Right = 10
    Margin.Bottom = 10
    ThumbNailHolderFill.Color = 15790320
    ThumbNailHolderFill.ColorMirror = clNone
    ThumbNailHolderFill.ColorMirrorTo = clNone
    ThumbNailHolderFill.GradientType = gtSolid
    ThumbNailHolderFill.GradientMirrorType = gtVertical
    ThumbNailHolderFill.BorderColor = clSilver
    ThumbNailHolderFill.Rounding = 0
    ThumbNailHolderFill.ShadowOffset = 0
    ThumbNailHolderFill.Glow = gmGradient
    ThumbNailSelectedFill.Color = 11196927
    ThumbNailSelectedFill.ColorTo = 7257087
    ThumbNailSelectedFill.ColorMirror = 4370174
    ThumbNailSelectedFill.ColorMirrorTo = 8053246
    ThumbNailSelectedFill.GradientType = gtVertical
    ThumbNailSelectedFill.GradientMirrorType = gtVertical
    ThumbNailSelectedFill.BorderColor = 4370174
    ThumbNailSelectedFill.Rounding = 0
    ThumbNailSelectedFill.ShadowOffset = 0
    ThumbNailSelectedFill.Glow = gmNone
    OnThumbClick = AdvSmoothSlideShow1ThumbClick
    Version = '1.3.0.0'
    Align = alClient
    TabOrder = 1
    ParentShowHint = False
    ShowHint = True
    OnMouseEnter = AdvSmoothSlideShow1MouseEnter
    OnMouseLeave = AdvSmoothSlideShow1MouseLeave
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 233
    Height = 770
    Align = alLeft
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 8
      Top = 6
      Width = 219
      Height = 683
      Caption = 'Animations'
      TabOrder = 0
      object CheckBox1: TCheckBox
        Left = 16
        Top = 24
        Width = 145
        Height = 17
        Caption = 'Bottom Left To Top Right'
        TabOrder = 0
        OnClick = CheckBox1Click
      end
      object CheckBox2: TCheckBox
        Tag = 1
        Left = 16
        Top = 47
        Width = 145
        Height = 17
        Caption = 'Bottom Right To Top Left'
        TabOrder = 1
        OnClick = CheckBox1Click
      end
      object CheckBox3: TCheckBox
        Tag = 2
        Left = 16
        Top = 70
        Width = 145
        Height = 17
        Caption = 'Top Left To Bottom Right'
        TabOrder = 2
        OnClick = CheckBox1Click
      end
      object CheckBox4: TCheckBox
        Tag = 3
        Left = 16
        Top = 93
        Width = 145
        Height = 17
        Caption = 'Top Right To Bottom Left'
        TabOrder = 3
        OnClick = CheckBox1Click
      end
      object CheckBox5: TCheckBox
        Tag = 4
        Left = 16
        Top = 116
        Width = 97
        Height = 17
        Caption = 'Bottom To Top'
        TabOrder = 4
        OnClick = CheckBox1Click
      end
      object CheckBox6: TCheckBox
        Tag = 5
        Left = 16
        Top = 139
        Width = 97
        Height = 17
        Caption = 'Top To Bottom'
        TabOrder = 5
        OnClick = CheckBox1Click
      end
      object CheckBox7: TCheckBox
        Tag = 6
        Left = 16
        Top = 162
        Width = 97
        Height = 17
        Caption = 'Left To Right'
        TabOrder = 6
        OnClick = CheckBox1Click
      end
      object CheckBox8: TCheckBox
        Tag = 7
        Left = 16
        Top = 185
        Width = 97
        Height = 17
        Caption = 'Right To Left'
        TabOrder = 7
        OnClick = CheckBox1Click
      end
      object CheckBox9: TCheckBox
        Tag = 23
        Left = 16
        Top = 553
        Width = 97
        Height = 17
        Caption = 'Spiral'
        TabOrder = 8
        OnClick = CheckBox1Click
      end
      object CheckBox10: TCheckBox
        Tag = 22
        Left = 16
        Top = 530
        Width = 97
        Height = 17
        Caption = 'Spin'
        TabOrder = 9
        OnClick = CheckBox1Click
      end
      object CheckBox11: TCheckBox
        Tag = 21
        Left = 16
        Top = 507
        Width = 97
        Height = 17
        Caption = 'Rotate'
        TabOrder = 10
        OnClick = CheckBox1Click
      end
      object CheckBox12: TCheckBox
        Tag = 20
        Left = 16
        Top = 484
        Width = 97
        Height = 17
        Caption = 'Rectangle'
        TabOrder = 11
        OnClick = CheckBox1Click
      end
      object CheckBox13: TCheckBox
        Tag = 19
        Left = 16
        Top = 461
        Width = 97
        Height = 17
        Caption = 'Ellipse'
        TabOrder = 12
        OnClick = CheckBox1Click
      end
      object CheckBox14: TCheckBox
        Tag = 18
        Left = 16
        Top = 438
        Width = 145
        Height = 17
        Caption = 'Horizontal CheckBoard'
        TabOrder = 13
        OnClick = CheckBox1Click
      end
      object CheckBox15: TCheckBox
        Tag = 17
        Left = 16
        Top = 415
        Width = 121
        Height = 17
        Caption = 'Vertical CheckBoard'
        TabOrder = 14
        OnClick = CheckBox1Click
      end
      object CheckBox16: TCheckBox
        Tag = 16
        Left = 16
        Top = 392
        Width = 97
        Height = 17
        Caption = 'CheckBoard'
        TabOrder = 15
        OnClick = CheckBox1Click
      end
      object CheckBox17: TCheckBox
        Tag = 24
        Left = 16
        Top = 576
        Width = 97
        Height = 17
        Caption = 'Fade In/Out'
        TabOrder = 16
        OnClick = CheckBox1Click
      end
      object CheckBox19: TCheckBox
        Tag = 11
        Left = 16
        Top = 277
        Width = 121
        Height = 17
        Caption = 'Wipe Right to Left'
        TabOrder = 17
        OnClick = CheckBox1Click
      end
      object CheckBox20: TCheckBox
        Tag = 8
        Left = 16
        Top = 208
        Width = 121
        Height = 17
        Caption = 'Wipe Bottom To Top'
        TabOrder = 18
        OnClick = CheckBox1Click
      end
      object CheckBox21: TCheckBox
        Tag = 9
        Left = 16
        Top = 231
        Width = 137
        Height = 17
        Caption = 'Wipe Top To Bottom'
        TabOrder = 19
        OnClick = CheckBox1Click
      end
      object CheckBox22: TCheckBox
        Tag = 10
        Left = 16
        Top = 254
        Width = 121
        Height = 17
        Caption = 'Wipe Left To Right'
        TabOrder = 20
        OnClick = CheckBox1Click
      end
      object CheckBox23: TCheckBox
        Tag = 12
        Left = 16
        Top = 300
        Width = 168
        Height = 17
        Caption = 'Wipe Bottom Left To Top Right'
        TabOrder = 21
        OnClick = CheckBox1Click
      end
      object CheckBox24: TCheckBox
        Tag = 13
        Left = 16
        Top = 323
        Width = 171
        Height = 17
        Caption = 'Wipe Bottom Right To Top Left'
        TabOrder = 22
        OnClick = CheckBox1Click
      end
      object CheckBox25: TCheckBox
        Tag = 14
        Left = 16
        Top = 346
        Width = 171
        Height = 17
        Caption = 'Wipe Top Left To Bottom Right'
        TabOrder = 23
        OnClick = CheckBox1Click
      end
      object CheckBox26: TCheckBox
        Tag = 15
        Left = 16
        Top = 369
        Width = 185
        Height = 17
        Caption = 'Wipe Top Right To Bottom Left'
        TabOrder = 24
        OnClick = CheckBox1Click
      end
      object CheckBox27: TCheckBox
        Tag = 27
        Left = 16
        Top = 645
        Width = 97
        Height = 17
        Caption = 'Rotate Tear'
        TabOrder = 25
        OnClick = CheckBox1Click
      end
      object CheckBox28: TCheckBox
        Tag = 26
        Left = 16
        Top = 622
        Width = 97
        Height = 17
        Caption = 'Vertical Tear'
        TabOrder = 26
        OnClick = CheckBox1Click
      end
      object CheckBox29: TCheckBox
        Tag = 25
        Left = 16
        Top = 599
        Width = 97
        Height = 17
        Caption = 'Horizontal Tear'
        TabOrder = 27
        OnClick = CheckBox1Click
      end
    end
    object GroupBox2: TGroupBox
      Left = 10
      Top = 695
      Width = 217
      Height = 66
      Caption = 'Text'
      TabOrder = 1
      object CheckBox18: TCheckBox
        Left = 14
        Top = 24
        Width = 113
        Height = 17
        Caption = 'Add text on image'
        TabOrder = 0
        OnClick = CheckBox18Click
      end
    end
  end
end
