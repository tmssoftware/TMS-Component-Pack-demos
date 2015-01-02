object MDIChildBook: TMDIChildBook
  Left = 197
  Top = 117
  Caption = 'MDI Child'
  ClientHeight = 459
  ClientWidth = 751
  Color = clBtnFace
  ParentFont = True
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 0
    Top = 0
    Width = 751
    Height = 459
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 9329715
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    GradientEndColor = 15654351
    GradientStartColor = 15654351
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ParentFont = False
    TabOrder = 0
  end
end
