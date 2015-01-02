object Form1: TForm1
  Left = 392
  Top = 206
  Caption = 'TDBAdvCardList Demo'
  ClientHeight = 674
  ClientWidth = 786
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 499
    Width = 786
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 501
    ExplicitWidth = 794
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 786
    Height = 41
    Align = alTop
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 84
      Top = 8
      Width = 240
      Height = 25
      DataSource = DataSource2
      TabOrder = 0
    end
    object Button1: TButton
      Left = 4
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Open/Close'
      TabOrder = 1
      OnClick = Button1Click
    end
    object AdvButtonsBar1: TAdvButtonsBar
      Left = 336
      Top = 5
      Width = 369
      Height = 30
      TabOrder = 2
      Alphabet = 'abcdefghijklmnopqrstuvwxyz'
      BarAlignment = baHorizontal
      CardList = DBAdvCardList2
    end
  end
  object DBAdvCardList2: TDBAdvCardList
    Left = 0
    Top = 41
    Width = 786
    Height = 458
    DataSource = DataSource2
    CardTemplate.DefaultItem.Caption = 'AdvCardTemplateItem0'
    CardTemplate.DefaultItem.CaptionFont.Charset = DEFAULT_CHARSET
    CardTemplate.DefaultItem.CaptionFont.Color = clWindowText
    CardTemplate.DefaultItem.CaptionFont.Height = -11
    CardTemplate.DefaultItem.CaptionFont.Name = 'MS Sans Serif'
    CardTemplate.DefaultItem.CaptionFont.Style = []
    CardTemplate.DefaultItem.EditColor = clNone
    CardTemplate.DefaultItem.ItemEditor = ieText
    CardTemplate.DefaultItem.Name = 'AdvCardTemplateItem0'
    CardTemplate.DefaultItem.Tag = 0
    CardTemplate.DefaultItem.ValueFont.Charset = DEFAULT_CHARSET
    CardTemplate.DefaultItem.ValueFont.Color = clWindowText
    CardTemplate.DefaultItem.ValueFont.Height = -11
    CardTemplate.DefaultItem.ValueFont.Name = 'MS Sans Serif'
    CardTemplate.DefaultItem.ValueFont.Style = []
    CardTemplate.HorMargins = 4
    CardTemplate.Indent = 4
    CardTemplate.ItemLabelWidth = 70
    CardTemplate.Items = <
      item
        Caption = 'Species No'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        DataType = idtInteger
        EditColor = clNone
        ItemEditor = ieNumber
        Name = 'DBAdvCardTemplateItem4'
        Tag = 0
        ValueFont.Charset = DEFAULT_CHARSET
        ValueFont.Color = clWindowText
        ValueFont.Height = -11
        ValueFont.Name = 'MS Sans Serif'
        ValueFont.Style = []
        FieldName = 'Species No'
      end
      item
        Caption = 'Species Name'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        EditColor = clNone
        ItemEditor = ieText
        Name = 'DBAdvCardTemplateItem5'
        Tag = 0
        ValueFont.Charset = DEFAULT_CHARSET
        ValueFont.Color = clWindowText
        ValueFont.Height = -11
        ValueFont.Name = 'MS Sans Serif'
        ValueFont.Style = []
        FieldName = 'Species Name'
      end
      item
        Caption = 'Length (cm)'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        DataType = idtInteger
        EditColor = clNone
        ItemEditor = ieNumber
        Name = 'DBAdvCardTemplateItem6'
        Tag = 0
        ValueFont.Charset = DEFAULT_CHARSET
        ValueFont.Color = clWindowText
        ValueFont.Height = -11
        ValueFont.Name = 'MS Sans Serif'
        ValueFont.Style = []
        FieldName = 'Length (cm)'
      end
      item
        Caption = 'Notes'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        EditColor = clNone
        MaxHeight = 40
        ItemEditor = ieText
        Name = 'DBAdvCardTemplateItem8'
        Tag = 0
        ValueFont.Charset = DEFAULT_CHARSET
        ValueFont.Color = clWindowText
        ValueFont.Height = -11
        ValueFont.Name = 'MS Sans Serif'
        ValueFont.Style = []
        WordWrap = True
        FieldName = 'Notes'
      end
      item
        Caption = 'DBAdvCardTemplateItem7'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        DataType = idtImage
        EditColor = clNone
        MaxHeight = 80
        Height = 30
        ImageSize = isStretchedProp
        ItemEditor = iePictureDialog
        ItemType = itItem
        Name = 'DBAdvCardTemplateItem7'
        ReadOnly = True
        Tag = 0
        ValueFont.Charset = DEFAULT_CHARSET
        ValueFont.Color = clWindowText
        ValueFont.Height = -11
        ValueFont.Name = 'MS Sans Serif'
        ValueFont.Style = []
        FieldName = 'Graphic'
      end>
    CardTemplate.ItemSpacing = 2
    CardTemplate.VertMargins = 2
    CardTemplate.CaptionFieldName = 'Category'
    Align = alClient
    TabOrder = 1
    DockOrientation = doNoOrient
    BorderColor = 12164479
    CardEditingAppearance.BevelOuter = bvNone
    CardEditingAppearance.BorderColor = clBlack
    CardEditingAppearance.CaptionColor.Color = clSilver
    CardEditingAppearance.CaptionColor.ColorTo = clRed
    CardEditingAppearance.CaptionColor.Direction = gdVertical
    CardEditingAppearance.CaptionBorderColor = clWhite
    CardEditingAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    CardEditingAppearance.CaptionFont.Color = clWhite
    CardEditingAppearance.CaptionFont.Height = -11
    CardEditingAppearance.CaptionFont.Name = 'MS Sans Serif'
    CardEditingAppearance.CaptionFont.Style = [fsBold]
    CardEditingAppearance.Color.Color = 13891839
    CardEditingAppearance.Color.ColorTo = clWhite
    CardEditingAppearance.Color.Direction = gdVertical
    CardEditingAppearance.ItemLabelFont.Charset = DEFAULT_CHARSET
    CardEditingAppearance.ItemLabelFont.Color = clBlack
    CardEditingAppearance.ItemLabelFont.Height = -11
    CardEditingAppearance.ItemLabelFont.Name = 'MS Sans Serif'
    CardEditingAppearance.ItemLabelFont.Style = []
    CardEditingAppearance.ItemEditFont.Charset = DEFAULT_CHARSET
    CardEditingAppearance.ItemEditFont.Color = clBlack
    CardEditingAppearance.ItemEditFont.Height = -11
    CardEditingAppearance.ItemEditFont.Name = 'MS Sans Serif'
    CardEditingAppearance.ItemEditFont.Style = []
    CardEditingAppearance.ReplaceLabelFont = True
    CardEditingAppearance.ReplaceEditFont = True
    CardNormalAppearance.BevelOuter = bvNone
    CardNormalAppearance.BorderColor = clHighlight
    CardNormalAppearance.CaptionColor.Color = 16640730
    CardNormalAppearance.CaptionColor.ColorTo = 14986888
    CardNormalAppearance.CaptionColor.Direction = gdVertical
    CardNormalAppearance.CaptionBorderColor = clWhite
    CardNormalAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    CardNormalAppearance.CaptionFont.Color = clHighlight
    CardNormalAppearance.CaptionFont.Height = -11
    CardNormalAppearance.CaptionFont.Name = 'MS Sans Serif'
    CardNormalAppearance.CaptionFont.Style = [fsBold]
    CardNormalAppearance.Color.Color = 16640730
    CardNormalAppearance.Color.ColorTo = clWhite
    CardNormalAppearance.Color.Direction = gdVertical
    CardNormalAppearance.ItemLabelFont.Charset = DEFAULT_CHARSET
    CardNormalAppearance.ItemLabelFont.Color = clBlack
    CardNormalAppearance.ItemLabelFont.Height = -11
    CardNormalAppearance.ItemLabelFont.Name = 'MS Sans Serif'
    CardNormalAppearance.ItemLabelFont.Style = []
    CardNormalAppearance.ItemEditFont.Charset = DEFAULT_CHARSET
    CardNormalAppearance.ItemEditFont.Color = clBlack
    CardNormalAppearance.ItemEditFont.Height = -11
    CardNormalAppearance.ItemEditFont.Name = 'MS Sans Serif'
    CardNormalAppearance.ItemEditFont.Style = []
    CardNormalAppearance.ReplaceLabelFont = True
    CardNormalAppearance.ReplaceEditFont = True
    CardSelectedAppearance.BevelOuter = bvNone
    CardSelectedAppearance.BorderColor = clHighlight
    CardSelectedAppearance.CaptionColor.Color = 8182519
    CardSelectedAppearance.CaptionColor.ColorTo = 557032
    CardSelectedAppearance.CaptionColor.Direction = gdVertical
    CardSelectedAppearance.CaptionBorderColor = clWhite
    CardSelectedAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    CardSelectedAppearance.CaptionFont.Color = clWhite
    CardSelectedAppearance.CaptionFont.Height = -11
    CardSelectedAppearance.CaptionFont.Name = 'MS Sans Serif'
    CardSelectedAppearance.CaptionFont.Style = [fsBold]
    CardSelectedAppearance.Color.Color = 13891839
    CardSelectedAppearance.Color.ColorTo = clWhite
    CardSelectedAppearance.Color.Direction = gdVertical
    CardSelectedAppearance.ItemLabelFont.Charset = DEFAULT_CHARSET
    CardSelectedAppearance.ItemLabelFont.Color = clBlack
    CardSelectedAppearance.ItemLabelFont.Height = -11
    CardSelectedAppearance.ItemLabelFont.Name = 'MS Sans Serif'
    CardSelectedAppearance.ItemLabelFont.Style = []
    CardSelectedAppearance.ItemEditFont.Charset = DEFAULT_CHARSET
    CardSelectedAppearance.ItemEditFont.Color = clBlack
    CardSelectedAppearance.ItemEditFont.Height = -11
    CardSelectedAppearance.ItemEditFont.Name = 'MS Sans Serif'
    CardSelectedAppearance.ItemEditFont.Style = []
    CardSelectedAppearance.ReplaceLabelFont = True
    CardSelectedAppearance.ReplaceEditFont = True
    CardHoverAppearance.BevelOuter = bvNone
    CardHoverAppearance.BorderColor = clBlack
    CardHoverAppearance.CaptionColor.Color = 16640730
    CardHoverAppearance.CaptionColor.ColorTo = 13664560
    CardHoverAppearance.CaptionColor.Direction = gdVertical
    CardHoverAppearance.CaptionBorderColor = clWhite
    CardHoverAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    CardHoverAppearance.CaptionFont.Color = clBlack
    CardHoverAppearance.CaptionFont.Height = -11
    CardHoverAppearance.CaptionFont.Name = 'MS Sans Serif'
    CardHoverAppearance.CaptionFont.Style = [fsBold]
    CardHoverAppearance.Color.Color = 16640730
    CardHoverAppearance.Color.ColorTo = clWhite
    CardHoverAppearance.Color.Direction = gdVertical
    CardHoverAppearance.ItemLabelFont.Charset = DEFAULT_CHARSET
    CardHoverAppearance.ItemLabelFont.Color = clBlack
    CardHoverAppearance.ItemLabelFont.Height = -11
    CardHoverAppearance.ItemLabelFont.Name = 'MS Sans Serif'
    CardHoverAppearance.ItemLabelFont.Style = []
    CardHoverAppearance.ItemEditFont.Charset = DEFAULT_CHARSET
    CardHoverAppearance.ItemEditFont.Color = clBlack
    CardHoverAppearance.ItemEditFont.Height = -11
    CardHoverAppearance.ItemEditFont.Name = 'MS Sans Serif'
    CardHoverAppearance.ItemEditFont.Style = []
    CardHoverAppearance.ReplaceLabelFont = True
    CardHoverAppearance.ReplaceEditFont = True
    CardHorSpacing = 10
    CardVertSpacing = 10
    Color.Color = cl3DLight
    Color.ColorTo = clMenuBar
    Color.Direction = gdVertical
    ColumnWidth = 220
    DelayedCardLoad = False
    DelayedCardLoadInterval = 100
    GridLineColor = 12043984
    GridLineWidth = 2
    Version = '2.0.0.0'
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 502
    Width = 786
    Height = 172
    Align = alBottom
    DataSource = DataSource2
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Table2: TTable
    DatabaseName = 'DBDEMOS'
    TableName = 'biolife.DB'
    Left = 408
    Top = 272
    object Table2SpeciesNo: TFloatField
      DisplayLabel = 'Species Nr.'
      FieldName = 'Species No'
    end
    object Table2Category: TStringField
      FieldName = 'Category'
      Size = 15
    end
    object Table2Common_Name: TStringField
      FieldName = 'Common_Name'
      Size = 30
    end
    object Table2SpeciesName: TStringField
      FieldName = 'Species Name'
      Size = 40
    end
    object Table2Lengthcm: TFloatField
      FieldName = 'Length (cm)'
    end
    object Table2Length_In: TFloatField
      FieldName = 'Length_In'
    end
    object Table2Notes: TMemoField
      FieldName = 'Notes'
      BlobType = ftMemo
      Size = 50
    end
    object Table2Graphic: TGraphicField
      FieldName = 'Graphic'
      BlobType = ftGraphic
    end
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 408
    Top = 208
  end
  object AdvCardListStyler2: TAdvCardListStyler
    CardList = DBAdvCardList2
    Left = 404
    Top = 241
  end
end
