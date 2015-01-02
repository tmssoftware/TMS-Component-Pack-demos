object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'AdvMessageBox Test'
  ClientHeight = 303
  ClientWidth = 380
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 14
    Top = 16
    Width = 47
    Height = 13
    Caption = 'Caption:  '
  end
  object Label2: TLabel
    Left = 30
    Top = 48
    Width = 25
    Height = 13
    Caption = 'Icon:'
  end
  object Label3: TLabel
    Left = 29
    Top = 76
    Width = 26
    Height = 13
    Caption = 'Text:'
  end
  object Label4: TLabel
    Left = 14
    Top = 184
    Width = 41
    Height = 13
    Caption = 'Buttons:'
  end
  object Label5: TLabel
    Left = 24
    Top = 232
    Width = 34
    Height = 13
    Caption = 'Result:'
  end
  object lbresults: TLabel
    Left = 64
    Top = 232
    Width = 3
    Height = 13
  end
  object BtnTMS: TButton
    Left = 65
    Top = 264
    Width = 145
    Height = 25
    Caption = 'TMS TAdvMessageBox'
    TabOrder = 0
    OnClick = BtnTMSClick
  end
  object BtnWindows: TButton
    Left = 216
    Top = 264
    Width = 145
    Height = 25
    Caption = 'Windows Messagebox'
    TabOrder = 1
    OnClick = BtnWindowsClick
  end
  object edCaption: TEdit
    Left = 61
    Top = 13
    Width = 300
    Height = 21
    TabOrder = 2
    Text = 'Test of MessageBox'
  end
  object cbIcon: TComboBox
    Left = 61
    Top = 45
    Width = 300
    Height = 21
    ItemIndex = 0
    TabOrder = 3
    Text = 'Select Icon'
    Items.Strings = (
      'Select Icon'
      'MB_ICONEXCLAMATION'
      'MB_ICONWARNING'
      'MB_ICONASTERISK'
      'MB_ICONINFORMATION'
      'MB_ICONQUESTION'
      'MB_ICONSTOP'
      'MB_ICONERROR'
      'MB_ICONHAND')
  end
  object MemoInfo: TMemo
    Left = 61
    Top = 76
    Width = 300
    Height = 89
    Lines.Strings = (
      'Sample short message.')
    TabOrder = 4
  end
  object cbButtons: TComboBox
    Left = 64
    Top = 184
    Width = 297
    Height = 21
    TabOrder = 5
    Text = 'Pick Buttons'
    Items.Strings = (
      'Pick the buttons to show'
      'ABORT, RETRY, IGNORE'
      'CANCEL, TRY AGAIN, CONTINUE'
      'OK'
      'OK, CANCEL'
      'RETRY, CANCEL'
      'YES, NO'
      'YES, NO, CANCEL')
  end
end
