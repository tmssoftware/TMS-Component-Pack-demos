object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'TAdvRichEditor ribbon demo'
  ClientHeight = 462
  ClientWidth = 890
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object AdvGlowButton1: TAdvGlowButton
    Left = 712
    Top = 184
    Width = 100
    Height = 41
    Caption = 'AdvGlowButton1'
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    Rounded = False
    TabOrder = 1
    OnClick = AdvGlowButton1Click
    Appearance.BorderColor = 15000546
    Appearance.BorderColorHot = 16371364
    Appearance.BorderColorDown = 14983778
    Appearance.BorderColorChecked = 14327846
    Appearance.BorderColorDisabled = 11316396
    Appearance.Color = 16250613
    Appearance.ColorTo = clNone
    Appearance.ColorChecked = 14327846
    Appearance.ColorCheckedTo = clNone
    Appearance.ColorDisabled = 16250871
    Appearance.ColorDisabledTo = clNone
    Appearance.ColorDown = 16244937
    Appearance.ColorDownTo = clNone
    Appearance.ColorHot = 16248808
    Appearance.ColorHotTo = clNone
    Appearance.ColorMirror = 16250613
    Appearance.ColorMirrorTo = clNone
    Appearance.ColorMirrorHot = 16248808
    Appearance.ColorMirrorHotTo = clNone
    Appearance.ColorMirrorDown = 16244937
    Appearance.ColorMirrorDownTo = clNone
    Appearance.ColorMirrorChecked = 14327846
    Appearance.ColorMirrorCheckedTo = clNone
    Appearance.ColorMirrorDisabled = 16250871
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
    Appearance.TextColorChecked = clWhite
  end
  object AdvToolBarPager1: TAdvToolBarPager
    Left = 0
    Top = 0
    Width = 890
    Height = 149
    ActivePage = AdvToolBarPager11
    Caption.Caption = 'TAdvRichEditor ribbon demo'
    CaptionButtons = [cbClose, cbMinimize, cbMaximize]
    Hints.MDICloseBtnHint = 'Close'
    Hints.MDIMinimizeBtnHint = 'Minimize'
    Hints.MDIMaximizeBtnHint = 'Maximize'
    Hints.HelpBtnHint = 'Help'
    TabGroups = <>
    TabSettings.EndMargin = 0
    Persistence.Location = plRegistry
    Persistence.Enabled = False
    ToolBarStyler = AdvToolBarOfficeStyler1
    ShowHelpButton = False
    PageLeftMargin = 0
    PageRightMargin = 0
    OptionPicture.Data = {
      424DA20400000000000036040000280000000900000009000000010008000000
      00006C0000000000000000000000000100000000000000000000000080000080
      000000808000800000008000800080800000C0C0C000C0DCC000F0CAA6000020
      400000206000002080000020A0000020C0000020E00000400000004020000040
      400000406000004080000040A0000040C0000040E00000600000006020000060
      400000606000006080000060A0000060C0000060E00000800000008020000080
      400000806000008080000080A0000080C0000080E00000A0000000A0200000A0
      400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0200000C0
      400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0200000E0
      400000E0600000E0800000E0A00000E0C00000E0E00040000000400020004000
      400040006000400080004000A0004000C0004000E00040200000402020004020
      400040206000402080004020A0004020C0004020E00040400000404020004040
      400040406000404080004040A0004040C0004040E00040600000406020004060
      400040606000406080004060A0004060C0004060E00040800000408020004080
      400040806000408080004080A0004080C0004080E00040A0000040A0200040A0
      400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0200040C0
      400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0200040E0
      400040E0600040E0800040E0A00040E0C00040E0E00080000000800020008000
      400080006000800080008000A0008000C0008000E00080200000802020008020
      400080206000802080008020A0008020C0008020E00080400000804020008040
      400080406000804080008040A0008040C0008040E00080600000806020008060
      400080606000806080008060A0008060C0008060E00080800000808020008080
      400080806000808080008080A0008080C0008080E00080A0000080A0200080A0
      400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0200080C0
      400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0200080E0
      400080E0600080E0800080E0A00080E0C00080E0E000C0000000C0002000C000
      4000C0006000C0008000C000A000C000C000C000E000C0200000C0202000C020
      4000C0206000C0208000C020A000C020C000C020E000C0400000C0402000C040
      4000C0406000C0408000C040A000C040C000C040E000C0600000C0602000C060
      4000C0606000C0608000C060A000C060C000C060E000C0800000C0802000C080
      4000C0806000C0808000C080A000C080C000C080E000C0A00000C0A02000C0A0
      4000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C02000C0C0
      4000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000FF0000FF
      000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFFFFFFFF00
      0000FDFDFDFDE3E3E3E3FF000000FDE3FFFDFDE3E3E3FF000000FDE3FFFDFDE3
      E3E3FF000000FDE3FFFDE3FFFDE3FD000000FDE3FFFDFDFDFDFDFD000000FDE3
      FFFFFFFFFFFDFD000000FDE3E3E3E3E3E3FDFD000000FDFDFDFDFDFDFDFDFD00
      0000}
    OptionDisabledPicture.Data = {
      424DA20400000000000036040000280000000900000009000000010008000000
      00006C0000000000000000000000000100000000000000000000000080000080
      000000808000800000008000800080800000C0C0C000C0DCC000F0CAA6000020
      400000206000002080000020A0000020C0000020E00000400000004020000040
      400000406000004080000040A0000040C0000040E00000600000006020000060
      400000606000006080000060A0000060C0000060E00000800000008020000080
      400000806000008080000080A0000080C0000080E00000A0000000A0200000A0
      400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0200000C0
      400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0200000E0
      400000E0600000E0800000E0A00000E0C00000E0E00040000000400020004000
      400040006000400080004000A0004000C0004000E00040200000402020004020
      400040206000402080004020A0004020C0004020E00040400000404020004040
      400040406000404080004040A0004040C0004040E00040600000406020004060
      400040606000406080004060A0004060C0004060E00040800000408020004080
      400040806000408080004080A0004080C0004080E00040A0000040A0200040A0
      400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0200040C0
      400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0200040E0
      400040E0600040E0800040E0A00040E0C00040E0E00080000000800020008000
      400080006000800080008000A0008000C0008000E00080200000802020008020
      400080206000802080008020A0008020C0008020E00080400000804020008040
      400080406000804080008040A0008040C0008040E00080600000806020008060
      400080606000806080008060A0008060C0008060E00080800000808020008080
      400080806000808080008080A0008080C0008080E00080A0000080A0200080A0
      400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0200080C0
      400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0200080E0
      400080E0600080E0800080E0A00080E0C00080E0E000C0000000C0002000C000
      4000C0006000C0008000C000A000C000C000C000E000C0200000C0202000C020
      4000C0206000C0208000C020A000C020C000C020E000C0400000C0402000C040
      4000C0406000C0408000C040A000C040C000C040E000C0600000C0602000C060
      4000C0606000C0608000C060A000C060C000C060E000C0800000C0802000C080
      4000C0806000C0808000C080A000C080C000C080E000C0A00000C0A02000C0A0
      4000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C02000C0C0
      4000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000FF0000FF
      000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFFFFFFFF00
      0000FDFDFDFD07070707FF000000FD07FFFDFD070707FF000000FD07FFFDFD07
      0707FF000000FD07FFFD07FFFD07FD000000FD07FFFDFDFDFDFDFD000000FD07
      FFFFFFFFFFFDFD000000FD070707070707FDFD000000FDFDFDFDFDFDFDFDFD00
      0000}
    TabOrder = 2
    Win7ScenicRibbon = True
    ExplicitWidth = 891
    object AdvToolBarPager11: TAdvPage
      Left = -1
      Top = 53
      Width = 892
      Height = 96
      Caption = 'Home'
      object AdvRichEditorClipboardRibbonToolBar1: TAdvRichEditorClipboardRibbonToolBar
        Left = 3
        Top = 3
        Width = 102
        Height = 90
        AllowFloating = True
        AutoSize = False
        Caption = 'Clipboard'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = []
        CaptionPosition = cpBottom
        CaptionAlignment = taCenter
        CompactImageIndex = -1
        ShowCaption = True
        ShowRightHandle = False
        ShowOptionIndicator = False
        TextAutoOptionMenu = 'Add or Remove Buttons'
        TextOptionMenu = 'Options'
        ToolBarStyler = AdvToolBarOfficeStyler1
        ParentOptionPicture = True
        ToolBarIndex = 0
        Hints.CutTitle = 'Cut (Ctrl+X)'
        Hints.CutContent = 'Remove the selection to the clipboard'
        Hints.CopyTitle = 'Copy (Ctrl+C)'
        Hints.CopyContent = 'Put a copy of the selection on the clipboard'
        Hints.PasteTitle = 'Paste (Ctrl+V)'
        Hints.PasteContent = 'Add content on the clipboard to your document'
      end
      object AdvRichEditorFontRibbonToolBar1: TAdvRichEditorFontRibbonToolBar
        Left = 108
        Top = 3
        Width = 205
        Height = 90
        AllowFloating = True
        AutoPositionControls = False
        AutoSize = False
        Caption = 'Font'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = []
        CaptionPosition = cpBottom
        CaptionAlignment = taCenter
        CompactImageIndex = -1
        ShowCaption = True
        ShowRightHandle = False
        ShowOptionIndicator = False
        TextAutoOptionMenu = 'Add or Remove Buttons'
        TextOptionMenu = 'Options'
        ToolBarStyler = AdvToolBarOfficeStyler1
        ParentOptionPicture = True
        ToolBarIndex = 1
        RichEditor = AdvRichEditor1
        Hints.BoldTitle = 'Bold (Ctrl+B)'
        Hints.BoldContent = 'Select bold font style'
        Hints.ItalicTitle = 'Italic (Ctrl+I)'
        Hints.ItalicContent = 'Select italic font style'
        Hints.UnderlineTitle = 'Underline (Ctrl+U)'
        Hints.UnderlineContent = 'Select underline font style'
        Hints.StrikeThroughTitle = 'Strikethrough'
        Hints.StrikeThroughContent = 'Select strikethrough font style'
        Hints.SubScriptTitle = 'Subscript'
        Hints.SubScriptContent = 'Set subscript text'
        Hints.SuperScriptTitle = 'Superscript'
        Hints.SuperScriptContent = 'Set superscript text'
        Hints.TextColorTitle = 'Text color'
        Hints.TextColorContent = 'Set selection text color'
        Hints.BackgroundColorTitle = 'Background color'
        Hints.BackgroundColorContent = 'Set selection background color'
      end
      object AdvRichEditorParagraphRibbonToolBar1: TAdvRichEditorParagraphRibbonToolBar
        Left = 316
        Top = 3
        Width = 117
        Height = 90
        AllowFloating = True
        AutoPositionControls = False
        AutoSize = False
        Caption = 'Paragraph'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = []
        CaptionPosition = cpBottom
        CaptionAlignment = taCenter
        CompactImageIndex = -1
        ShowCaption = True
        ShowRightHandle = False
        ShowOptionIndicator = False
        TextAutoOptionMenu = 'Add or Remove Buttons'
        TextOptionMenu = 'Options'
        ToolBarStyler = AdvToolBarOfficeStyler1
        ParentOptionPicture = True
        ToolBarIndex = 2
        RichEditor = AdvRichEditor1
        Hints.BulletTitle = 'Insert bullet'
        Hints.BulletContent = 'Insert a bullet for list'
        Hints.NumberedBulletTitle = 'Start list'
        Hints.NumberedBulletContent = 'Start a numbered list'
        Hints.AlignLeftTitle = 'Align text left (Ctrl+L)'
        Hints.AlignLeftContent = 'Align the text to left'
        Hints.AlignCenterTitle = 'Align center (Ctrl+E)'
        Hints.AlignCenterContent = 'Center text'
        Hints.AlignRightTitle = 'Align text right (Ctrl+R)'
        Hints.AlignRightContent = 'Align the text to right'
        Hints.IndentTitle = 'Increase indent'
        Hints.IndentContent = 'Increase the indent level of the paragraph'
        Hints.UnIndentTitle = 'Decrease indent'
        Hints.UnIndentContent = 'Decrease the indent level of the paragraph'
      end
      object AdvRichEditorEditingRibbonToolBar1: TAdvRichEditorEditingRibbonToolBar
        Left = 436
        Top = 3
        Width = 171
        Height = 90
        AllowFloating = True
        AutoPositionControls = False
        AutoSize = False
        Caption = 'Editing'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = []
        CaptionPosition = cpBottom
        CaptionAlignment = taCenter
        CompactImageIndex = -1
        ShowCaption = True
        ShowRightHandle = False
        ShowOptionIndicator = False
        TextAutoOptionMenu = 'Add or Remove Buttons'
        TextOptionMenu = 'Options'
        ToolBarStyler = AdvToolBarOfficeStyler1
        ParentOptionPicture = True
        ToolBarIndex = 3
        Hints.FindTitle = '&Find'
        Hints.FindContent = 'Finds text in the document'
        Hints.ReplaceTitle = 'Re&place'
        Hints.ReplaceContent = 'Replaces occurrences of text'
        Hints.SelectAllTitle = 'Select All (Ctrl+A)'
        Hints.SelectAllContent = 'Selects all text in the document'
        Hints.HighlightTitle = 'Highlight'
        Hints.HighlightContent = 'Highlights text in the document'
        Options = []
      end
    end
    object AdvToolBarPager12: TAdvPage
      Left = -1
      Top = 53
      Width = 892
      Height = 96
      Caption = 'Insert'
      object AdvToolBar2: TAdvToolBar
        Left = 3
        Top = 3
        Width = 120
        Height = 90
        AllowFloating = True
        AutoSize = False
        Caption = 'Items'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = []
        CaptionPosition = cpBottom
        CaptionAlignment = taCenter
        CompactImageIndex = -1
        ShowCaption = True
        ShowRightHandle = False
        TextAutoOptionMenu = 'Add or Remove Buttons'
        TextOptionMenu = 'Options'
        ToolBarStyler = AdvToolBarOfficeStyler1
        ParentOptionPicture = True
        ToolBarIndex = 0
        object AdvGlowButton2: TAdvGlowButton
          Left = 2
          Top = 2
          Width = 40
          Height = 40
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          OfficeHint.Title = 'Insert picture'
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F4000000097048597300000EC300000EC301C76FA8640000019F494441545885
            6364400365CBA7FF47E677456632A2ABA12660A2A5E1C4001618A3A1A1E17F43
            430356DF363434FCC7264E0980D9C5822E804F310CFCFFFF9F2207353636C2D9
            2CE8718E0E689D2658082B211D7C7BB89DE1C78B13703E8784050397BC2756B5
            544F84E89633303030FC787182E1DBC3EDF47100BAE584C459D0E3949671FEEF
            E7070626760114317808E0CB6AFFD100B90E40B71CC501D4021C1216248953DD
            015CF29E1896E1CB0518D9901A71CE25EF89D342BC0EA0B48423070C786534E0
            0E20AA289EB8E90AC3DE8B4F19181818189CF5A519F2FD74E8E780E587EEC22D
            67606080B3D11D41AE23F146C1DE8B4F19961FBC83557CE2A62B582DC7264F96
            03EEBFFC8CD710644B14C579093A1217C01A05F75F7E66A85A748AA066E4E8B8
            FFF2334A28A0CB13ED80AF3FFE304CD87899E1EB8F3F041D80CD12521D81E180
            AA45A718EEBFFC4C94E5D47004860348B59C524750B5208225BC7C3F1D065D79
            219C8EA49903901D511566883577D0DC013047CCD97583A12DCE8CA023685617
            10EB088C44B8A9D69DEA8E999866459C03907B2CA3805E0000BA93E2AD94F323
            F30000000049454E44AE426082}
          Rounded = False
          TabOrder = 0
          OnClick = AdvGlowButton2Click
          Appearance.BorderColor = clWhite
          Appearance.BorderColorHot = 16248808
          Appearance.BorderColorDown = 16244937
          Appearance.BorderColorChecked = 16244937
          Appearance.BorderColorDisabled = clNone
          Appearance.ColorTo = clNone
          Appearance.ColorChecked = 16244937
          Appearance.ColorCheckedTo = clNone
          Appearance.ColorDisabled = clWhite
          Appearance.ColorDisabledTo = clWhite
          Appearance.ColorDown = 16244937
          Appearance.ColorDownTo = clNone
          Appearance.ColorHot = 16248808
          Appearance.ColorHotTo = clNone
          Appearance.ColorMirror = clWhite
          Appearance.ColorMirrorTo = clNone
          Appearance.ColorMirrorHot = 16248808
          Appearance.ColorMirrorHotTo = clNone
          Appearance.ColorMirrorDown = 16244937
          Appearance.ColorMirrorDownTo = clNone
          Appearance.ColorMirrorChecked = clNone
          Appearance.ColorMirrorCheckedTo = clNone
          Appearance.ColorMirrorDisabled = clWhite
          Appearance.ColorMirrorDisabledTo = clWhite
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
        object AdvGlowButton3: TAdvGlowButton
          Left = 42
          Top = 2
          Width = 40
          Height = 40
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          OfficeHint.Title = 'Insert hyperlink'
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F4000000097048597300000EC300000EC301C76FA86400000385494441545885
            C597BF8B244514C73F335C28EC981928D706C265D7E105CAF6469D2D1D8A81F6
            798889727B6062D0BC7EEC1FE0981908378B200606639BB8D1F682981DCC81F9
            CD808181E02C180A6D50AF767B6ABA7B6651BC2F344D57BDAAFABE9FF57AD434
            0D2F13E3977A3A70671F21558D811C8881C30E914BA006E622B2B80D81D1900B
            5435014A3B7405CC7156FB10780A3C04BE03FE0232E0AE912945A4DE8740A70B
            5475A2AA73E0C2868E44240216C0FBC0DB22F229F009F00898D9FC91C95FA8EA
            4C5527BB086C59C0CC3D032220F39AA8AA2790B5B553D51C98029188AC6D2CB3
            3D9640E2C7BBB0610163EC378F0233CE4CD3F6182232B335D3D6D81C172F00F5
            90254217D45DAC2D16625C3C74210732B39227B10412A0AD543F01552D7166CF
            3B4C9603D33E53DAF82C2468E31910D9FE5B18354DE3FDFB02B8C2F97901AC71
            D6F803F81178D3B4EA84AABE0B7C0D7C0CBC65C331CE023170D0B587AF0327B8
            34CB6C4162E319700F97662F54B5EF7C80E740037C0E7C6F637353628973C389
            3D5B04729C897D11A95B9A4D81B5889443A79B6C094CBA646D9F322430B6B43B
            C0F9B00B31034114A0E626FA43CC81030BE81B023873AF06FC7B8833E13E58D2
            5DAA7D56ACB871EF3581C9AE038682EF96725BF363E035E0957D0EF80FB020B0
            C0A82CCBAF70A9F37FE1B9885CC7C91DE077E05244922E69556D4464B4EFEE43
            F2AA5A1304F4185770A27D0FF897D83A678C6374B75DC703AC2C5577C2E4563D
            7311AE5FA8370858F1B9C215A32E2CE9CFED10312ED0BA900357E16DEA2FA3D9
            00813941E40E20A1BF68E57414BBF032521129ED3BC269740FD782FD626B6293
            9D8AC8D99EC47A71DD11591D3F01DE03BEC5997269CF47C037C04FC0AFCFC60F
            FEC6352019AE8C875803EF009F011F04732B9C25A65591AE375A3255F5FE0B1B
            921CD76846C7A7E7BEC1B8BF43B935CE254F3A48808BBB24EC88129CE937DA28
            6BBBD6AAFA3A4EF35D87832BF133E031D0E5AA0360BA41C0B44EEC7319DC5CB9
            88FC1668F3A42AD2917F8057EDFD06F0033737E9E3964CBBA938DC6ACB2D2D13
            5B78A1AAB5AA263D3F1CF3E0FBCFE3D3F306F8B92AD2AC4522F202559196ED05
            B7FA31B118682F38AA8AB4F61FC1DC5955A479B8E7F1E97909887D5E0D126811
            F1BF664F9F8D1FF405D504F8B267AE77EBBD08B43190050BDC9FD102577277E1
            B22AD2AD2CD889AA487DA09EE152C92306BEB0F750815A010FAB224D00FE01CA
            2A7DD6B7F2D9FC0000000049454E44AE426082}
          Rounded = False
          TabOrder = 1
          OnClick = AdvGlowButton3Click
          Appearance.BorderColor = clWhite
          Appearance.BorderColorHot = 16248808
          Appearance.BorderColorDown = 16244937
          Appearance.BorderColorChecked = 16244937
          Appearance.BorderColorDisabled = clNone
          Appearance.ColorTo = clNone
          Appearance.ColorChecked = 16244937
          Appearance.ColorCheckedTo = clNone
          Appearance.ColorDisabled = clWhite
          Appearance.ColorDisabledTo = clWhite
          Appearance.ColorDown = 16244937
          Appearance.ColorDownTo = clNone
          Appearance.ColorHot = 16248808
          Appearance.ColorHotTo = clNone
          Appearance.ColorMirror = clWhite
          Appearance.ColorMirrorTo = clNone
          Appearance.ColorMirrorHot = 16248808
          Appearance.ColorMirrorHotTo = clNone
          Appearance.ColorMirrorDown = 16244937
          Appearance.ColorMirrorDownTo = clNone
          Appearance.ColorMirrorChecked = clNone
          Appearance.ColorMirrorCheckedTo = clNone
          Appearance.ColorMirrorDisabled = clWhite
          Appearance.ColorMirrorDisabledTo = clWhite
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
      end
    end
  end
  object AdvRichEditor1: TAdvRichEditor
    Left = 0
    Top = 149
    Width = 890
    Height = 313
    Cursor = crIBeam
    HorzScrollBar.Tracking = True
    VertScrollBar.Range = 2
    VertScrollBar.Tracking = True
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    TabOrder = 0
    TabStop = True
    ParentFont = False
    ReadOnly = False
    Version = '1.0.0.0'
  end
  object AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler
    AppColor.AppButtonColor = 13005312
    AppColor.AppButtonHoverColor = 16755772
    AppColor.TextColor = clWhite
    AppColor.HoverColor = 16248808
    AppColor.HoverTextColor = clBlack
    AppColor.HoverBorderColor = 16371364
    AppColor.SelectedColor = 16244937
    AppColor.SelectedTextColor = clBlack
    AppColor.SelectedBorderColor = 14983778
    Style = bsWindows8
    BorderColor = clSilver
    BorderColorHot = 14731181
    ButtonAppearance.Color = 16640730
    ButtonAppearance.ColorTo = 14986888
    ButtonAppearance.ColorChecked = 9229823
    ButtonAppearance.ColorCheckedTo = 5812223
    ButtonAppearance.ColorDown = 5149182
    ButtonAppearance.ColorDownTo = 9556991
    ButtonAppearance.ColorHot = 13432063
    ButtonAppearance.ColorHotTo = 9556223
    ButtonAppearance.BorderDownColor = clNone
    ButtonAppearance.BorderHotColor = clNone
    ButtonAppearance.BorderCheckedColor = clNavy
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -12
    ButtonAppearance.CaptionFont.Name = 'Segoe UI'
    ButtonAppearance.CaptionFont.Style = []
    CaptionAppearance.CaptionColor = clHighlight
    CaptionAppearance.CaptionColorTo = clHighlight
    CaptionAppearance.CaptionBorderColor = clHighlight
    CaptionAppearance.CaptionColorHot = 13432063
    CaptionAppearance.CaptionColorHotTo = 9556223
    CaptionAppearance.CaptionTextColorHot = clBlack
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'Segoe UI'
    CaptionFont.Style = []
    ContainerAppearance.LineColor = clBtnShadow
    ContainerAppearance.Line3D = True
    Color.Color = 16250613
    Color.ColorTo = 16250613
    Color.Direction = gdVertical
    Color.Mirror.Color = 16440004
    Color.Mirror.ColorTo = 16440004
    Color.Mirror.ColorMirror = 16372409
    Color.Mirror.ColorMirrorTo = 16572878
    ColorHot.Color = 16773606
    ColorHot.ColorTo = 16444126
    ColorHot.Direction = gdVertical
    ColorHot.Mirror.Color = 16507602
    ColorHot.Mirror.ColorTo = 16507602
    ColorHot.Mirror.ColorMirror = 16506056
    ColorHot.Mirror.ColorMirrorTo = 16639959
    CompactGlowButtonAppearance.BorderColor = 14727579
    CompactGlowButtonAppearance.BorderColorHot = 10079963
    CompactGlowButtonAppearance.BorderColorDown = 4548219
    CompactGlowButtonAppearance.BorderColorChecked = clBlack
    CompactGlowButtonAppearance.Color = 15653832
    CompactGlowButtonAppearance.ColorTo = 16178633
    CompactGlowButtonAppearance.ColorChecked = 11918331
    CompactGlowButtonAppearance.ColorCheckedTo = 7915518
    CompactGlowButtonAppearance.ColorDisabled = 15921906
    CompactGlowButtonAppearance.ColorDisabledTo = 15921906
    CompactGlowButtonAppearance.ColorDown = 7778289
    CompactGlowButtonAppearance.ColorDownTo = 4296947
    CompactGlowButtonAppearance.ColorHot = 15465983
    CompactGlowButtonAppearance.ColorHotTo = 11332863
    CompactGlowButtonAppearance.ColorMirror = 15586496
    CompactGlowButtonAppearance.ColorMirrorTo = 16245200
    CompactGlowButtonAppearance.ColorMirrorHot = 5888767
    CompactGlowButtonAppearance.ColorMirrorHotTo = 10807807
    CompactGlowButtonAppearance.ColorMirrorDown = 946929
    CompactGlowButtonAppearance.ColorMirrorDownTo = 5021693
    CompactGlowButtonAppearance.ColorMirrorChecked = 10480637
    CompactGlowButtonAppearance.ColorMirrorCheckedTo = 5682430
    CompactGlowButtonAppearance.ColorMirrorDisabled = 11974326
    CompactGlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    CompactGlowButtonAppearance.GradientHot = ggVertical
    CompactGlowButtonAppearance.GradientMirrorHot = ggVertical
    CompactGlowButtonAppearance.GradientDown = ggVertical
    CompactGlowButtonAppearance.GradientMirrorDown = ggVertical
    CompactGlowButtonAppearance.GradientChecked = ggVertical
    DockColor.Color = 16250613
    DockColor.ColorTo = 16250613
    DockColor.Direction = gdHorizontal
    DockColor.Steps = 128
    FloatingWindowBorderColor = 9516288
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    GlowButtonAppearance.BorderColor = 16250613
    GlowButtonAppearance.BorderColorHot = 16371364
    GlowButtonAppearance.BorderColorDown = 14983778
    GlowButtonAppearance.BorderColorChecked = 14983778
    GlowButtonAppearance.BorderColorDisabled = 16250613
    GlowButtonAppearance.Color = 16250613
    GlowButtonAppearance.ColorTo = clNone
    GlowButtonAppearance.ColorChecked = 16244937
    GlowButtonAppearance.ColorCheckedTo = clNone
    GlowButtonAppearance.ColorDisabled = 16250613
    GlowButtonAppearance.ColorDisabledTo = clNone
    GlowButtonAppearance.ColorDown = 16244937
    GlowButtonAppearance.ColorDownTo = clNone
    GlowButtonAppearance.ColorHot = 16248808
    GlowButtonAppearance.ColorHotTo = clNone
    GlowButtonAppearance.ColorMirror = clNone
    GlowButtonAppearance.ColorMirrorTo = clNone
    GlowButtonAppearance.ColorMirrorHot = clNone
    GlowButtonAppearance.ColorMirrorHotTo = clNone
    GlowButtonAppearance.ColorMirrorDown = clNone
    GlowButtonAppearance.ColorMirrorDownTo = clNone
    GlowButtonAppearance.ColorMirrorChecked = clNone
    GlowButtonAppearance.ColorMirrorCheckedTo = clNone
    GlowButtonAppearance.ColorMirrorDisabled = clNone
    GlowButtonAppearance.ColorMirrorDisabledTo = clNone
    GlowButtonAppearance.GradientHot = ggVertical
    GlowButtonAppearance.GradientMirrorHot = ggVertical
    GlowButtonAppearance.GradientDown = ggVertical
    GlowButtonAppearance.GradientMirrorDown = ggVertical
    GlowButtonAppearance.GradientChecked = ggVertical
    GroupAppearance.Background = clInfoBk
    GroupAppearance.BorderColor = 12763842
    GroupAppearance.Color = 16640730
    GroupAppearance.ColorTo = 15851212
    GroupAppearance.ColorMirror = 15851212
    GroupAppearance.ColorMirrorTo = 16640730
    GroupAppearance.Font.Charset = DEFAULT_CHARSET
    GroupAppearance.Font.Color = clWindowText
    GroupAppearance.Font.Height = -12
    GroupAppearance.Font.Name = 'Segoe UI'
    GroupAppearance.Font.Style = []
    GroupAppearance.Gradient = ggVertical
    GroupAppearance.GradientMirror = ggVertical
    GroupAppearance.TextColor = clBlack
    GroupAppearance.CaptionAppearance.CaptionColor = 15915714
    GroupAppearance.CaptionAppearance.CaptionColorTo = 15784385
    GroupAppearance.CaptionAppearance.CaptionTextColor = clBlack
    GroupAppearance.CaptionAppearance.CaptionColorHot = 16769224
    GroupAppearance.CaptionAppearance.CaptionColorHotTo = 16772566
    GroupAppearance.CaptionAppearance.CaptionTextColorHot = clBlack
    GroupAppearance.PageAppearance.BorderColor = 12763842
    GroupAppearance.PageAppearance.Color = 14086910
    GroupAppearance.PageAppearance.ColorTo = 16382457
    GroupAppearance.PageAppearance.ColorMirror = 16382457
    GroupAppearance.PageAppearance.ColorMirrorTo = 16382457
    GroupAppearance.PageAppearance.Gradient = ggVertical
    GroupAppearance.PageAppearance.GradientMirror = ggVertical
    GroupAppearance.PageAppearance.ShadowColor = 12888726
    GroupAppearance.PageAppearance.HighLightColor = 16644558
    GroupAppearance.TabAppearance.BorderColor = clHighlight
    GroupAppearance.TabAppearance.BorderColorHot = clHighlight
    GroupAppearance.TabAppearance.BorderColorSelected = 10534860
    GroupAppearance.TabAppearance.BorderColorSelectedHot = 10534860
    GroupAppearance.TabAppearance.BorderColorDisabled = clNone
    GroupAppearance.TabAppearance.BorderColorDown = clNone
    GroupAppearance.TabAppearance.Color = clBtnFace
    GroupAppearance.TabAppearance.ColorTo = clWhite
    GroupAppearance.TabAppearance.ColorSelected = 10412027
    GroupAppearance.TabAppearance.ColorSelectedTo = 12249340
    GroupAppearance.TabAppearance.ColorDisabled = clNone
    GroupAppearance.TabAppearance.ColorDisabledTo = clNone
    GroupAppearance.TabAppearance.ColorHot = 13432063
    GroupAppearance.TabAppearance.ColorHotTo = 13432063
    GroupAppearance.TabAppearance.ColorMirror = clWhite
    GroupAppearance.TabAppearance.ColorMirrorTo = clWhite
    GroupAppearance.TabAppearance.ColorMirrorHot = 13432063
    GroupAppearance.TabAppearance.ColorMirrorHotTo = 9556223
    GroupAppearance.TabAppearance.ColorMirrorSelected = 12249340
    GroupAppearance.TabAppearance.ColorMirrorSelectedTo = 13955581
    GroupAppearance.TabAppearance.ColorMirrorDisabled = clNone
    GroupAppearance.TabAppearance.ColorMirrorDisabledTo = clNone
    GroupAppearance.TabAppearance.Font.Charset = DEFAULT_CHARSET
    GroupAppearance.TabAppearance.Font.Color = clWindowText
    GroupAppearance.TabAppearance.Font.Height = -11
    GroupAppearance.TabAppearance.Font.Name = 'Segoe UI'
    GroupAppearance.TabAppearance.Font.Style = []
    GroupAppearance.TabAppearance.Gradient = ggVertical
    GroupAppearance.TabAppearance.GradientMirror = ggVertical
    GroupAppearance.TabAppearance.GradientHot = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorHot = ggVertical
    GroupAppearance.TabAppearance.GradientSelected = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorSelected = ggVertical
    GroupAppearance.TabAppearance.GradientDisabled = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorDisabled = ggVertical
    GroupAppearance.TabAppearance.TextColor = clBlack
    GroupAppearance.TabAppearance.TextColorHot = clBlack
    GroupAppearance.TabAppearance.TextColorSelected = clBlack
    GroupAppearance.TabAppearance.TextColorDisabled = clWhite
    GroupAppearance.TabAppearance.ShadowColor = 10796223
    GroupAppearance.TabAppearance.HighLightColor = 16775871
    GroupAppearance.TabAppearance.HighLightColorHot = 16643309
    GroupAppearance.TabAppearance.HighLightColorSelected = 6540536
    GroupAppearance.TabAppearance.HighLightColorSelectedHot = 12451839
    GroupAppearance.TabAppearance.HighLightColorDown = 16776144
    GroupAppearance.ToolBarAppearance.BorderColor = 13423059
    GroupAppearance.ToolBarAppearance.BorderColorHot = 13092807
    GroupAppearance.ToolBarAppearance.Color.Color = 15530237
    GroupAppearance.ToolBarAppearance.Color.ColorTo = 16382457
    GroupAppearance.ToolBarAppearance.Color.Direction = gdHorizontal
    GroupAppearance.ToolBarAppearance.ColorHot.Color = 15660277
    GroupAppearance.ToolBarAppearance.ColorHot.ColorTo = 16645114
    GroupAppearance.ToolBarAppearance.ColorHot.Direction = gdHorizontal
    PageAppearance.BorderColor = 14922381
    PageAppearance.Color = 16440004
    PageAppearance.ColorTo = 16440004
    PageAppearance.ColorMirror = 16372409
    PageAppearance.ColorMirrorTo = 16640215
    PageAppearance.Gradient = ggVertical
    PageAppearance.GradientMirror = ggVertical
    PageAppearance.ShadowColor = 13475194
    PageAppearance.HighLightColor = 16644558
    PagerCaption.BorderColor = 15780526
    PagerCaption.Color = 14986888
    PagerCaption.ColorTo = 14986888
    PagerCaption.ColorMirror = 14986888
    PagerCaption.ColorMirrorTo = 14986888
    PagerCaption.Gradient = ggVertical
    PagerCaption.GradientMirror = ggVertical
    PagerCaption.TextColor = clGray
    PagerCaption.TextColorExtended = clBlue
    PagerCaption.Font.Charset = DEFAULT_CHARSET
    PagerCaption.Font.Color = clWindowText
    PagerCaption.Font.Height = -13
    PagerCaption.Font.Name = 'Segoe UI'
    PagerCaption.Font.Style = []
    QATAppearance.BorderColor = 9516288
    QATAppearance.Color = 16640730
    QATAppearance.ColorTo = 14986888
    QATAppearance.FullSizeBorderColor = 14986888
    QATAppearance.FullSizeColor = 14986888
    QATAppearance.FullSizeColorTo = 14986888
    RightHandleColor = 15527147
    RightHandleColorTo = 15527147
    RightHandleColorHot = 16248808
    RightHandleColorHotTo = 16248808
    RightHandleColorDown = 16244937
    RightHandleColorDownTo = 16244937
    TabAppearance.BorderColor = clNone
    TabAppearance.BorderColorHot = clHighlight
    TabAppearance.BorderColorSelected = clBlack
    TabAppearance.BorderColorSelectedHot = 6343929
    TabAppearance.BorderColorDisabled = clNone
    TabAppearance.BorderColorDown = clNone
    TabAppearance.Color = clBtnFace
    TabAppearance.ColorTo = clWhite
    TabAppearance.ColorSelected = 16571588
    TabAppearance.ColorSelectedTo = 16445929
    TabAppearance.ColorDisabled = clWhite
    TabAppearance.ColorDisabledTo = clSilver
    TabAppearance.ColorHot = 13432063
    TabAppearance.ColorHotTo = 13432063
    TabAppearance.ColorMirror = clWhite
    TabAppearance.ColorMirrorTo = clWhite
    TabAppearance.ColorMirrorHot = 13432063
    TabAppearance.ColorMirrorHotTo = 9556223
    TabAppearance.ColorMirrorSelected = 16445929
    TabAppearance.ColorMirrorSelectedTo = 16181984
    TabAppearance.ColorMirrorDisabled = clWhite
    TabAppearance.ColorMirrorDisabledTo = clSilver
    TabAppearance.Font.Charset = DEFAULT_CHARSET
    TabAppearance.Font.Color = clWindowText
    TabAppearance.Font.Height = -11
    TabAppearance.Font.Name = 'Segoe UI'
    TabAppearance.Font.Style = []
    TabAppearance.Gradient = ggVertical
    TabAppearance.GradientMirror = ggVertical
    TabAppearance.GradientHot = ggVertical
    TabAppearance.GradientMirrorHot = ggVertical
    TabAppearance.GradientSelected = ggVertical
    TabAppearance.GradientMirrorSelected = ggVertical
    TabAppearance.GradientDisabled = ggVertical
    TabAppearance.GradientMirrorDisabled = ggVertical
    TabAppearance.TextColor = clBlack
    TabAppearance.TextColorHot = clBlack
    TabAppearance.TextColorSelected = clBlack
    TabAppearance.TextColorDisabled = clGray
    TabAppearance.ShadowColor = 10708799
    TabAppearance.HighLightColor = 16775871
    TabAppearance.HighLightColorHot = 16643309
    TabAppearance.HighLightColorSelected = 6540536
    TabAppearance.HighLightColorSelectedHot = 12451839
    TabAppearance.HighLightColorDown = 16776144
    TabAppearance.BackGround.Color = 14986888
    TabAppearance.BackGround.ColorTo = 16440004
    TabAppearance.BackGround.Direction = gdHorizontal
    Left = 776
    Top = 280
  end
  object AdvOfficeHint1: TAdvOfficeHint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    HintColor = 16250613
    HintColorTo = 16250613
    HintHelpText = 'Press F1 for more help.'
    HintHelpLineColor = 15000546
    Version = '1.5.5.0'
    Left = 776
    Top = 160
  end
  object AdvFormStyler1: TAdvFormStyler
    Style = tsWindows8
    Left = 776
    Top = 216
  end
  object ActionManager1: TActionManager
    Left = 776
    Top = 336
    StyleName = 'Platform Default'
  end
end
