object Form1: TForm1
  Left = 410
  Top = 172
  Width = 728
  Height = 567
  Caption = 'AdvMemo with Addict Spell checker'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object AdvMemo1: TAdvMemo
    Left = 8
    Top = 40
    Width = 697
    Height = 481
    Cursor = crIBeam
    ActiveLineSettings.ShowActiveLine = False
    ActiveLineSettings.ShowActiveLineIndicator = False
    AutoCompletion.Font.Charset = DEFAULT_CHARSET
    AutoCompletion.Font.Color = clWindowText
    AutoCompletion.Font.Height = -11
    AutoCompletion.Font.Name = 'MS Sans Serif'
    AutoCompletion.Font.Style = []
    AutoCorrect.Active = True
    AutoHintParameterPosition = hpBelowCode
    BorderStyle = bsSingle
    Ctl3D = False
    DelErase = True
    EnhancedHomeKey = False
    Gutter.DigitCount = 4
    Gutter.Font.Charset = DEFAULT_CHARSET
    Gutter.Font.Color = clWindowText
    Gutter.Font.Height = -13
    Gutter.Font.Name = 'Courier New'
    Gutter.Font.Style = []
    Gutter.LineNumberStart = 1
    Gutter.LineNumberTextColor = clBlack
    Gutter.ShowLineNumbers = True
    Gutter.Visible = True
    Gutter.ShowLeadingZeros = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'COURIER NEW'
    Font.Style = []
    HiddenCaret = False
    Lines.Strings = (
      '')
    MarkerList.UseDefaultMarkerImageIndex = False
    MarkerList.DefaultMarkerImageIndex = -1
    MarkerList.ImageTransparentColor = 33554432
    MemoChecker = AdvMemoAddictChecker1
    PrintOptions.MarginLeft = 0
    PrintOptions.MarginRight = 0
    PrintOptions.MarginTop = 0
    PrintOptions.MarginBottom = 0
    PrintOptions.PageNr = False
    PrintOptions.PrintLineNumbers = False
    RightMarginColor = 14869218
    ScrollHint = False
    SelColor = clWhite
    SelBkColor = clNavy
    ShowRightMargin = False
    SmartTabs = False
    TabOrder = 0
    TabSize = 4
    TabStop = True
    TrimTrailingSpaces = False
    UndoLimit = 100
    UrlStyle.TextColor = clBlue
    UrlStyle.BkColor = clWhite
    UrlStyle.Style = [fsUnderline]
    UseStyler = True
    Version = '1.6.0.0'
    WordWrap = wwNone
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 129
    Height = 25
    Caption = 'Show spell errors'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 144
    Top = 8
    Width = 123
    Height = 25
    Caption = 'Correct spell errors'
    TabOrder = 2
    OnClick = Button2Click
  end
  object CheckBox1: TCheckBox
    Left = 328
    Top = 16
    Width = 97
    Height = 17
    Caption = 'Autoc orrect while typing'
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = CheckBox1Click
  end
  object AddictSpell: TAddictSpell3
    ConfigStorage = csRegistry
    ConfigID = '%UserName%'
    ConfigFilename = '%AppDir%\Spell.cfg'
    ConfigRegistryKey = 'Software\Addictive Software\%AppName%'
    ConfigDictionaryDir.Strings = (
      '%AppDir%'
      'C:\program files\Addict3\Dictionaries')
    ConfigAvailableOptions = [soLiveSpelling, soLiveCorrect, soUpcase, soNumbers, soHTML, soInternet, soAbbreviations, soPrimaryOnly, soRepeated]
    ConfigUseMSWordCustom = True
    ConfigDefaultMain.Strings = (
      'American.adm')
    ConfigDefaultActiveCustom = '%ConfigID%.adu'
    ConfigDefaultOptions = [soLiveSpelling, soLiveCorrect, soInternet, soAbbreviations, soRepeated]
    ConfigDefaultUseMSWordCustom = False
    SuggestionsAutoReplace = False
    SuggestionsLearning = True
    SuggestionsLearningDict = '%AppDir%\%UserName%_sp.adl'
    QuoteChars = '>'
    DialogInitialPos = ipLastUserPos
    DialogSelectionAvoid = saAvoid
    DialogShowImmediate = False
    DialogShowModal = False
    EndMessage = emNever
    EndCursorPosition = epOriginal
    EndMessageWordCount = False
    MaxUndo = -1
    MaxSuggestions = -1
    KeepDictionariesActive = False
    SynchronousCheck = True
    UseHourglassCursor = True
    CommandsVisible = [sdcIgnore, sdcIgnoreAll, sdcChange, sdcChangeAll, sdcAdd, sdcAutoCorrect, sdcUndo, sdcHelp, sdcCancel, sdcOptions, sdcCustomDictionary, sdcCustomDictionaries, sdcConfigOK, sdcAddedEdit, sdcAutoCorrectEdit, sdcExcludedEdit, sdcInternalEdit, sdcMainDictFolderBrowse]
    CommandsEnabled = [sdcIgnore, sdcIgnoreAll, sdcChange, sdcChangeAll, sdcAdd, sdcAutoCorrect, sdcUndo, sdcHelp, sdcCancel, sdcOptions, sdcCustomDictionary, sdcCustomDictionaries, sdcConfigOK, sdcAddedEdit, sdcAutoCorrectEdit, sdcExcludedEdit, sdcInternalEdit, sdcMainDictFolderBrowse]
    PhoneticSuggestions = True
    PhoneticMaxDistance = 4
    PhoneticDivisor = 2
    PhoneticDepth = 2
    MappingAutoReplace = True
    UseExcludeWords = True
    UseAutoCorrectFirst = False
    RecheckReplacedWords = True
    ResumeFromLastPosition = True
    AllowedCases = cmInitialCapsOrUpcase
    UILanguage = ltEnglish
    UIType = suiDialog
    UILanguageFontControls.Charset = DEFAULT_CHARSET
    UILanguageFontControls.Color = clWindowText
    UILanguageFontControls.Height = -11
    UILanguageFontControls.Name = 'MS Sans Serif'
    UILanguageFontControls.Style = []
    UILanguageFontText.Charset = DEFAULT_CHARSET
    UILanguageFontText.Color = clWindowText
    UILanguageFontText.Height = -11
    UILanguageFontText.Name = 'MS Sans Serif'
    UILanguageFontText.Style = []
    UILanguageUseFonts = False
    Left = 628
    Top = 8
  end
  object Thesaurus: TThesaurus3
    Filename = 'c:\delphi6\addict3\.Dictionaries\Roget.adt'
    SortedLists = False
    DoubleClickAction = dcaLookup
    UILanguage = ltEnglish
    CommandsEnabled = [tdcLookedUp, tdcPrevious, tdcLookup, tdcReplace, tdcClose]
    CommandsVisible = [tdcLookedUp, tdcPrevious, tdcLookup, tdcReplace, tdcClose]
    HelpCtxThesaurusDialog = 0
    Left = 596
    Top = 8
  end
  object AdvMemoAddictChecker1: TAdvMemoAddictChecker
    AutoCorrectType = acWordCorrect
    AddictSpell = AddictSpell
    ShowDialog = True
    Left = 672
    Top = 8
  end
end
