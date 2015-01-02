object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'TAdvStringGrid demo 75'
  ClientHeight = 366
  ClientWidth = 859
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object AdvStringGrid1: TAdvStringGrid
    Left = 8
    Top = 24
    Width = 400
    Height = 300
    Cursor = crDefault
    DrawingStyle = gdsClassic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing]
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ControlLook.FixedGradientHoverFrom = clGray
    ControlLook.FixedGradientHoverTo = clWhite
    ControlLook.FixedGradientDownFrom = clGray
    ControlLook.FixedGradientDownTo = clSilver
    ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
    ControlLook.DropDownHeader.Font.Color = clWindowText
    ControlLook.DropDownHeader.Font.Height = -11
    ControlLook.DropDownHeader.Font.Name = 'Tahoma'
    ControlLook.DropDownHeader.Font.Style = []
    ControlLook.DropDownHeader.Visible = True
    ControlLook.DropDownHeader.Buttons = <>
    ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
    ControlLook.DropDownFooter.Font.Color = clWindowText
    ControlLook.DropDownFooter.Font.Height = -11
    ControlLook.DropDownFooter.Font.Name = 'Tahoma'
    ControlLook.DropDownFooter.Font.Style = []
    ControlLook.DropDownFooter.Visible = True
    ControlLook.DropDownFooter.Buttons = <>
    Filter = <>
    FilterDropDown.Font.Charset = DEFAULT_CHARSET
    FilterDropDown.Font.Color = clWindowText
    FilterDropDown.Font.Height = -11
    FilterDropDown.Font.Name = 'Tahoma'
    FilterDropDown.Font.Style = []
    FilterDropDownClear = '(All)'
    FixedRowHeight = 22
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = [fsBold]
    FloatFormat = '%.2f'
    GridImages = ImageList1
    PrintSettings.DateFormat = 'dd/mm/yyyy'
    PrintSettings.Font.Charset = DEFAULT_CHARSET
    PrintSettings.Font.Color = clWindowText
    PrintSettings.Font.Height = -11
    PrintSettings.Font.Name = 'Tahoma'
    PrintSettings.Font.Style = []
    PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
    PrintSettings.FixedFont.Color = clWindowText
    PrintSettings.FixedFont.Height = -11
    PrintSettings.FixedFont.Name = 'Tahoma'
    PrintSettings.FixedFont.Style = []
    PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
    PrintSettings.HeaderFont.Color = clWindowText
    PrintSettings.HeaderFont.Height = -11
    PrintSettings.HeaderFont.Name = 'Tahoma'
    PrintSettings.HeaderFont.Style = []
    PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
    PrintSettings.FooterFont.Color = clWindowText
    PrintSettings.FooterFont.Height = -11
    PrintSettings.FooterFont.Name = 'Tahoma'
    PrintSettings.FooterFont.Style = []
    PrintSettings.PageNumSep = '/'
    SearchFooter.FindNextCaption = 'Find &next'
    SearchFooter.FindPrevCaption = 'Find &previous'
    SearchFooter.Font.Charset = DEFAULT_CHARSET
    SearchFooter.Font.Color = clWindowText
    SearchFooter.Font.Height = -11
    SearchFooter.Font.Name = 'Tahoma'
    SearchFooter.Font.Style = []
    SearchFooter.HighLightCaption = 'Highlight'
    SearchFooter.HintClose = 'Close'
    SearchFooter.HintFindNext = 'Find next occurence'
    SearchFooter.HintFindPrev = 'Find previous occurence'
    SearchFooter.HintHighlight = 'Highlight occurences'
    SearchFooter.MatchCaseCaption = 'Match case'
    Version = '6.0.0.0'
  end
  object AdvGDIPChartView1: TAdvGDIPChartView
    Left = 432
    Top = 24
    Width = 400
    Height = 313
    ShowDesignHelper = True
    Panes = <
      item
        Bands.Distance = 2.000000000000000000
        Background.Font.Charset = DEFAULT_CHARSET
        Background.Font.Color = clWindowText
        Background.Font.Height = -11
        Background.Font.Name = 'Tahoma'
        Background.Font.Style = []
        Background.Picture.Data = {}
        CrossHair.CrossHairType = chtNone
        CrossHair.CrossHairYValues.Position = [chYAxis]
        CrossHair.Distance = 0
        Height = 100.000000000000000000
        Legend.Font.Charset = DEFAULT_CHARSET
        Legend.Font.Color = clWindowText
        Legend.Font.Height = -11
        Legend.Font.Name = 'Tahoma'
        Legend.Font.Style = []
        Margin.LeftMargin = 10
        Margin.RightMargin = 10
        Margin.TopMargin = 10
        Name = 'ChartPane 0'
        Options = []
        Range.RangeTo = 9
        Series = <
          item
            AutoRange = arCommonZeroBased
            Pie.ValueFont.Charset = DEFAULT_CHARSET
            Pie.ValueFont.Color = clWindowText
            Pie.ValueFont.Height = -11
            Pie.ValueFont.Name = 'Tahoma'
            Pie.ValueFont.Style = []
            Pie.LegendFont.Charset = DEFAULT_CHARSET
            Pie.LegendFont.Color = clWindowText
            Pie.LegendFont.Height = -11
            Pie.LegendFont.Name = 'Tahoma'
            Pie.LegendFont.Style = []
            Annotations = <>
            ChartType = ctBar
            CrossHairYValue.BorderWidth = 0
            CrossHairYValue.Font.Charset = DEFAULT_CHARSET
            CrossHairYValue.Font.Color = clWindowText
            CrossHairYValue.Font.Height = -11
            CrossHairYValue.Font.Name = 'Tahoma'
            CrossHairYValue.Font.Style = []
            CrossHairYValue.GradientSteps = 0
            LegendText = 'Serie 0'
            Marker.MarkerPicture.Data = {}
            Marker.MarkerColorTo = clBlack
            Maximum = 12.000000000000000000
            Name = 'Serie 0'
            ChartPattern.Data = {}
            ValueFont.Charset = DEFAULT_CHARSET
            ValueFont.Color = clWindowText
            ValueFont.Height = -11
            ValueFont.Name = 'Tahoma'
            ValueFont.Style = []
            ValueFormat = '%g'
            ValueWidth = 80
            XAxis.DateTimeFont.Charset = DEFAULT_CHARSET
            XAxis.DateTimeFont.Color = clWindowText
            XAxis.DateTimeFont.Height = -11
            XAxis.DateTimeFont.Name = 'Tahoma'
            XAxis.DateTimeFont.Style = []
            XAxis.MajorFont.Charset = DEFAULT_CHARSET
            XAxis.MajorFont.Color = clWindowText
            XAxis.MajorFont.Height = -11
            XAxis.MajorFont.Name = 'Tahoma'
            XAxis.MajorFont.Style = []
            XAxis.MajorUnit = 1.000000000000000000
            XAxis.MajorUnitSpacing = 0
            XAxis.MinorFont.Charset = DEFAULT_CHARSET
            XAxis.MinorFont.Color = clWindowText
            XAxis.MinorFont.Height = -11
            XAxis.MinorFont.Name = 'Tahoma'
            XAxis.MinorFont.Style = []
            XAxis.MinorUnit = 1.000000000000000000
            XAxis.MinorUnitSpacing = 0
            XAxis.TextTop.Font.Charset = DEFAULT_CHARSET
            XAxis.TextTop.Font.Color = clWindowText
            XAxis.TextTop.Font.Height = -11
            XAxis.TextTop.Font.Name = 'Tahoma'
            XAxis.TextTop.Font.Style = []
            XAxis.TextBottom.Font.Charset = DEFAULT_CHARSET
            XAxis.TextBottom.Font.Color = clWindowText
            XAxis.TextBottom.Font.Height = -11
            XAxis.TextBottom.Font.Name = 'Tahoma'
            XAxis.TextBottom.Font.Style = []
            XAxis.TickMarkSize = 6
            YAxis.MajorFont.Charset = DEFAULT_CHARSET
            YAxis.MajorFont.Color = clWindowText
            YAxis.MajorFont.Height = -11
            YAxis.MajorFont.Name = 'Tahoma'
            YAxis.MajorFont.Style = []
            YAxis.MajorUnit = 1.000000000000000000
            YAxis.MajorUnitSpacing = 0
            YAxis.MinorFont.Charset = DEFAULT_CHARSET
            YAxis.MinorFont.Color = clWindowText
            YAxis.MinorFont.Height = -11
            YAxis.MinorFont.Name = 'Tahoma'
            YAxis.MinorFont.Style = []
            YAxis.MinorUnitSpacing = 10
            YAxis.TextLeft.Font.Charset = DEFAULT_CHARSET
            YAxis.TextLeft.Font.Color = clWindowText
            YAxis.TextLeft.Font.Height = -11
            YAxis.TextLeft.Font.Name = 'Tahoma'
            YAxis.TextLeft.Font.Style = []
            YAxis.TextRight.Font.Charset = DEFAULT_CHARSET
            YAxis.TextRight.Font.Color = clWindowText
            YAxis.TextRight.Font.Height = -11
            YAxis.TextRight.Font.Name = 'Tahoma'
            YAxis.TextRight.Font.Style = []
            YAxis.TickMarkColor = clRed
            BarValueTextFont.Charset = DEFAULT_CHARSET
            BarValueTextFont.Color = clWindowText
            BarValueTextFont.Height = -11
            BarValueTextFont.Name = 'Tahoma'
            BarValueTextFont.Style = []
            XAxisGroups = <>
            SerieType = stNormal
          end
          item
            AutoRange = arCommonZeroBased
            Pie.ValueFont.Charset = DEFAULT_CHARSET
            Pie.ValueFont.Color = clWindowText
            Pie.ValueFont.Height = -11
            Pie.ValueFont.Name = 'Tahoma'
            Pie.ValueFont.Style = []
            Pie.LegendFont.Charset = DEFAULT_CHARSET
            Pie.LegendFont.Color = clWindowText
            Pie.LegendFont.Height = -11
            Pie.LegendFont.Name = 'Tahoma'
            Pie.LegendFont.Style = []
            Annotations = <>
            ChartType = ctBar
            Color = 6723891
            CrossHairYValue.BorderWidth = 0
            CrossHairYValue.Font.Charset = DEFAULT_CHARSET
            CrossHairYValue.Font.Color = clWindowText
            CrossHairYValue.Font.Height = -11
            CrossHairYValue.Font.Name = 'Tahoma'
            CrossHairYValue.Font.Style = []
            CrossHairYValue.GradientSteps = 0
            LegendText = 'Serie 1'
            Marker.MarkerPicture.Data = {}
            Marker.MarkerColorTo = clBlack
            Name = 'Serie 1'
            ChartPattern.Data = {}
            ValueFont.Charset = DEFAULT_CHARSET
            ValueFont.Color = clWindowText
            ValueFont.Height = -11
            ValueFont.Name = 'Tahoma'
            ValueFont.Style = []
            ValueFormat = '%g'
            ValueWidth = 80
            XAxis.DateTimeFont.Charset = DEFAULT_CHARSET
            XAxis.DateTimeFont.Color = clWindowText
            XAxis.DateTimeFont.Height = -11
            XAxis.DateTimeFont.Name = 'Tahoma'
            XAxis.DateTimeFont.Style = []
            XAxis.MajorFont.Charset = DEFAULT_CHARSET
            XAxis.MajorFont.Color = clWindowText
            XAxis.MajorFont.Height = -11
            XAxis.MajorFont.Name = 'Tahoma'
            XAxis.MajorFont.Style = []
            XAxis.MajorUnit = 1.000000000000000000
            XAxis.MajorUnitSpacing = 0
            XAxis.MinorFont.Charset = DEFAULT_CHARSET
            XAxis.MinorFont.Color = clWindowText
            XAxis.MinorFont.Height = -11
            XAxis.MinorFont.Name = 'Tahoma'
            XAxis.MinorFont.Style = []
            XAxis.MinorUnit = 1.000000000000000000
            XAxis.MinorUnitSpacing = 0
            XAxis.TextTop.Font.Charset = DEFAULT_CHARSET
            XAxis.TextTop.Font.Color = clWindowText
            XAxis.TextTop.Font.Height = -11
            XAxis.TextTop.Font.Name = 'Tahoma'
            XAxis.TextTop.Font.Style = []
            XAxis.TextBottom.Font.Charset = DEFAULT_CHARSET
            XAxis.TextBottom.Font.Color = clWindowText
            XAxis.TextBottom.Font.Height = -11
            XAxis.TextBottom.Font.Name = 'Tahoma'
            XAxis.TextBottom.Font.Style = []
            XAxis.Visible = False
            YAxis.MajorFont.Charset = DEFAULT_CHARSET
            YAxis.MajorFont.Color = clWindowText
            YAxis.MajorFont.Height = -11
            YAxis.MajorFont.Name = 'Tahoma'
            YAxis.MajorFont.Style = []
            YAxis.MajorUnitSpacing = 0
            YAxis.MinorFont.Charset = DEFAULT_CHARSET
            YAxis.MinorFont.Color = clWindowText
            YAxis.MinorFont.Height = -11
            YAxis.MinorFont.Name = 'Tahoma'
            YAxis.MinorFont.Style = []
            YAxis.MinorUnitSpacing = 0
            YAxis.TextLeft.Font.Charset = DEFAULT_CHARSET
            YAxis.TextLeft.Font.Color = clWindowText
            YAxis.TextLeft.Font.Height = -11
            YAxis.TextLeft.Font.Name = 'Tahoma'
            YAxis.TextLeft.Font.Style = []
            YAxis.TextRight.Font.Charset = DEFAULT_CHARSET
            YAxis.TextRight.Font.Color = clWindowText
            YAxis.TextRight.Font.Height = -11
            YAxis.TextRight.Font.Name = 'Tahoma'
            YAxis.TextRight.Font.Style = []
            YAxis.Visible = False
            BarValueTextFont.Charset = DEFAULT_CHARSET
            BarValueTextFont.Color = clWindowText
            BarValueTextFont.Height = -11
            BarValueTextFont.Name = 'Tahoma'
            BarValueTextFont.Style = []
            XAxisGroups = <>
            SerieType = stNormal
          end>
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Title.Position = tTop
        Title.Text = 'TAdvChartView'
        XAxis.Font.Charset = DEFAULT_CHARSET
        XAxis.Font.Color = clWindowText
        XAxis.Font.Height = -11
        XAxis.Font.Name = 'Tahoma'
        XAxis.Font.Style = []
        XAxis.Text = 'X-axis'
        XGrid.MajorFont.Charset = DEFAULT_CHARSET
        XGrid.MajorFont.Color = clWindowText
        XGrid.MajorFont.Height = -11
        XGrid.MajorFont.Name = 'Tahoma'
        XGrid.MajorFont.Style = []
        XGrid.MinorFont.Charset = DEFAULT_CHARSET
        XGrid.MinorFont.Color = clWindowText
        XGrid.MinorFont.Height = -11
        XGrid.MinorFont.Name = 'Tahoma'
        XGrid.MinorFont.Style = []
        YAxis.Font.Charset = DEFAULT_CHARSET
        YAxis.Font.Color = clWindowText
        YAxis.Font.Height = -11
        YAxis.Font.Name = 'Tahoma'
        YAxis.Font.Style = []
        YAxis.Size = 40
        YAxis.Text = 'Y-axis'
        YGrid.MinorDistance = 1.000000000000000000
        YGrid.MajorDistance = 2.000000000000000000
        ZoomControl.SliderLeftPicture.Data = {}
        ZoomControl.SliderRightPicture.Data = {}
      end>
    TabOrder = 1
    Tracker.Font.Charset = DEFAULT_CHARSET
    Tracker.Font.Color = clWindowText
    Tracker.Font.Height = -11
    Tracker.Font.Name = 'Tahoma'
    Tracker.Font.Style = []
    Tracker.Title.Font.Charset = DEFAULT_CHARSET
    Tracker.Title.Font.Color = clWindowText
    Tracker.Title.Font.Height = -11
    Tracker.Title.Font.Name = 'Tahoma'
    Tracker.Title.Font.Style = []
    Tracker.Title.Text = 'TRACKER'
    Version = '3.0.7.1 JUNE, 2011'
    XAxisZoomSensitivity = 25.000000000000000000
    YAxisZoomSensitivity = 25.000000000000000000
    DoubleBuffered = True
  end
  object ImageList1: TImageList
    Left = 400
    Top = 32
    Bitmap = {
      494C010102000400100010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000289806002898
      0600289806002898060028980600289806002898060028980600289806002898
      0600289806002898060000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000289806002898
      0600289806002898060028980600289806002898060028980600289806002898
      0600289806002898060000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000289806002898
      0600289806002898060028980600289806002898060028980600289806002898
      0600289806002898060000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000289806002898
      0600289806002898060028980600289806002898060028980600289806002898
      0600289806002898060000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000289806002898
      0600289806002898060028980600289806002898060028980600289806002898
      0600289806002898060000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000289806002898
      0600289806002898060028980600289806002898060028980600289806002898
      0600289806002898060000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000289806002898
      0600289806002898060028980600289806002898060028980600289806002898
      0600289806002898060000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000289806002898
      0600289806002898060028980600289806002898060028980600289806002898
      0600289806002898060000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000289806002898
      0600289806002898060028980600289806002898060028980600289806002898
      0600289806002898060000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000289806002898
      0600289806002898060028980600289806002898060028980600289806002898
      0600289806002898060000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000289806002898
      0600289806002898060028980600289806002898060028980600289806002898
      0600289806002898060000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000289806002898
      0600289806002898060028980600289806002898060028980600289806002898
      0600289806002898060000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF000000008001800100000000
      8001800100000000800180010000000080018001000000008001800100000000
      8001800100000000800180010000000080018001000000008001800100000000
      8001800100000000800180010000000080018001000000008001800100000000
      8001800100000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object AdvChartLink1: TAdvChartLink
    Active = False
    AutoRange = arCommonZeroBased
    Grid = AdvStringGrid1
    GridValues.Column = 1
    GridValues.LegendTextType = ltFirstFixedCell
    ChartView = AdvGDIPChartView1
    Version = '1.0.0.0'
    Left = 72
    Top = 320
  end
  object AdvChartLink2: TAdvChartLink
    Active = False
    AutoRange = arCommonZeroBased
    Grid = AdvStringGrid1
    GridValues.Column = 2
    GridValues.LegendTextType = ltFirstFixedCell
    ChartView = AdvGDIPChartView1
    Version = '1.0.0.0'
    SerieIndex = 1
    Left = 168
    Top = 320
  end
end
