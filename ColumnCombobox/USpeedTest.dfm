object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'ColumnComboBox'
  ClientHeight = 207
  ClientWidth = 471
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ColumnComboBox1: TColumnComboBox
    Left = 20
    Top = 16
    Width = 253
    Height = 22
    Color = clWindow
    Version = '1.3.1.1'
    Visible = True
    Columns = <>
    ComboItems = <>
    EditColumn = -1
    EditHeight = 16
    DropWidth = 0
    DropHeight = 200
    Enabled = True
    GridLines = False
    ItemIndex = -1
    LookupColumn = 0
    SortColumn = 0
    TabOrder = 0
  end
  object Button1: TButton
    Left = 292
    Top = 14
    Width = 149
    Height = 25
    Caption = 'Add 5000 items'
    TabOrder = 1
    OnClick = Button1Click
  end
end
