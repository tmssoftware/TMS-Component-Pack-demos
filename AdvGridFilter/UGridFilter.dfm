object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'TAdvGridFilter Demo'
  ClientHeight = 611
  ClientWidth = 670
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
  object btnShowDialog: TButton
    Left = 0
    Top = 233
    Width = 670
    Height = 28
    Align = alClient
    Caption = 'Use a dialog'
    TabOrder = 1
    OnClick = btnShowDialogClick
  end
  object AdvStringGrid1: TAdvStringGrid
    Left = 0
    Top = 0
    Width = 670
    Height = 233
    Cursor = crDefault
    Align = alTop
    DrawingStyle = gdsClassic
    ScrollBars = ssBoth
    TabOrder = 0
    HoverRowCells = [hcNormal, hcSelected]
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ActiveCellColor = 15387318
    ControlLook.FixedGradientFrom = clWhite
    ControlLook.FixedGradientTo = clBtnFace
    ControlLook.FixedGradientHoverFrom = 13619409
    ControlLook.FixedGradientHoverTo = 12502728
    ControlLook.FixedGradientHoverMirrorFrom = 12502728
    ControlLook.FixedGradientHoverMirrorTo = 11254975
    ControlLook.FixedGradientDownFrom = 8816520
    ControlLook.FixedGradientDownTo = 7568510
    ControlLook.FixedGradientDownMirrorFrom = 7568510
    ControlLook.FixedGradientDownMirrorTo = 6452086
    ControlLook.FixedGradientDownBorder = 11440207
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
    FilterDropDown.TextChecked = 'Checked'
    FilterDropDown.TextUnChecked = 'Unchecked'
    FilterDropDownClear = '(All)'
    FilterEdit.CaseSensitive = True
    FilterEdit.TypeNames.Strings = (
      'Starts with'
      'Ends with'
      'Contains'
      'Not contains'
      'Equal'
      'Not equal'
      'Clear')
    FixedRowHeight = 22
    FixedRowAlways = True
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = [fsBold]
    FloatFormat = '%.2f'
    HoverButtons.Buttons = <>
    HoverButtons.Position = hbLeftFromColumnLeft
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
    SearchFooter.ColorTo = 15790320
    SearchFooter.FindNextCaption = 'Find &next'
    SearchFooter.FindPrevCaption = 'Find &previous'
    SearchFooter.Font.Charset = DEFAULT_CHARSET
    SearchFooter.Font.Color = clWindowText
    SearchFooter.Font.Height = -11
    SearchFooter.Font.Name = 'Tahoma'
    SearchFooter.Font.Style = []
    SearchFooter.HighLightCaption = 'Highlight'
    SearchFooter.HintClose = 'Close'
    SearchFooter.HintFindNext = 'Find next occurrence'
    SearchFooter.HintFindPrev = 'Find previous occurrence'
    SearchFooter.HintHighlight = 'Highlight occurrences'
    SearchFooter.MatchCaseCaption = 'Match case'
    SortSettings.DefaultFormat = ssAutomatic
    SortSettings.HeaderColorTo = 16579058
    SortSettings.HeaderMirrorColor = 16380385
    SortSettings.HeaderMirrorColorTo = 16182488
    Version = '7.5.0.0'
  end
  object AdvGridFilterPanel1: TAdvGridFilterPanel
    Left = 0
    Top = 261
    Width = 670
    Height = 350
    Align = alBottom
    ButtonAddIcon.Data = {
      89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
      0D0000000467414D410000B18F0BFC6105000000097048597300000EC100000E
      C101B8916BED0000001874455874536F667477617265007061696E742E6E6574
      20342E302E34128202F3000001B749444154384F8DD3BF4B56511CC7F1478DD4
      D60802C51F20450405E92462630EBAF91738382864354835A743A2E024E22085
      81E9223808FE46512428210A0407C12548FB85190411BEDF1794E3E3FDF17CE0
      25F71CAEDFE79C73CF3797904BB8851E4C60090B788D6EDC40310A8A2FCFE20F
      3E60044FF11CA3F88863CCA00E8929423B8EE06A5C61DC2A9CABC72A0EF100B1
      B1D82F3CC1652732E23BCFE0025A9D08E36A7EC362AEB4D0F8EE0B7C43AD13C6
      0FB0883924ADEC33B6501E8DCEA7142B9844744477E007F06324E53BF670251A
      5DCC3DB8F50A07BDD844DA56B30ABA4ABFFE4307D318F221255905CD2B582BB7
      8E473E04799FE71FFE623B98D3359CA60FD68AFE3CF621C8D73CFF61D183604E
      D7719A7E4405DF62D8872057F3FCC03E2A83398517DF16B55674F7DE21AD37B3
      CEB00C9FD0E5E036ECCDBB0E129255B01176597404259887973BE962A715F4CA
      6CC02D9F5DBD9BB07DECCDB8FBE8C57507F9C7E2625EE20B6A9C08D3026FBBBD
      E9AF66C5772CE6FFDC77222E6D70A56B68405CEFBAED26D8DBAEAC19A9A9C638
      FCE51DD8F40318C41476F11363A84241F1ACEC824EBCC132FC681E7C07BC8331
      679DCB9D00C07367E3D22B14540000000049454E44AE426082}
    ButtonRemoveIcon.Data = {
      89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
      0D0000000467414D410000B18F0BFC6105000000097048597300000EC100000E
      C101B8916BED0000001874455874536F667477617265007061696E742E6E6574
      20342E302E34128202F3000001E649444154384F8DD33D4855611CC7F15B6AA5
      6B8881680A924490A04D2239EA909B9B930D0E09A50E65AD65422F8A53458328
      0AA94BD0209A9A28460816684450BB8B4251B6A97DBF8773E3E1706EF7FEE073
      B9E7E19CFFF99FE7259323C5B8885B98C232DE6212BDB880932828DEFC067FF0
      11CF30887B78816D1CE035EA903327D0895FB01B3B4CEBC2B126AC620F6D488D
      C57E6200A71CC813EFB90B1BB8E64018BBF90D8BD969A1F1DE07D847AD03C605
      58C23C0AE92C99D378875788A6E8325C0017234C15EEC31766E30377905C8C46
      F8E9955EDCC67B849FEA83767C843194C41EC7630B28423676E9EADFF4620E23
      FE49A4029F6001B7CE300EF105769FCC04AC9559479F7F52528ECF388685BFE3
      1CD232046B453FFDFE49899F390A0BEA793C969687880ACEC0794AC67974CEFC
      4C3BDB825D7A5AC285CAC6236AAD68EF6D225AF2382E90736601E7CCCF744E77
      E2B12708EF3F03A7E6861797E0D96CF0228E05BBE0A2840B60D10FE846B82B9A
      E1298BE6D7E55F849B3BB9B17D7332DE131673CB6CC04FFE375E0F8F8F6733BC
      395F6CE6117651E3409876B8DB3D9BBE355FBCC7623ED3EA405A3A60A76BB882
      52245386163897767615FFCD798CC3377F8587DEEDF314B3F8861F78896A1414
      B784A7A407D358818BE6C45FC759A4CC7526F3175BBA64A888F2C2FF00000000
      49454E44AE426082}
    Ctl3D = True
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clBlack
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Title = 'Grid Filter'
    UI.ApplyButton = 'Apply Filter'
    UI.ApplyDialogText = 'Are you sure you want to apply the filter?'
    UI.ColumnLabel = 'Column'
    UI.ColumnHint = 'The column from the selected grid'
    UI.CaseLabel = 'Case'
    UI.CaseHint = 'Is the value case sensitive'
    UI.HintApplyFilter = 'Applies the new filter conditions'
    UI.HintClearFilter = 
      'Clears the visual filter conditions, but remains the active grid' +
      ' filter'
    UI.HintFilterAdd = 'Add a new filter'
    UI.HintFilterRemove = 'Remove this filter'
    UI.HintRestoreFilter = 'Restores the active grid filter to the filter panel'
    UI.OperationLabel = 'Filter Operation'
    UI.OperationHint = 'Select an operation'
    UI.OperationEqual = 'Equal'
    UI.OperationNotEqual = 'Not Equal'
    UI.OperationContains = 'Contains'
    UI.OperationBeginsWith = 'Begins With'
    UI.OperationEndsWith = 'Ends With'
    UI.OperationSmallerThen = 'Smaller Then'
    UI.OperationLargerThen = 'Larger Then'
    UI.OperationSmallerOrEqual = 'Smaller Or Equal'
    UI.OperationLargerOrEqual = 'Larger Or Equal'
    UI.OperationTrueFalse = 'True/False'
    UI.OperatorAnd = 'And'
    UI.OperatorOr = 'Or'
    UI.ClearButton = 'Clear Filter'
    UI.ClearDialogText = 'Are you sure you want to clear the filter?'
    UI.RestoreButton = 'Restore Filter'
    UI.RestoreDialogText = 'Are you sure you want to restore the filter?'
    UI.ValueLabel = 'Value'
    UI.ValueTextHint = 'Select a column first'
    Version = '1.0.0.0'
    Grid = AdvStringGrid1
  end
  object AdvGridFilterDialog1: TAdvGridFilterDialog
    ButtonAddIcon.Data = {
      89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
      0D00000006624B474400FF00FF00FFA0BDA7930000014149444154388DB5D5B1
      4A5C511006E04FDDEC76C1275053580B6E1E600B5B415149205682BA856FA222
      96765A88160AFB00FA08E9621362EC964888A216A2855AEC1C38AC777783AC3F
      0CCCBDFFFC73EE9C39672EC5A86011C738C755D8398EF02D62FE0BF3B8C0730F
      FB8DB96E8986B0DD26BAC60136C20EE35D1EB315DA57D8CC82FE6005E582B832
      EAB8CCE2D7DB836632F20746BA951218C559689E309DAFF82B88BF186B13D6B2
      C56A6DDC27FC0BEE273EC0D74C502FF8926E09612DE317686D746A40D19EF54A
      58C14DF0FB254C06718AC7F0A732C144E65751CA9E4FF010DAD994EBCEEB4EF5
      3A83C912D209B91DC44041196F46094D8C6B752CE173E657B113FE2ABE17E449
      DA267D6ECA201A410C63A973311DB18C8FE1377887834D9FAF5E425F8703EF30
      BE12FA36607354B486C69ED63EDD879D61175F74F805BC0013FA968CFFAB4186
      0000000049454E44AE426082}
    ButtonRemoveIcon.Data = {
      89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
      0D00000006624B474400FF00FF00FFA0BDA7930000016D49444154388DB5D4CF
      4E14411006F0DFEA1ACF3C80063D0B071F0330AC8B108E7031843721E1EF2B00
      1736E1C86B789204D4044E7A90C583067709010E5393ED9D9DD94D087CC9245D
      5F7D55D355DD5D35E57889454CE33DC682BFC4171CE100DD8AF83E2CE01C7723
      BE337C1A96E839B60A4117686123BE16DA05CD66C40E602311FDC412EA25BA3A
      96F12BD1AF1745CDC4F915AF869512788DE324AE913B5EE04790BF311E7C0D93
      258926C3076FF45AF02D72594CFEF23909DC919DE24CC27D086E3BE15693F805
      D80FA3ADD7B38908BC4347767D6612AE1B9ABCC23FC1EFC2F7305A85D21AB84E
      9276627D8DD982F6307CA7F02F8C3583682649F3641F4B74EBE1FFFB2C16F41A
      9DE20A37897D135C1179EC2DD5254FEB959996FC1F53056D5EF2090F3B940EDE
      8576E0501EFDDA3CFAC5A6FFE91D877014DEAA787A39D2E1D0C68AEAE1B02A9B
      8D95C38127185F39E665FD1835604F31372C5171B70DD9953A979D6C37D67BE1
      2BDDD53D9F8CAFC1B9C89F290000000049454E44AE426082}
    Caption = 'Grid Filter Dialog Demo'
    ColorDirection = gdHorizontal
    FooterColorStart = clActiveCaption
    FooterColorDirection = gdHorizontal
    HeaderColorStart = clActiveCaption
    HeaderColorEnd = clActiveCaption
    HeaderColorDirection = gdHorizontal
    ItemBorderColor = clSilver
    ItemColorStart = clInactiveCaption
    ItemColorEnd = clInactiveCaption
    ItemColorDirection = gdHorizontal
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Grid = AdvStringGrid1
    Version = '1.0.0.0'
    Left = 416
    Top = 56
  end
end
