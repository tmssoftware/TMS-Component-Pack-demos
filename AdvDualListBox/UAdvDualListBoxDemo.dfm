object Form92: TForm92
  Left = 0
  Top = 0
  Caption = 'AdvDualListBox Demo'
  ClientHeight = 301
  ClientWidth = 469
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
    Left = 296
    Top = 8
    Width = 146
    Height = 13
    Caption = 'Event log: (Right click to clear)'
  end
  object AdvDualListBox1: TAdvDualListBox
    Left = 8
    Top = 54
    Width = 266
    Height = 237
    CaptionPosition = cpTopCenter
    Caption = 'Cities'
    TabOrder = 0
    Buttons.VisibleButtons = [vbRight, vbLeft]
    Buttons.HintLeft = 'Move Left'
    Buttons.HintLeftAll = 'Move Left All'
    Buttons.HintRight = 'Move Right'
    Buttons.HintRightAll = 'Move Right All'
    ListLeft.Font.Charset = DEFAULT_CHARSET
    ListLeft.Font.Color = clWindowText
    ListLeft.Font.Height = -11
    ListLeft.Font.Name = 'Tahoma'
    ListLeft.Font.Style = []
    ListRight.Font.Charset = DEFAULT_CHARSET
    ListRight.Font.Color = clWindowText
    ListRight.Font.Height = -11
    ListRight.Font.Name = 'Tahoma'
    ListRight.Font.Style = []
    MoveOptions = [moMoveWithDblClick, moMoveWithDragDrop, moMoveWithButton, moMoveWithKey, moMoveLeftRight, moMoveRightLeft]
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    OnMoveLeftRight = AdvDualListBox1MoveLeftRight
    OnMoveRightLeft = AdvDualListBox1MoveRightLeft
    OnMoveLeftRightAll = AdvDualListBox1MoveLeftRightAll
    OnMoveRightLeftAll = AdvDualListBox1MoveRightLeftAll
  end
  object CheckBox1: TCheckBox
    Left = 16
    Top = 8
    Width = 97
    Height = 17
    Caption = 'Allow Multiselect'
    TabOrder = 1
    OnClick = CheckBox1Click
  end
  object CheckBox3: TCheckBox
    Left = 16
    Top = 31
    Width = 97
    Height = 17
    Caption = 'Sort Items'
    TabOrder = 2
    OnClick = CheckBox3Click
  end
  object CheckBox2: TCheckBox
    Left = 153
    Top = 8
    Width = 121
    Height = 17
    Caption = 'Allow Move With Keys'
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = CheckBox2Click
  end
  object CheckBox4: TCheckBox
    Left = 153
    Top = 31
    Width = 97
    Height = 17
    Caption = 'Show Move All'
    TabOrder = 4
    OnClick = CheckBox4Click
  end
  object ListBox1: TListBox
    Left = 280
    Top = 27
    Width = 173
    Height = 266
    ItemHeight = 13
    PopupMenu = PopupMenu1
    TabOrder = 5
  end
  object PopupMenu1: TPopupMenu
    Left = 416
    Top = 192
    object Clear1: TMenuItem
      Caption = 'Clear'
      OnClick = Clear1Click
    end
  end
end
