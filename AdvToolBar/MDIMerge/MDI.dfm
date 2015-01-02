object MDI_: TMDI_
  Left = 402
  Top = 207
  Caption = 'MDI'
  ClientHeight = 438
  ClientWidth = 650
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object AdvDockPanel1: TAdvDockPanel
    Left = 0
    Top = 0
    Width = 650
    Height = 28
    MinimumSize = 1
    LockHeight = False
    Persistence.Location = plRegistry
    Persistence.Enabled = False
    ToolBarStyler = AdvToolBarFantasyStyler2
    UseRunTimeHeight = True
    Version = '2.2.0.1'
    object AdvToolBar1: TAdvToolBar
      Left = 3
      Top = 1
      Width = 644
      Height = 19
      AllowFloating = True
      AutoMDIButtons = True
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'MS Sans Serif'
      CaptionFont.Style = []
      CompactImageIndex = -1
      FullSize = True
      TextAutoOptionMenu = 'Add or Remove Buttons'
      TextOptionMenu = 'Options'
      ToolBarStyler = AdvToolBarFantasyStyler2
      Images = ImageListMenu
      Menu = M_MDI
      ParentOptionPicture = True
    end
  end
  object M_MDI: TAdvMainMenu
    Images = ImageListMenu
    Version = '2.0.0.0'
    Left = 80
    Top = 69
    object File1: TMenuItem
      Caption = '&File'
      object NewForm1: TMenuItem
        Caption = '&New MDI child'
        ImageIndex = 0
        ShortCut = 16462
        OnClick = NewForm1Click
      end
      object Sep1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = '&Exit'
        ImageIndex = 0
        OnClick = Exit1Click
      end
    end
    object I_Action1: TMenuItem
      Caption = '&Action'
      Enabled = False
      GroupIndex = 2
    end
  end
  object AdvToolBarFantasyStyler2: TAdvToolBarFantasyStyler
    Style = bsArctic
    AdvMenuStyler = AdvMenuFantasyStyler1
    BackGroundDisplay = bdStretch
    ButtonAppearance.Color = clWhite
    ButtonAppearance.ColorTo = clInactiveCaptionText
    ButtonAppearance.ColorChecked = clWhite
    ButtonAppearance.ColorCheckedTo = clInactiveCaptionText
    ButtonAppearance.ColorDown = clInactiveCaptionText
    ButtonAppearance.ColorDownTo = clWhite
    ButtonAppearance.ColorHot = clNone
    ButtonAppearance.CaptionTextColor = clSilver
    ButtonAppearance.CaptionTextColorHot = clSilver
    ButtonAppearance.CaptionTextColorChecked = clInactiveCaptionText
    ButtonAppearance.BorderDownColor = clSilver
    ButtonAppearance.BorderHotColor = clNone
    ButtonAppearance.BorderCheckedColor = clSilver
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -11
    ButtonAppearance.CaptionFont.Name = 'MS Sans Serif'
    ButtonAppearance.CaptionFont.Style = []
    CaptionAppearance.CaptionColor = clInactiveCaptionText
    CaptionAppearance.CaptionColorTo = clInactiveCaptionText
    CaptionAppearance.CaptionTextColor = clBlack
    CaptionAppearance.CaptionBorderColor = clInactiveCaptionText
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = []
    ContainerAppearance.LineColor = clBtnShadow
    ContainerAppearance.Line3D = True
    Color.Color = clWhite
    Color.ColorTo = clNone
    Color.Direction = gdHorizontal
    Color.Steps = 16
    ColorHot.Color = clNone
    ColorHot.ColorTo = clNone
    ColorHot.Direction = gdHorizontal
    CompactGlowButtonAppearance.ColorChecked = 16111818
    CompactGlowButtonAppearance.ColorCheckedTo = 16367008
    CompactGlowButtonAppearance.ColorDisabled = 15921906
    CompactGlowButtonAppearance.ColorDisabledTo = 15921906
    CompactGlowButtonAppearance.ColorDown = 16111818
    CompactGlowButtonAppearance.ColorDownTo = 16367008
    CompactGlowButtonAppearance.ColorHot = 16117985
    CompactGlowButtonAppearance.ColorHotTo = 16372402
    CompactGlowButtonAppearance.ColorMirrorHot = 16107693
    CompactGlowButtonAppearance.ColorMirrorHotTo = 16775412
    CompactGlowButtonAppearance.ColorMirrorDown = 16102556
    CompactGlowButtonAppearance.ColorMirrorDownTo = 16768988
    CompactGlowButtonAppearance.ColorMirrorChecked = 16102556
    CompactGlowButtonAppearance.ColorMirrorCheckedTo = 16768988
    CompactGlowButtonAppearance.ColorMirrorDisabled = 11974326
    CompactGlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    DockColor.Color = clWhite
    DockColor.ColorTo = clWhite
    DockColor.Direction = gdVertical
    DockColor.Steps = 128
    DragGripStyle = dsNone
    FloatingWindowBorderColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    GlowButtonAppearance.ColorChecked = 16111818
    GlowButtonAppearance.ColorCheckedTo = 16367008
    GlowButtonAppearance.ColorDisabled = 15921906
    GlowButtonAppearance.ColorDisabledTo = 15921906
    GlowButtonAppearance.ColorDown = 16111818
    GlowButtonAppearance.ColorDownTo = 16367008
    GlowButtonAppearance.ColorHot = 16117985
    GlowButtonAppearance.ColorHotTo = 16372402
    GlowButtonAppearance.ColorMirrorHot = 16107693
    GlowButtonAppearance.ColorMirrorHotTo = 16775412
    GlowButtonAppearance.ColorMirrorDown = 16102556
    GlowButtonAppearance.ColorMirrorDownTo = 16768988
    GlowButtonAppearance.ColorMirrorChecked = 16102556
    GlowButtonAppearance.ColorMirrorCheckedTo = 16768988
    GlowButtonAppearance.ColorMirrorDisabled = 11974326
    GlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    GroupAppearance.BorderColor = 10729644
    GroupAppearance.Color = clWhite
    GroupAppearance.ColorTo = clWhite
    GroupAppearance.ColorMirror = clSilver
    GroupAppearance.ColorMirrorTo = clWhite
    GroupAppearance.Font.Charset = DEFAULT_CHARSET
    GroupAppearance.Font.Color = clWindowText
    GroupAppearance.Font.Height = -11
    GroupAppearance.Font.Name = 'Tahoma'
    GroupAppearance.Font.Style = []
    GroupAppearance.Gradient = ggVertical
    GroupAppearance.GradientMirror = ggVertical
    GroupAppearance.TextColor = clBlue
    GroupAppearance.CaptionAppearance.CaptionColor = clGray
    GroupAppearance.PageAppearance.BorderColor = clGray
    GroupAppearance.PageAppearance.Color = clWhite
    GroupAppearance.PageAppearance.ColorTo = clWhite
    GroupAppearance.PageAppearance.ColorMirror = clSilver
    GroupAppearance.PageAppearance.ColorMirrorTo = clWhite
    GroupAppearance.PageAppearance.Gradient = ggVertical
    GroupAppearance.PageAppearance.GradientMirror = ggVertical
    GroupAppearance.TabAppearance.BorderColor = clBtnFace
    GroupAppearance.TabAppearance.BorderColorHot = clBlue
    GroupAppearance.TabAppearance.BorderColorSelected = clBtnFace
    GroupAppearance.TabAppearance.BorderColorSelectedHot = clNone
    GroupAppearance.TabAppearance.BorderColorDisabled = clNone
    GroupAppearance.TabAppearance.BorderColorDown = clNone
    GroupAppearance.TabAppearance.Color = clBtnFace
    GroupAppearance.TabAppearance.ColorTo = clWhite
    GroupAppearance.TabAppearance.ColorSelected = clWhite
    GroupAppearance.TabAppearance.ColorSelectedTo = clBtnFace
    GroupAppearance.TabAppearance.ColorDisabled = clNone
    GroupAppearance.TabAppearance.ColorDisabledTo = clNone
    GroupAppearance.TabAppearance.ColorHot = clYellow
    GroupAppearance.TabAppearance.ColorHotTo = clNone
    GroupAppearance.TabAppearance.ColorMirror = clWhite
    GroupAppearance.TabAppearance.ColorMirrorTo = clWhite
    GroupAppearance.TabAppearance.ColorMirrorHot = clNone
    GroupAppearance.TabAppearance.ColorMirrorHotTo = clNone
    GroupAppearance.TabAppearance.ColorMirrorSelected = clWhite
    GroupAppearance.TabAppearance.ColorMirrorSelectedTo = clWhite
    GroupAppearance.TabAppearance.ColorMirrorDisabled = clNone
    GroupAppearance.TabAppearance.ColorMirrorDisabledTo = clNone
    GroupAppearance.TabAppearance.Font.Charset = DEFAULT_CHARSET
    GroupAppearance.TabAppearance.Font.Color = clWindowText
    GroupAppearance.TabAppearance.Font.Height = -11
    GroupAppearance.TabAppearance.Font.Name = 'Tahoma'
    GroupAppearance.TabAppearance.Font.Style = []
    GroupAppearance.TabAppearance.Gradient = ggVertical
    GroupAppearance.TabAppearance.GradientMirror = ggVertical
    GroupAppearance.TabAppearance.GradientHot = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorHot = ggVertical
    GroupAppearance.TabAppearance.GradientSelected = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorSelected = ggVertical
    GroupAppearance.TabAppearance.GradientDisabled = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorDisabled = ggVertical
    GroupAppearance.TabAppearance.TextColor = clBlue
    GroupAppearance.TabAppearance.TextColorHot = clBlue
    GroupAppearance.TabAppearance.TextColorSelected = clBlue
    GroupAppearance.TabAppearance.TextColorDisabled = clWhite
    GroupAppearance.ToolBarAppearance.Color.Color = clWhite
    GroupAppearance.ToolBarAppearance.Color.ColorTo = clBtnFace
    GroupAppearance.ToolBarAppearance.Color.Direction = gdHorizontal
    GroupAppearance.ToolBarAppearance.ColorHot.Color = clNone
    GroupAppearance.ToolBarAppearance.ColorHot.ColorTo = clNone
    GroupAppearance.ToolBarAppearance.ColorHot.Direction = gdHorizontal
    PageAppearance.BorderColor = clGray
    PageAppearance.Color = clWhite
    PageAppearance.ColorTo = clWhite
    PageAppearance.ColorMirror = clSilver
    PageAppearance.ColorMirrorTo = clWhite
    PageAppearance.Gradient = ggVertical
    PageAppearance.GradientMirror = ggVertical
    PagerCaption.BorderColor = clGray
    PagerCaption.Color = clWhite
    PagerCaption.ColorTo = clWhite
    PagerCaption.ColorMirror = clSilver
    PagerCaption.ColorMirrorTo = clWhite
    PagerCaption.Gradient = ggVertical
    PagerCaption.GradientMirror = ggVertical
    PagerCaption.TextColor = clBlue
    PagerCaption.Font.Charset = DEFAULT_CHARSET
    PagerCaption.Font.Color = clWindowText
    PagerCaption.Font.Height = -11
    PagerCaption.Font.Name = 'Tahoma'
    PagerCaption.Font.Style = []
    RightHandleColor = clWhite
    RightHandleColorTo = clWhite
    RightHandleColorHot = clWhite
    RightHandleColorHotTo = clWhite
    RightHandleColorDown = clWhite
    RightHandleColorDownTo = clWhite
    TabAppearance.BorderColor = clBtnFace
    TabAppearance.BorderColorHot = clBlue
    TabAppearance.BorderColorSelected = clBtnFace
    TabAppearance.BorderColorSelectedHot = clNone
    TabAppearance.BorderColorDisabled = clNone
    TabAppearance.BorderColorDown = clNone
    TabAppearance.Color = clBtnFace
    TabAppearance.ColorTo = clWhite
    TabAppearance.ColorSelected = clWhite
    TabAppearance.ColorSelectedTo = clBtnFace
    TabAppearance.ColorDisabled = clNone
    TabAppearance.ColorDisabledTo = clNone
    TabAppearance.ColorHot = clYellow
    TabAppearance.ColorHotTo = clNone
    TabAppearance.ColorMirror = clWhite
    TabAppearance.ColorMirrorTo = clWhite
    TabAppearance.ColorMirrorHot = clNone
    TabAppearance.ColorMirrorHotTo = clNone
    TabAppearance.ColorMirrorSelected = clWhite
    TabAppearance.ColorMirrorSelectedTo = clWhite
    TabAppearance.ColorMirrorDisabled = clNone
    TabAppearance.ColorMirrorDisabledTo = clNone
    TabAppearance.Font.Charset = DEFAULT_CHARSET
    TabAppearance.Font.Color = clWindowText
    TabAppearance.Font.Height = -11
    TabAppearance.Font.Name = 'Tahoma'
    TabAppearance.Font.Style = []
    TabAppearance.Gradient = ggVertical
    TabAppearance.GradientMirror = ggVertical
    TabAppearance.GradientHot = ggVertical
    TabAppearance.GradientMirrorHot = ggVertical
    TabAppearance.GradientSelected = ggVertical
    TabAppearance.GradientMirrorSelected = ggVertical
    TabAppearance.GradientDisabled = ggVertical
    TabAppearance.GradientMirrorDisabled = ggVertical
    TabAppearance.TextColor = clBlue
    TabAppearance.TextColorHot = clBlue
    TabAppearance.TextColorSelected = clBlue
    TabAppearance.TextColorDisabled = clWhite
    TabAppearance.BackGround.Color = clWhite
    TabAppearance.BackGround.ColorTo = clBtnFace
    TabAppearance.BackGround.Direction = gdHorizontal
    Left = 40
    Top = 64
  end
  object AdvMenuFantasyStyler1: TAdvMenuFantasyStyler
    Style = fsArctic
    Background.Position = bpCenter
    Background.Color = clWindow
    Background.GradientDirection = gdHorizontal
    IconBar.Color = 15724527
    IconBar.ColorTo = clWhite
    IconBar.CheckColor = clNone
    IconBar.CheckBorder = clSilver
    IconBar.RadioColor = clNone
    IconBar.RadioBorder = clSilver
    SelectedItem.Color = clWhite
    SelectedItem.ColorTo = clInactiveCaptionText
    SelectedItem.BorderColor = clSilver
    SelectedItem.Font.Charset = DEFAULT_CHARSET
    SelectedItem.Font.Color = clGray
    SelectedItem.Font.Height = -11
    SelectedItem.Font.Name = 'Tahoma'
    SelectedItem.Font.Style = []
    SelectedItem.UseSystemFont = False
    SelectedItem.CheckColor = clSilver
    SelectedItem.CheckColorTo = clWhite
    SelectedItem.CheckBorder = clSilver
    SelectedItem.RadioColor = clSilver
    SelectedItem.RadioColorTo = clWhite
    SelectedItem.RadioBorder = clSilver
    RootItem.Color = clWhite
    RootItem.ColorTo = clInactiveCaptionText
    RootItem.GradientDirection = gdVertical
    RootItem.Font.Charset = DEFAULT_CHARSET
    RootItem.Font.Color = clSilver
    RootItem.Font.Height = -11
    RootItem.Font.Name = 'Tahoma'
    RootItem.Font.Style = []
    RootItem.SelectedColor = clInactiveCaptionText
    RootItem.SelectedColorTo = clWhite
    RootItem.SelectedBorderColor = clSilver
    RootItem.SelectedTextColor = clGray
    RootItem.HoverColor = clNone
    RootItem.HoverColorTo = clNone
    RootItem.HoverBorderColor = clNone
    RootItem.HoverTextColor = clGray
    Glyphs.SubMenu.Data = {
      5A000000424D5A000000000000003E0000002800000004000000070000000100
      0100000000001C0000000000000000000000020000000200000000000000FFFF
      FF0070000000300000001000000000000000100000003000000070000000}
    Glyphs.Check.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FDFF0000F8FF0000F07F0000F23F
      0000F71F0000FF8F0000FFCF0000FFEF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    Glyphs.Radio.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FC3F0000F81F0000F81F
      0000F81F0000F81F0000FC3F0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    SideBar.Font.Charset = DEFAULT_CHARSET
    SideBar.Font.Color = clWhite
    SideBar.Font.Height = -19
    SideBar.Font.Name = 'Tahoma'
    SideBar.Font.Style = [fsBold, fsItalic]
    SideBar.Image.Position = bpCenter
    SideBar.Background.Position = bpCenter
    SideBar.SplitterColorTo = clBlack
    Separator.Color = clSilver
    Separator.ColorTo = clWhite
    Separator.GradientType = gtBoth
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    MenuBorderColor = clSilver
    Left = 40
    Top = 104
  end
  object ImageListMenu: TImageList
    Left = 80
    Top = 104
    Bitmap = {
      494C010101000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      00000000000000000000000000000000000089141300840B0A00840B0A00840B
      0A00840B0A00840B0A00840B0A00840B0A00840B0A00840B0A00840B0A00840B
      0A00840B0A00840B0A00840B0A00891413000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008309080080020100800201008002
      0100800201008002010080020100800201008002010080020100800201008002
      0100800201008002010080020100830908000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000840B0A0080020100800201008002
      0100800201008002010080020100800201008002010080020100800201008002
      0100800201008002010080020100840B0A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000840B0A0080020100800201000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008002010080020100840B0A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000840B0A0080020100800201000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008002010080020100840B0A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000840B0A0080020100800201000000
      0000000000008002010080020100000000000000000088121100800201000000
      0000000000008002010080020100840B0A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000840B0A0080020100800201000000
      0000000000008002010080020100800201000000000094282800800201000000
      0000000000008002010080020100840B0A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000840B0A0080020100800201000000
      0000000000000000000080020100800201008002010080020100800201000000
      0000000000008002010080020100840B0A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000840B0A0080020100800201000000
      0000000000000000000000000000800201008002010080020100800201000000
      0000000000008002010080020100840B0A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000840B0A0080020100800201000000
      0000000000009021200093272700800201008002010080020100800201000000
      0000000000008002010080020100840B0A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000840B0A0080020100800201000000
      0000000000008002010080020100800201008002010080020100800201000000
      0000000000008002010080020100840B0A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000840B0A0080020100800201000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008002010080020100840B0A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000840B0A0080020100800201000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008002010080020100840B0A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000840B0A0080020100800201008002
      0100800201008002010080020100800201008002010080020100800201008002
      0100800201008002010080020100840B0A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008309080080020100800201008002
      0100800201008002010080020100800201008002010080020100800201008002
      0100800201008002010080020100830908000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000089141300840B0A00840B0A00840B
      0A00840B0A00840B0A00840B0A00840B0A00840B0A00840B0A00840B0A00840B
      0A00840B0A00840B0A00840B0A00891413000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      00000000000000001FF80000000000001FF80000000000001998000000000000
      18980000000000001C180000000000001E180000000000001818000000000000
      18180000000000001FF80000000000001FF80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
end
