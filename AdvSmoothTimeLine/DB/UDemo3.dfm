object Form447: TForm447
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'TMS DB AdvSmoothTimeLine Event List'
  ClientHeight = 581
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001001010100000000000280100001600000028000000100000002000
    00000100040000000000C0000000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    00000000000000000000000000000000000000000000CCCCCCCCCCCCCCCC0000
    000000000000000000000000000000C000C000C0CCC000C000C000C0000C00C0
    00C0C0C0CCC000C000CC0CC0C000CCCCC0C000C00CCC00000000000000000000
    000000000000CCCCCCCCCCCCCCCC00000000000000000000000000000000FFFF
    0000FFFF0000FFFF000000000000FFFF0000FFFF0000DDD10000DDDE0000DD51
    0000DC97000005D80000FFFF0000FFFF000000000000FFFF0000FFFF0000}
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBAdvSmoothTimeLine1: TDBAdvSmoothTimeLine
    Left = 8
    Top = 270
    Width = 777
    Height = 299
    DefaultHintFill.Color = clWhite
    DefaultHintFill.ColorTo = clWhite
    DefaultHintFill.ColorMirror = clNone
    DefaultHintFill.ColorMirrorTo = clNone
    DefaultHintFill.GradientType = gtVertical
    DefaultHintFill.GradientMirrorType = gtSolid
    DefaultHintFill.Opacity = 225
    DefaultHintFill.OpacityTo = 175
    DefaultHintFill.BorderColor = clBlack
    DefaultHintFill.Rounding = 0
    DefaultHintFill.ShadowOffset = 0
    DefaultHintFill.Glow = gmNone
    DefaultSectionFill.Color = 11899525
    DefaultSectionFill.ColorTo = 11899525
    DefaultSectionFill.ColorMirror = clNone
    DefaultSectionFill.ColorMirrorTo = clNone
    DefaultSectionFill.GradientType = gtVertical
    DefaultSectionFill.GradientMirrorType = gtVertical
    DefaultSectionFill.BorderColor = clGray
    DefaultSectionFill.Rounding = 0
    DefaultSectionFill.ShadowOffset = 0
    DefaultSectionFill.Glow = gmNone
    DefaultIndicator.AnnotationColor = 11899525
    DefaultIndicator.Position = 40191.707743055550000000
    DefaultIndicator.Color = 11899525
    DefaultIndicator.ColorTo = 11899525
    DefaultIndicator.Opacity = 200
    DefaultIndicator.OpacityTo = 150
    DefaultIndicator.Tag = 0
    Range.MinimumRange = 39826.000000000000000000
    Range.MaximumRange = 40921.000000000000000000
    Range.RangeTo = 40921.000000000000000000
    Range.RangeFrom = 39826.000000000000000000
    RangeAppearance.DivisionFont.Charset = DEFAULT_CHARSET
    RangeAppearance.DivisionFont.Color = clBlack
    RangeAppearance.DivisionFont.Height = -11
    RangeAppearance.DivisionFont.Name = 'Tahoma'
    RangeAppearance.DivisionFont.Style = []
    RangeAppearance.SubDivisionFont.Charset = DEFAULT_CHARSET
    RangeAppearance.SubDivisionFont.Color = clBlack
    RangeAppearance.SubDivisionFont.Height = -11
    RangeAppearance.SubDivisionFont.Name = 'Tahoma'
    RangeAppearance.SubDivisionFont.Style = []
    RangeAppearance.DivisionFormat = 'dd/mm/yyyy'
    RangeAppearance.SubDivisionFormat = 'dd/mm/yyyy'
    Fill.Color = 15921906
    Fill.ColorTo = 15921906
    Fill.ColorMirror = clNone
    Fill.ColorMirrorTo = clNone
    Fill.GradientType = gtVertical
    Fill.GradientMirrorType = gtSolid
    Fill.BorderColor = clSilver
    Fill.Rounding = 0
    Fill.ShadowOffset = 0
    Fill.Glow = gmNone
    VerticalMargin = 150
    TimeLineBar.Fill.Color = clGray
    TimeLineBar.Fill.ColorMirror = clNone
    TimeLineBar.Fill.ColorMirrorTo = clNone
    TimeLineBar.Fill.GradientType = gtVertical
    TimeLineBar.Fill.GradientMirrorType = gtSolid
    TimeLineBar.Fill.BorderColor = clGray
    TimeLineBar.Fill.Rounding = 0
    TimeLineBar.Fill.ShadowOffset = 0
    TimeLineBar.Fill.Glow = gmNone
    TimeLineBar.Height = 25
    TimeLineBar.AnnotationFont.Charset = DEFAULT_CHARSET
    TimeLineBar.AnnotationFont.Color = clWindowText
    TimeLineBar.AnnotationFont.Height = -11
    TimeLineBar.AnnotationFont.Name = 'Tahoma'
    TimeLineBar.AnnotationFont.Style = []
    TimeLineBar.SectionCaptionFont.Charset = DEFAULT_CHARSET
    TimeLineBar.SectionCaptionFont.Color = clWindowText
    TimeLineBar.SectionCaptionFont.Height = -11
    TimeLineBar.SectionCaptionFont.Name = 'Tahoma'
    TimeLineBar.SectionCaptionFont.Style = []
    TimeLineSections = <>
    TimeLineIndicators = <>
    DataBinding.Key = 'ID'
    DataBinding.IndicatorTime = 'Time'
    DataBinding.IndicatorColor = 'IndColor'
    DataBinding.IndicatorColorTo = 'IndColorTo'
    DataBinding.IndicatorAnnotationColor = 'AnnotationColor'
    DataBinding.IndicatorAnnotationPosition = 'AnnotationPosition'
    DataBinding.IndicatorAnnotation = 'Annotation'
    DataBinding.IndicatorAnnotationTextColor = 'AnnotationTextColor'
    DataBinding.IndicatorFixed = 'Fixed'
    DataBinding.IndicatorShape = 'Shape'
    DataBinding.IndicatorPicture = 'Picture'
    DataBinding.SectionCaption = 'Caption'
    DataBinding.SectionStartTime = 'Starttime'
    DataBinding.SectionEndTime = 'EndTime'
    DataBinding.SectionFixedPosition = 'FixedPos'
    DataBinding.SectionFixedSize = 'FixedSize'
    DataBinding.SectionHint = 'Hint'
    DataBinding.SectionColor = 'SectionColor'
    DataBinding.SectionColorTo = 'SectionColorTo'
    DataBinding.SectionColorMirror = 'SectionColorMirror'
    DataBinding.SectionColorMirrorTo = 'SectionColorMirrorTo'
    DataSource = DataSource1
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 239
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 777
    Height = 225
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ADOTable1: TADOTable
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=DatabaseTimeLine.md' +
      'b;Persist Security Info=False'
    CursorType = ctStatic
    TableName = 'tblTimeLine'
    Left = 560
    Top = 240
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 528
    Top = 240
  end
end
