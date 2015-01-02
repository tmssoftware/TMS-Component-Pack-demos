object Form1: TForm1
  Left = 249
  Top = 197
  Caption = 'TMS software TDBAdvNavigator demo application'
  ClientHeight = 627
  ClientWidth = 885
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 48
    Width = 881
    Height = 577
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBAdvNavigator1: TDBAdvNavigator
    Left = 72
    Top = 8
    Width = 299
    Height = 33
    AutoThemeAdapt = True
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbSearch, nbSetBookmark, nbGotoBookMark]
    Color = 16640730
    ColorTo = 14986888
    ColorDown = 5149182
    ColorDownTo = 9360383
    ColorHot = 13432063
    ColorHotTo = 9556223
    DeleteDisabled = False
    InsertDisabled = False
    GlyphSize = gsSmall
    GlyphCustomSize = 0
    Orientation = noHorizontal
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Version = '1.3.1.2'
  end
  object Table1: TTable
    DatabaseName = 'DBDEMOS'
    TableName = 'biolife.db'
    Left = 40
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 8
    Top = 16
  end
  object XPManifest1: TXPManifest
    Left = 856
    Top = 16
  end
end
