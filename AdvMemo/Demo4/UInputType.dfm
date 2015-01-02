object FInputType: TFInputType
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'TMS AdvMemoDemo04 - Type Select'
  ClientHeight = 129
  ClientWidth = 154
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object SGSelectType1: TStringGrid
    Left = 0
    Top = 0
    Width = 154
    Height = 129
    Align = alClient
    ColCount = 1
    DefaultColWidth = 150
    DefaultRowHeight = 30
    FixedCols = 0
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goTabs]
    ScrollBars = ssNone
    TabOrder = 0
    OnClick = SGSelectType1Click
    ExplicitWidth = 153
    ExplicitHeight = 120
  end
end
