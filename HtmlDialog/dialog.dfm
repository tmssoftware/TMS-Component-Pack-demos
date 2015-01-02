object Form1: TForm1
  Left = 805
  Top = 367
  Caption = 'THTMLDialog demo'
  ClientHeight = 233
  ClientWidth = 434
  Color = 15385507
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblProvider: TLabel
    Left = 8
    Top = 8
    Width = 174
    Height = 13
    Caption = 'THTMLDialog demo by TMS software'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object label1: TLabel
    Left = 128
    Top = 41
    Width = 184
    Height = 13
    Caption = 'Create a colorful HTMLDialog with text'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = -64
    Top = 208
    Width = 570
    Height = 13
    Caption = 
      '________________________________________________________________' +
      '_______________________________'
  end
  object Label3: TLabel
    Left = 128
    Top = 57
    Width = 196
    Height = 13
    Caption = 'shadow, background color and font color'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 128
    Top = 89
    Width = 202
    Height = 13
    Caption = 'HTML support makes it easy to create lists'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 128
    Top = 121
    Width = 171
    Height = 13
    Caption = 'Anchors to websites, email, folders '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 128
    Top = 137
    Width = 148
    Height = 13
    Caption = 'or custom actions are provided'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 128
    Top = 161
    Width = 154
    Height = 13
    Caption = 'Add images to your HTMLDialog '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 8
    Top = 200
    Width = 137
    Height = 13
    Cursor = crHandPoint
    Caption = 'http://www.tmssoftware.com'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = Label8Click
  end
  object btnTry1: TButton
    Left = 8
    Top = 32
    Width = 75
    Height = 33
    Caption = 'Show'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnTry1Click
  end
  object btnTry2: TButton
    Left = 8
    Top = 72
    Width = 75
    Height = 33
    Caption = 'Show'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnTry2Click
  end
  object btnTry3: TButton
    Left = 8
    Top = 112
    Width = 75
    Height = 33
    Caption = 'Show'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnTry3Click
  end
  object btnTry4: TButton
    Left = 8
    Top = 152
    Width = 75
    Height = 33
    Caption = 'Show'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnTry4Click
  end
  object HTMLDialog1: THTMLDialog
    CenterButton.Cancel = False
    CenterButton.Caption = 'Ok'
    CenterButton.Default = True
    CenterButton.ModalResult = 1
    CenterButton.Visible = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Height = 120
    Hover = False
    HoverColor = clNone
    HoverFontColor = clNone
    HTMLText.Strings = (
      
        '<FONT face="Tahoma" size="11">Create a </FONT><FONT face="Tahoma' +
        '" size="11" color="clgreen">co</FONT><FONT face="Tahoma" size="1' +
        '1" color="clred">lor</FONT><FONT face="Tahoma" size="11" color="' +
        'clblue">ful </FONT>'
      ''
      '<FONT face="Tahoma" size="11" color="clblue">H</FONT>'
      '<FONT face="Tahoma" size="11" color="clorange">T</FONT>'
      '<FONT face="Tahoma" size="11" color="clred">M</FONT>'
      '<FONT face="Tahoma" size="11" color="clgreen">L</FONT>'
      '<FONT face="Tahoma" size="11" color="clpurple">D</FONT>'
      '<FONT face="Tahoma" size="11" color="clpurple">I</FONT>'
      '<FONT face="Tahoma" size="11" color="clgreen">A</FONT>'
      '<FONT face="Tahoma" size="11" color="clred">L</FONT>'
      '<FONT face="Tahoma" size="11" color="clorange">O</FONT>'
      '<FONT face="Tahoma" size="11" color="clblue">G </FONT>'
      ''
      ''
      ''
      '<FONT face="Tahoma" size="11">'
      'with text'
      '</FONT> '
      
        '<FONT face="Tahoma" size="11"><shad>shadow</shad></FONT>, <FONT ' +
        'face="Tahoma" size="11" bgcolor="clred">background</FONT> <FONT ' +
        'face="Tahoma" size="11">color and <FONT  face="Tahoma" size="11"' +
        ' color="clpurple">font</FONT><FONT face="Tahoma" size="11"> colo' +
        'r</FONT>')
    LeftButton.Cancel = False
    LeftButton.Default = False
    LeftButton.ModalResult = 0
    LeftButton.Visible = False
    Position = poScreenCenter
    RightButton.Cancel = True
    RightButton.Caption = 'Cancel'
    RightButton.Default = False
    RightButton.ModalResult = 2
    RightButton.Visible = True
    Width = 250
    Version = '1.0.0.0'
    Left = 360
    Top = 32
  end
  object HTMLDialog2: THTMLDialog
    CenterButton.Cancel = False
    CenterButton.Caption = 'Ok'
    CenterButton.Default = True
    CenterButton.ModalResult = 1
    CenterButton.Visible = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Height = 300
    Hover = False
    HoverColor = clNone
    HoverFontColor = clNone
    HTMLText.Strings = (
      '<P align="center"><FONT size="11" face="Tahoma">'
      '<ul>'
      '<li><FONT size="11" face="Tahoma" color="clred">'
      'HTML</FONT></li>'
      '<ul> '
      '<li>support</li> '
      '</ul>'
      '</ul>'
      '<ul>'
      
        '<li><FONT size="11" face="Tahoma" color="clred">makes</FONT></li' +
        '>'
      '<ul>'
      '<li>it</li>'
      '</ul>'
      '</ul>'
      '<ul>'
      
        '<li><FONT size="11" face="Tahoma" color="clred">easy</FONT></li>' +
        ' '
      '<ul>'
      '<li>to</li>'
      '</ul>'
      '</ul>'
      '<ul> '
      
        '<li><FONT size="11" face="Tahoma" color="clred">create</FONT></l' +
        'i>'
      '<ul>'
      '<li>lists</li>'
      '</ul>'
      '</ul> '
      '</FONT>'
      '</p>')
    LeftButton.Cancel = False
    LeftButton.Default = False
    LeftButton.ModalResult = 0
    LeftButton.Visible = False
    Position = poScreenCenter
    RightButton.Cancel = True
    RightButton.Caption = 'Cancel'
    RightButton.Default = False
    RightButton.ModalResult = 2
    RightButton.Visible = True
    Width = 200
    Version = '1.0.0.0'
    Left = 360
    Top = 72
  end
  object HTMLDialog3: THTMLDialog
    CenterButton.Cancel = False
    CenterButton.Caption = 'Ok'
    CenterButton.Default = True
    CenterButton.ModalResult = 1
    CenterButton.Visible = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Height = 80
    Hover = False
    HoverColor = clNone
    HoverFontColor = clNone
    HTMLText.Strings = (
      
        '<FONT face="Tahoma" size="11">Anchors to <a href="http://www.tms' +
        'software.com" >websites</a>,<a href="mailto:info@tmssoftware.com' +
        '">email</a>,<a href="file://C:\">folders</a> or custom actions a' +
        're provided</FONT>')
    LeftButton.Cancel = False
    LeftButton.Default = False
    LeftButton.ModalResult = 0
    LeftButton.Visible = False
    Position = poScreenCenter
    RightButton.Cancel = True
    RightButton.Caption = 'Cancel'
    RightButton.Default = False
    RightButton.ModalResult = 2
    RightButton.Visible = True
    Width = 250
    Version = '1.0.0.0'
    Left = 360
    Top = 112
  end
  object HTMLDialog4: THTMLDialog
    CenterButton.Cancel = False
    CenterButton.Caption = 'Ok'
    CenterButton.Default = True
    CenterButton.ModalResult = 1
    CenterButton.Visible = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Height = 550
    Hover = True
    HoverColor = clNone
    HoverFontColor = clNone
    HTMLText.Strings = (
      
        '<IMG src="file://.\wi0064-48.gif">  <IMG src="file://.\bundle_25' +
        '6.gif"><br /><br />'
      
        '<IMG src="file://.\ei0021-48.gif">   <IMG src="file://.\books_25' +
        '6.gif">')
    LeftButton.Cancel = False
    LeftButton.Default = False
    LeftButton.ModalResult = 0
    LeftButton.Visible = False
    Position = poScreenCenter
    RightButton.Cancel = True
    RightButton.Caption = 'Cancel'
    RightButton.Default = False
    RightButton.ModalResult = 2
    RightButton.Visible = True
    Width = 400
    Version = '1.0.0.0'
    Left = 360
    Top = 152
  end
end
