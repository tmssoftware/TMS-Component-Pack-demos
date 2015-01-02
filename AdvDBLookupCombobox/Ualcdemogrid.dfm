object Form1: TForm1
  Left = 468
  Top = 208
  Caption = 'TAdvDBLookupCombobox demo'
  ClientHeight = 438
  ClientWidth = 738
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 8
    Top = 8
    Width = 103
    Height = 13
    Caption = 'AdvDBLookupCombo'
  end
  object Label1: TLabel
    Left = 8
    Top = 80
    Width = 55
    Height = 13
    Caption = 'Datasource'
  end
  object Label2: TLabel
    Left = 8
    Top = 256
    Width = 48
    Height = 13
    Caption = 'Listsource'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 272
    Width = 721
    Height = 153
    DataSource = DataSource2
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 96
    Width = 721
    Height = 153
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object AdvDBLookupComboBox1: TAdvDBLookupComboBox
    Left = 8
    Top = 24
    Width = 281
    Height = 21
    Enabled = True
    FilterField = 'Company'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    LabelCaption = 'Suva'
    LabelPosition = lpRightCenter
    LabelMargin = 10
    LabelTransparent = True
    LabelAlwaysEnabled = False
    LabelField = 'City'
    LabelFont.Charset = ANSI_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Verdana'
    LabelFont.Style = [fsBold]
    LabelWidth = 80
    LookupColumn = 0
    LookupMethod = lmRequired
    LookupLoad = llAlways
    ParentFont = False
    TabOrder = 2
    Columns = <
      item
        FixedColor = clBtnFace
        FixedColorTo = clNone
        GradientDir = gdVertical
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ListField = 'Company'
        Name = 'Company'
        Title = 'My company'
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = [fsBold]
      end
      item
        Color = 14417149
        FixedColor = clBtnFace
        FixedColorTo = clNone
        GradientDir = gdVertical
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ListField = 'Contact'
        Name = 'Contact'
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = [fsBold]
      end
      item
        Color = 16710110
        FixedColor = clBtnFace
        FixedColorTo = clNone
        GradientDir = gdVertical
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ListField = 'City'
        Name = 'City'
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = [fsBold]
      end>
    DataField = 'CustNo'
    DataSource = DataSource1
    DropWidth = 340
    DropStretchColumn = -1
    DropHeight = 150
    DropFont.Charset = DEFAULT_CHARSET
    DropFont.Color = clWindowText
    DropFont.Height = -11
    DropFont.Name = 'MS Sans Serif'
    DropFont.Style = []
    KeyField = 'CustNo'
    ListSource = DataSource2
    SortColumn = 'Contact'
    SortUpGlyph.Data = {
      72020000424D720200000000000036000000280000000E0000000D0000000100
      1800000000003C020000C30E0000C30E00000000000000000000C6C6C6C6C6C6
      C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6FF6363FF6363FF6363FF6363FF3131C6C6
      C6C6C6C60000C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6FF9C00FF9C00FFFF
      FFFFFFFFFF6363FF6363FF3131C6C6C60000C6C6C6C6C6C6C6C6C6C6C6C6C6C6
      C6FF9C00FFCE63FFFFFFFF6300FF3131FF3131FF3131FF3131FF31310000C6C6
      C6C6C6C6C6C6C6C6C6C6FF9C00FFCE00FFCE00FF9C00FF6300C6C6C6C6C6C6C6
      C6C6630000FF63000000C6C6C6C6C6C6C6C6C6C6C6C6FF9C00FFCE00FF9C00FF
      9C00FF6300C6C6C6C6C6C6C6C6C6C6C6C66300000000C6C6C6C6C6C6C6C6C6FF
      9C00FFFF00FFCE00FF9C00FF6300C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6
      0000C6C6C6C6C6C6C6C6C6FF9C00FFFF00FFFF00FFCE00FF6300C6C6C6C6C6C6
      C6C6C6C6C6C6C6C6C6C6C6C60000000000949494949494949494FFFF00FFFF00
      FFFF00949494949494949494000000C6C6C6C6C6C6C6C6C60000C6C6C6000000
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000C6C6C6C6C6C6C6C6
      C6C6C6C60000C6C6C6C6C6C6000000FFFF00FFFF00FFFF00FFFF00FFFF000000
      00C6C6C6C6C6C6C6C6C6C6C6C6C6C6C60000C6C6C6C6C6C6C6C6C6000000FFFF
      00FFFF00FFFF00000000C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C60000C6C6
      C6C6C6C6C6C6C6C6C6C6000000FFFF00000000C6C6C6C6C6C6C6C6C6C6C6C6C6
      C6C6C6C6C6C6C6C60000C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6000000C6C6C6C6
      C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C60000}
    SortDownGlyph.Data = {
      72020000424D720200000000000036000000280000000E0000000D0000000100
      1800000000003C020000C30E0000C30E00000000000000000000C6C6C6C6C6C6
      C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6000000C6C6C6C6C6C6C6C6C6C6C6
      C6C6C6C60000C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6000000FFFF
      00000000C6C6C6C6C6C6C6C6C6C6C6C60000C6C6C6C6C6C6C6C6C6C6C6C6C6C6
      C6C6C6C6000000FFFF00FFFF00FFFF00000000C6C6C6C6C6C6C6C6C60000C6C6
      C6C6C6C6C6C6C6C6C6C6C6C6C6000000FFFF00FFFF00FFFF00FFFF00FFFF0000
      0000C6C6C6C6C6C60000C6C6C6C6C6C6C6C6C6C6C6C6000000FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00000000C6C6C60000C6C6C6C6C6C6C6C6C600
      0000848484848484848484FFFF00FFFF00FFFF00FFFF00848484848484000000
      0000C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6FF6300FFCE00FFFF00FFFF00
      FF9C00C6C6C6C6C6C6C6C6C60000C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6
      FF6300FFCE00FF9C00FFCE00FF9C00C6C6C6C6C6C6C6C6C60000C6C6C6C6C6C6
      C6C6C6C6C6C6C6C6C6FF6300FF9C00FF9C00FF9C00FF6363FF9C00C6C6C6C6C6
      C6C6C6C60000C6C6C6C6C6C6C6C6C6C6C6C6FF3131CE6300FF6300FF9C00FFCE
      00FF6363FF9C00C6C6C6C6C6C6C6C6C60000FF3131FF3131FF3131FF3131FF31
      31FF3131FF6300FFFFFFFF6363FF6363C6C6C6C6C6C6C6C6C6C6C6C60000C6C6
      C6FF3131FF6363FF6363FF6363FFFFFFFFFFFFFF6363FF6363C6C6C6C6C6C6C6
      C6C6C6C6C6C6C6C60000C6C6C6C6C6C6FF3131FF6363FF6363FF6363FF6363C6
      C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C60000}
    ShowGridTitleRow = True
    Version = '1.5.0.0'
  end
  object DBNavigator1: TDBNavigator
    Left = 440
    Top = 16
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 3
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'DBDEMOS'
    TableName = 'orders.db'
    Left = 520
    Top = 392
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 480
    Top = 392
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 608
    Top = 392
  end
  object Table2: TTable
    Active = True
    DatabaseName = 'DBDEMOS'
    TableName = 'customer.db'
    Left = 648
    Top = 392
  end
end
