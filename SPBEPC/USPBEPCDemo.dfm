object Form92: TForm92
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'SPBEPC Demo'
  ClientHeight = 350
  ClientWidth = 480
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
  object Label1: TLabel
    Left = 334
    Top = 8
    Width = 58
    Height = 13
    Caption = 'Chart Type:'
  end
  object Label2: TLabel
    Left = 68
    Top = 267
    Width = 24
    Height = 13
    Caption = 'Title:'
  end
  object Label3: TLabel
    Left = 30
    Top = 294
    Width = 62
    Height = 13
    Caption = 'Top Caption:'
  end
  object Label4: TLabel
    Left = 14
    Top = 323
    Width = 78
    Height = 13
    Caption = 'Bottom Caption:'
  end
  object Label5: TLabel
    Left = 334
    Top = 186
    Width = 50
    Height = 13
    Caption = 'Current: 0'
  end
  object Label6: TLabel
    Left = 334
    Top = 205
    Width = 55
    Height = 13
    Caption = 'Potential: 0'
  end
  object SPBEPC1: TSPBEPC
    Left = 8
    Top = 8
    Width = 320
    Height = 250
    Title = 'Energy Efficiency Rating'
    CurrentTitle = 'Current'
    PotentialTitle = 'Potential'
    TopCaption = 'Very energy efficient - lower running costs'
    BottomCaption = 'Not energy efficient - higher running costs'
    BottomCaptionFont.Charset = DEFAULT_CHARSET
    BottomCaptionFont.Color = clWindowText
    BottomCaptionFont.Height = -11
    BottomCaptionFont.Name = 'Tahoma'
    BottomCaptionFont.Style = [fsItalic]
    TopCaptionFont.Charset = DEFAULT_CHARSET
    TopCaptionFont.Color = clWindowText
    TopCaptionFont.Height = -11
    TopCaptionFont.Name = 'Tahoma'
    TopCaptionFont.Style = [fsItalic]
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleColor = 12350464
    Version = '1.0.0.1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    TabOrder = 0
    OnCurrentChange = SPBEPC1CurrentChange
    OnPotentialChange = SPBEPC1PotentialChange
  end
  object ComboBox1: TComboBox
    Left = 398
    Top = 5
    Width = 43
    Height = 21
    HelpType = htKeyword
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 1
    Text = 'EPC'
    OnChange = ComboBox1Change
    Items.Strings = (
      'EPC'
      'EIC')
  end
  object CheckBox1: TCheckBox
    Left = 334
    Top = 32
    Width = 97
    Height = 17
    Caption = 'Current Visible'
    Checked = True
    State = cbChecked
    TabOrder = 2
    OnClick = CheckBox1Click
  end
  object CheckBox2: TCheckBox
    Left = 334
    Top = 55
    Width = 97
    Height = 17
    Caption = 'Potential Visible'
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = CheckBox2Click
  end
  object Edit1: TEdit
    Left = 98
    Top = 264
    Width = 230
    Height = 21
    TabOrder = 8
    OnChange = Edit1Change
  end
  object CheckBox3: TCheckBox
    Left = 334
    Top = 78
    Width = 97
    Height = 17
    Caption = 'Allow Sliding'
    Checked = True
    State = cbChecked
    TabOrder = 4
    OnClick = CheckBox3Click
  end
  object Edit2: TEdit
    Left = 98
    Top = 291
    Width = 230
    Height = 21
    TabOrder = 10
    OnChange = Edit2Change
  end
  object Edit3: TEdit
    Left = 98
    Top = 320
    Width = 230
    Height = 21
    TabOrder = 12
    OnChange = Edit3Change
  end
  object Button1: TButton
    Left = 334
    Top = 262
    Width = 139
    Height = 25
    Caption = 'Set Title Font'
    TabOrder = 9
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 334
    Top = 289
    Width = 139
    Height = 25
    Caption = 'Set Top Caption Font'
    TabOrder = 11
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 334
    Top = 318
    Width = 139
    Height = 25
    Caption = 'Set Bottom Caption Font'
    TabOrder = 13
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 334
    Top = 155
    Width = 91
    Height = 25
    Caption = 'Save to .BMP'
    TabOrder = 7
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 334
    Top = 124
    Width = 91
    Height = 25
    Caption = 'Set Title Color'
    TabOrder = 6
    OnClick = Button5Click
  end
  object CheckBox4: TCheckBox
    Left = 334
    Top = 101
    Width = 137
    Height = 17
    Caption = 'Current sets Title Color'
    TabOrder = 5
    OnClick = CheckBox4Click
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 296
    Top = 200
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'bmp'
    Filter = 'Bitmap Files|*.bmp'
    Left = 256
    Top = 144
  end
  object ColorDialog1: TColorDialog
    Left = 208
    Top = 80
  end
end
