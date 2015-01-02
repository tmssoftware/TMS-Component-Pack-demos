object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'DBInspectorBar demo'
  ClientHeight = 315
  ClientWidth = 736
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 186
    Top = 39
    Width = 533
    Height = 161
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 192
    Top = 8
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object Button1: TButton
    Left = 186
    Top = 206
    Width = 267
    Height = 25
    Caption = 'Programmatically add DB fields to inspector'
    TabOrder = 2
    OnClick = Button1Click
  end
  object DBInspectorBar1: TDBInspectorBar
    Left = 0
    Top = 0
    Width = 180
    Height = 315
    AcceptFiles = False
    AutoAdvance = False
    Align = alLeft
    CheckTrue = 'True'
    CheckFalse = 'False'
    Ellipsis = False
    Flat = False
    HelpPanel.BevelInner = bvLowered
    HelpPanel.BevelOuter = bvNone
    HelpPanel.BevelWidth = 0
    HelpPanel.Font.Charset = DEFAULT_CHARSET
    HelpPanel.Font.Color = clWindowText
    HelpPanel.Font.Height = -11
    HelpPanel.Font.Name = 'Tahoma'
    HelpPanel.Font.Style = []
    HelpPanel.Height = 0
    HelpPanel.Visible = False
    PanelCaption.ActiveFont.Charset = DEFAULT_CHARSET
    PanelCaption.ActiveFont.Color = clWindowText
    PanelCaption.ActiveFont.Height = -11
    PanelCaption.ActiveFont.Name = 'Tahoma'
    PanelCaption.ActiveFont.Style = []
    PanelCaption.Button = False
    PanelCaption.Color = clBtnFace
    PanelCaption.Font.Charset = DEFAULT_CHARSET
    PanelCaption.Font.Color = clWindowText
    PanelCaption.Font.Height = -11
    PanelCaption.Font.Name = 'Tahoma'
    PanelCaption.Font.Style = []
    PanelCaption.SideDisplay = False
    PanelCaption.SideWidth = 20
    PanelCaption.OpenClosePosition = ocpLeft
    PanelCaption.OpenCloseGraphic = ocgNone
    PanelCaption.ShadeGrain = 32
    PanelCaption.ShadeType = stNormal
    PanelCaption.VAlignment = vaTop
    Panels = <>
    ShowEditorAlways = False
    TabStop = True
    TabOrder = 3
    TopPanel = 0
    Version = '1.5.4.1'
    DefaultGradientDirection = gdVertical
    Navigator.ButtonSize = 12
    Navigator.ButtonStyle = bsDefault
    Navigator.Hints.Strings = (
      'First record'
      'Prior record'
      'Next record'
      'Last record'
      'Insert record'
      'Delete record'
      'Edit record'
      'Post edit'
      'Cancel edit'
      'Refresh data')
    ShowMemoFields = False
    ShowPictureFields = False
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 572
    Top = 212
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\CARS.mdb;Persist ' +
      'Security Info=False'
    CursorType = ctStatic
    TableName = 'CARS'
    Left = 612
    Top = 208
  end
end
