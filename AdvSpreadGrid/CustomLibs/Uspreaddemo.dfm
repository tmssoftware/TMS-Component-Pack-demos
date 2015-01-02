object Form1: TForm1
  Left = 509
  Top = 210
  Width = 516
  Height = 361
  Caption = 'TAdvSpreadGrid demo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object TabSet1: TTabSet
    Left = 0
    Top = 287
    Width = 508
    Height = 21
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Tabs.Strings = (
      'Sheet1'
      'Sheet2')
    TabIndex = 0
    OnChange = TabSet1Change
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 308
    Width = 508
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object Notebook1: TNotebook
    Left = 0
    Top = 41
    Width = 508
    Height = 246
    Align = alClient
    TabOrder = 2
    object TPage
      Left = 0
      Top = 0
      Caption = 'Sheet1'
      object SpreadSheet1: TAdvSpreadGrid
        Left = 0
        Top = 0
        Width = 508
        Height = 246
        Cursor = crDefault
        Align = alClient
        ColCount = 5
        DefaultRowHeight = 21
        FixedCols = 1
        RowCount = 5
        FixedRows = 1
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goEditing]
        ScrollBars = ssBoth
        TabOrder = 0
        ActiveCellShow = True
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clRed
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'MS Sans Serif'
        ActiveCellFont.Style = [fsBold]
        ActiveCellColor = clCream
        Bands.Active = True
        EnhRowColMove = False
        OnCellValidate = SpreadSheet1CellValidate
        Look = glSoft
        SearchFooter.FindNextCaption = 'Find next'
        SearchFooter.FindPrevCaption = 'Find previous'
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurence'
        SearchFooter.HintFindPrev = 'Find previous occurence'
        SearchFooter.HintHighlight = 'Highlight occurences'
        SearchFooter.MatchCaseCaption = 'Match case'
        SelectionColor = clHighlight
        SelectionTextColor = clHighlightText
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'MS Sans Serif'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'MS Sans Serif'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'MS Sans Serif'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'MS Sans Serif'
        PrintSettings.FooterFont.Style = []
        PrintSettings.Borders = pbNoborder
        PrintSettings.Centered = False
        PrintSettings.PageNumSep = '/'
        CellNode.NodeType = cnFlat
        ScrollWidth = 16
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'MS Sans Serif'
        FixedFont.Style = []
        FloatFormat = '%.2f'
        WordWrap = False
        Filter = <>
        Version = '2.1.1.3'
        Binder = GridBinder1
        EditHint = False
        Libs = LibBinder1
        ShowFormula = False
        AutoRecalc = True
        ErrorText = 'Error'
        ErrorDisplay = edFormula
        CellFormat = '%.2f'
        ColWidths = (
          64
          64
          64
          64
          64)
        RowHeights = (
          21
          21
          21
          21
          21)
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Sheet2'
      object SpreadSheet2: TAdvSpreadGrid
        Left = 0
        Top = 0
        Width = 508
        Height = 246
        Cursor = crDefault
        Align = alClient
        ColCount = 5
        DefaultRowHeight = 21
        FixedCols = 1
        RowCount = 5
        FixedRows = 1
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing]
        ScrollBars = ssBoth
        TabOrder = 0
        ActiveCellShow = True
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clRed
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'MS Sans Serif'
        ActiveCellFont.Style = [fsBold]
        ActiveCellColor = clCream
        Bands.Active = True
        EnhRowColMove = False
        OnCellValidate = SpreadSheet1CellValidate
        Look = glSoft
        SearchFooter.FindNextCaption = 'Find next'
        SearchFooter.FindPrevCaption = 'Find previous'
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurence'
        SearchFooter.HintFindPrev = 'Find previous occurence'
        SearchFooter.HintHighlight = 'Highlight occurences'
        SearchFooter.MatchCaseCaption = 'Match case'
        SelectionColor = clHighlight
        SelectionTextColor = clHighlightText
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'MS Sans Serif'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'MS Sans Serif'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'MS Sans Serif'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'MS Sans Serif'
        PrintSettings.FooterFont.Style = []
        PrintSettings.Borders = pbNoborder
        PrintSettings.Centered = False
        PrintSettings.PageNumSep = '/'
        CellNode.NodeType = cnFlat
        ScrollWidth = 16
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'MS Sans Serif'
        FixedFont.Style = []
        FloatFormat = '%.2f'
        WordWrap = False
        Filter = <>
        Version = '2.1.1.3'
        Binder = GridBinder1
        EditHint = False
        Libs = LibBinder1
        ShowFormula = False
        AutoRecalc = True
        ErrorText = 'Error'
        ErrorDisplay = edFormula
        CellFormat = '%.2f'
        ColWidths = (
          64
          64
          64
          64
          64)
        RowHeights = (
          21
          21
          21
          21
          21)
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 508
    Height = 41
    Align = alTop
    TabOrder = 3
    object Button1: TButton
      Left = 8
      Top = 8
      Width = 89
      Height = 25
      Caption = 'HARMEAN LIB'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 102
      Top = 8
      Width = 91
      Height = 25
      Caption = 'INTER GRID'
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object MiscMathLib1: TMiscMathLib
    Left = 336
    Top = 48
  end
  object LibBinder1: TLibBinder
    Libs = <
      item
        MathLib = MiscMathLib1
      end
      item
        MathLib = FinanceMathLib1
      end>
    Left = 336
    Top = 144
  end
  object FinanceMathLib1: TFinanceMathLib
    Left = 336
    Top = 80
  end
  object GridBinder1: TGridBinder
    Grids = <
      item
        Grid = SpreadSheet1
        Name = 'Sheet1'
      end
      item
        Grid = SpreadSheet2
        Name = 'Sheet2'
      end>
    Left = 336
    Top = 112
  end
end
