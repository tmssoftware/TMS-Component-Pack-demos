object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'TAdvInputTaskDialog demo'
  ClientHeight = 225
  ClientWidth = 406
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
    Left = 264
    Top = 22
    Width = 91
    Height = 13
    Caption = 'Preset input value:'
  end
  object Label2: TLabel
    Left = 264
    Top = 103
    Width = 34
    Height = 13
    Caption = 'Result:'
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 16
    Width = 233
    Height = 161
    Caption = 'Select input control'
    ItemIndex = 0
    Items.Strings = (
      'Edit'
      'Combo editor'
      'Combo list'
      'Memo'
      'Date picker'
      'Custom control (spin editor)')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 264
    Top = 72
    Width = 121
    Height = 25
    Caption = 'Show inputdialog'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 264
    Top = 45
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'preset'
  end
  object Edit2: TEdit
    Left = 264
    Top = 122
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object SpinEdit1: TSpinEdit
    Left = 16
    Top = 195
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 4
    Value = 0
    Visible = False
  end
  object AdvInputTaskDialog1: TAdvInputTaskDialog
    CommonButtons = []
    DefaultButton = 0
    Icon = tiInformation
    InputType = itEdit
    InputItems.Strings = (
      'BMW'
      'Audi'
      'Mercedes'
      'Porsche'
      'VW'
      'Ferrari')
    Title = 'Windows Vista Input dialog'
    Content = 'Enter value here'
    OnDialogInputSetText = AdvInputTaskDialog1DialogInputSetText
    OnDialogInputGetText = AdvInputTaskDialog1DialogInputGetText
    Left = 352
    Top = 152
  end
end
