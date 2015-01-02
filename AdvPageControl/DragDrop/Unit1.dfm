object Form1: TForm1
  Left = 365
  Top = 210
  Caption = 'TAdvPageControl drag & drop'
  ClientHeight = 469
  ClientWidth = 359
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 8
    Width = 210
    Height = 13
    Caption = 'Use drag && drop to reorganize the tab sheets'
  end
  object AdvPageControl1: TAdvPageControl
    Left = 16
    Top = 32
    Width = 337
    Height = 209
    ActivePage = AdvTabSheet1
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clWindowText
    ActiveFont.Height = -11
    ActiveFont.Name = 'Tahoma'
    ActiveFont.Style = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabBackGroundColor = clBtnFace
    TabMargin.RightMargin = 0
    TabOverlap = 0
    Version = '2.0.0.4'
    PersistPagesState.Location = plRegistry
    PersistPagesState.Enabled = False
    TabOrder = 0
    OnDragDrop = AdvPageControl1DragDrop
    OnDragOver = AdvPageControl1DragOver
    OnMouseDown = AdvPageControl1MouseDown
    object AdvTabSheet1: TAdvTabSheet
      Caption = 'AdvTabSheet1'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object Edit1: TEdit
        Left = 56
        Top = 40
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'Edit1'
      end
    end
    object AdvTabSheet2: TAdvTabSheet
      Caption = 'AdvTabSheet2'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object Button1: TButton
        Left = 88
        Top = 56
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 0
      end
    end
    object AdvTabSheet3: TAdvTabSheet
      Caption = 'AdvTabSheet3'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object CheckBox1: TCheckBox
        Left = 56
        Top = 32
        Width = 97
        Height = 17
        Caption = 'CheckBox1'
        TabOrder = 0
      end
      object CheckBox2: TCheckBox
        Left = 56
        Top = 56
        Width = 97
        Height = 17
        Caption = 'CheckBox2'
        TabOrder = 1
      end
    end
    object AdvTabSheet4: TAdvTabSheet
      Caption = 'AdvTabSheet4'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object RadioButton1: TRadioButton
        Left = 96
        Top = 32
        Width = 113
        Height = 17
        Caption = 'RadioButton1'
        TabOrder = 0
      end
      object RadioButton2: TRadioButton
        Left = 96
        Top = 56
        Width = 113
        Height = 17
        Caption = 'RadioButton2'
        TabOrder = 1
      end
      object RadioButton3: TRadioButton
        Left = 96
        Top = 80
        Width = 113
        Height = 17
        Caption = 'RadioButton3'
        TabOrder = 2
      end
    end
  end
  object AdvPageControl2: TAdvPageControl
    Left = 16
    Top = 256
    Width = 337
    Height = 209
    ActivePage = AdvTabSheet6
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clWindowText
    ActiveFont.Height = -11
    ActiveFont.Name = 'Tahoma'
    ActiveFont.Style = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabBackGroundColor = clBtnFace
    TabMargin.RightMargin = 0
    TabOverlap = 0
    Version = '2.0.0.4'
    PersistPagesState.Location = plRegistry
    PersistPagesState.Enabled = False
    TabOrder = 1
    OnDragDrop = AdvPageControl1DragDrop
    OnDragOver = AdvPageControl1DragOver
    OnMouseDown = AdvPageControl1MouseDown
    object AdvTabSheet5: TAdvTabSheet
      Caption = 'AdvTabSheet5'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object Label1: TLabel
        Left = 120
        Top = 64
        Width = 31
        Height = 13
        Caption = 'Label1'
      end
      object RadioButton4: TRadioButton
        Left = 120
        Top = 96
        Width = 113
        Height = 17
        Caption = 'RadioButton4'
        TabOrder = 0
      end
    end
    object AdvTabSheet6: TAdvTabSheet
      Caption = 'AdvTabSheet6'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object Memo1: TMemo
        Left = 88
        Top = 48
        Width = 145
        Height = 73
        Lines.Strings = (
          'Memo1')
        TabOrder = 0
      end
    end
    object AdvTabSheet7: TAdvTabSheet
      Caption = 'AdvTabSheet7'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object Button2: TButton
        Left = 112
        Top = 64
        Width = 75
        Height = 25
        Caption = 'Button2'
        TabOrder = 0
      end
    end
  end
end
