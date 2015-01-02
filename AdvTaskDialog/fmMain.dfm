object MainForm: TMainForm
  Left = 0
  Top = 0
  Hint = 'Thiis the Windows title for the dialog b ox'
  Caption = 'TMS TAdvTaskDialog Explorer'
  ClientHeight = 426
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 136
    Top = 278
    Width = 321
    Height = 13
    Caption = 'Separate button names with spaces (Use quotes to embed spaces)'
  end
  object Label3: TLabel
    Left = 8
    Top = 4
    Width = 81
    Height = 13
    Caption = 'Include elements'
  end
  object Label2: TLabel
    Left = 36
    Top = 238
    Width = 81
    Height = 13
    Caption = 'Common Buttons'
  end
  object Label4: TLabel
    Left = 58
    Top = 164
    Width = 61
    Height = 13
    Caption = 'Expand label'
  end
  object Label5: TLabel
    Left = 306
    Top = 163
    Width = 72
    Height = 13
    Caption = 'Collapse Label:'
  end
  object Label6: TLabel
    Left = 19
    Top = 367
    Width = 74
    Height = 13
    Caption = 'Default button:'
  end
  object Button1: TButton
    Left = 242
    Top = 393
    Width = 264
    Height = 25
    Caption = 'Test TAdvTaskDialog'
    TabOrder = 0
    OnClick = Button1Click
  end
  object cbFooter: TCheckBox
    Left = 18
    Top = 325
    Width = 97
    Height = 17
    Caption = 'Include Footer'
    Checked = True
    State = cbChecked
    TabOrder = 1
    OnClick = cbFooterClick
  end
  object cbExpanded: TCheckBox
    Left = 18
    Top = 126
    Width = 84
    Height = 17
    Caption = 'More Details'
    Checked = True
    State = cbChecked
    TabOrder = 2
    OnClick = cbExpandedClick
  end
  object cbVerify: TCheckBox
    Left = 19
    Top = 303
    Width = 81
    Height = 12
    Caption = 'Verify text'
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = cbVerifyClick
  end
  object cbRadioButtons: TCheckBox
    Left = 19
    Top = 187
    Width = 89
    Height = 17
    Caption = 'Radio buttons'
    Checked = True
    State = cbChecked
    TabOrder = 4
    OnClick = cbRadioButtonsClick
  end
  object edCustomButtons: TEdit
    Left = 128
    Top = 261
    Width = 378
    Height = 21
    TabOrder = 5
    Text = '"Custom 1" "Custom 2"'
  end
  object memoRadiobuttons: TMemo
    Left = 128
    Top = 185
    Width = 377
    Height = 45
    Lines.Strings = (
      'Radio Button 1'
      'Radio Button 2'
      'Radio Button 3')
    TabOrder = 6
  end
  object cbCustom: TCheckBox
    Left = 19
    Top = 263
    Width = 89
    Height = 17
    Caption = 'Custom Buttons'
    Checked = True
    State = cbChecked
    TabOrder = 7
    OnClick = cbCustomClick
  end
  object edVerifyText: TEdit
    Left = 127
    Top = 299
    Width = 377
    Height = 21
    TabOrder = 8
    Text = 'Check box if you can read :)'
  end
  object cbCaption: TCheckBox
    Left = 19
    Top = 23
    Width = 89
    Height = 17
    Caption = 'Caption'
    Checked = True
    State = cbChecked
    TabOrder = 9
    OnClick = cbCaptionClick
  end
  object edCaption: TEdit
    Left = 129
    Top = 21
    Width = 378
    Height = 21
    Hint = 'Text for the Windows dialog box caption.'
    TabOrder = 10
    Text = 'Test of AdvTaskDialog'
  end
  object MemoFooter: TMemo
    Left = 127
    Top = 323
    Width = 378
    Height = 35
    Lines.Strings = (
      'Sample Footer message'
      'For example:  If you do this you will loose all unsaved changes!')
    TabOrder = 11
  end
  object cbInstruction: TCheckBox
    Left = 19
    Top = 46
    Width = 83
    Height = 17
    Caption = 'Instruction'
    Checked = True
    State = cbChecked
    TabOrder = 12
    OnClick = cbInstructionClick
  end
  object MemoInstruction: TMemo
    Left = 128
    Top = 48
    Width = 377
    Height = 33
    Lines.Strings = (
      'This is the bold blue main instruction and'
      'can be mulitple lines.')
    TabOrder = 13
  end
  object cbContent: TCheckBox
    Left = 19
    Top = 86
    Width = 64
    Height = 17
    Caption = 'Content'
    Checked = True
    State = cbChecked
    TabOrder = 14
    OnClick = cbContentClick
  end
  object MemoContent: TMemo
    Left = 128
    Top = 87
    Width = 377
    Height = 32
    Lines.Strings = (
      'This is the normal "content" of the dialog.'
      ' Notice it'#39's in relatively small print.')
    TabOrder = 15
  end
  object cbBtnOK: TCheckBox
    Left = 129
    Top = 240
    Width = 50
    Height = 10
    Caption = 'cbOK'
    Checked = True
    State = cbChecked
    TabOrder = 16
  end
  object cbBtnNo: TCheckBox
    Left = 246
    Top = 240
    Width = 50
    Height = 10
    Caption = 'cbNo'
    TabOrder = 17
  end
  object cbBtnCancel: TCheckBox
    Left = 366
    Top = 240
    Width = 66
    Height = 10
    Caption = 'cbCancel'
    TabOrder = 18
  end
  object cbBtnClose: TCheckBox
    Left = 442
    Top = 240
    Width = 62
    Height = 10
    Caption = 'cbClose'
    TabOrder = 19
  end
  object cbBtnRetry: TCheckBox
    Left = 304
    Top = 240
    Width = 60
    Height = 10
    Caption = 'cbRetry'
    TabOrder = 20
  end
  object cbBtnYes: TCheckBox
    Left = 182
    Top = 240
    Width = 55
    Height = 10
    Caption = 'cbYes'
    TabOrder = 21
  end
  object MemoExpand: TMemo
    Left = 128
    Top = 125
    Width = 376
    Height = 33
    Lines.Strings = (
      'This is for extended details that are initiall hidden'
      'unless user clicks the "view more" button.')
    TabOrder = 22
  end
  object edExpand: TEdit
    Left = 127
    Top = 161
    Width = 121
    Height = 21
    TabOrder = 23
    Text = 'More Detail'
  end
  object edCollapse: TEdit
    Left = 384
    Top = 161
    Width = 121
    Height = 21
    TabOrder = 24
    Text = 'Less Detail'
  end
  object spnDefButton: TSpinEdit
    Left = 127
    Top = 364
    Width = 46
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 25
    Value = 0
  end
end
