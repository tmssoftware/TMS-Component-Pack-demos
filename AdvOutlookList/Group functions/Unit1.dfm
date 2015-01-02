object Form1: TForm1
  Left = 442
  Top = 192
  Caption = 'OutlookGroup functions'
  ClientHeight = 334
  ClientWidth = 528
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 448
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Add items'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 448
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Change item'
    TabOrder = 1
    OnClick = Button2Click
  end
  object AdvOutlookList1: TAdvOutlookList
    Left = 16
    Top = 8
    Width = 425
    Height = 300
    Columns = <
      item
        Caption = 'Group Column'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'MS Sans Serif'
        HeaderFont.Style = []
      end
      item
        Caption = 'Size'
        Width = 60
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Alignment = taRightJustify
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'MS Sans Serif'
        HeaderFont.Style = []
        HeaderAlignment = taLeftJustify
        SortType = stNumeric
      end
      item
        Caption = 'Date'
        Width = 60
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'MS Sans Serif'
        HeaderFont.Style = []
        HeaderAlignment = taLeftJustify
        SortType = stDate
      end
      item
        Caption = 'Subject'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'MS Sans Serif'
        HeaderFont.Style = []
        HeaderAlignment = taLeftJustify
      end>
    Color = clWhite
    GroupItemHeight = 34
    GroupShowCount = True
    HideSelection = True
    LookUp.Method = lmDirect
    GroupColumnDisplay = gdHidden
    PreviewSettings.Font.Charset = DEFAULT_CHARSET
    PreviewSettings.Font.Color = clBlue
    PreviewSettings.Font.Height = -11
    PreviewSettings.Font.Name = 'MS Sans Serif'
    PreviewSettings.Font.Style = []
    GroupFont.Charset = DEFAULT_CHARSET
    GroupFont.Color = 12150839
    GroupFont.Height = -11
    GroupFont.Name = 'Tahoma'
    GroupFont.Style = [fsBold]
    GroupCountFont.Charset = DEFAULT_CHARSET
    GroupCountFont.Color = clBlack
    GroupCountFont.Height = -11
    GroupCountFont.Name = 'Tahoma'
    GroupCountFont.Style = []
    ShowHint = True
    ShowNodes = True
    SortSettings.SortGroups = False
    TabOrder = 2
    URLSettings.FontStyle = [fsUnderline]
    Version = '1.7.8.0'
    OnItemClick = AdvOutlookList1ItemClick
    OnGroupClick = AdvOutlookList1GroupClick
    OnGroupExpand = AdvOutlookList1GroupClick
    OnGroupCollaps = AdvOutlookList1GroupClick
  end
  object Button3: TButton
    Left = 448
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Insert item'
    TabOrder = 3
    OnClick = Button3Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 315
    Width = 528
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object Button4: TButton
    Left = 448
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Remove item'
    TabOrder = 5
    OnClick = Button4Click
  end
end
