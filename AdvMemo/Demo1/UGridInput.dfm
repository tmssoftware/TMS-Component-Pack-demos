object FGridInput: TFGridInput
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Auto correct text list'
  ClientHeight = 379
  ClientWidth = 329
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object InputGrid1: TStringGrid
    Left = 0
    Top = 0
    Width = 329
    Height = 379
    Align = alClient
    ColCount = 2
    DefaultColWidth = 150
    FixedCols = 0
    RowCount = 15
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goEditing, goAlwaysShowEditor]
    ScrollBars = ssVertical
    TabOrder = 0
    OnKeyPress = InputGrid1KeyPress
  end
end
