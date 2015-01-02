object Form1: TForm1
  Left = 220
  Top = 147
  Width = 386
  Height = 238
  Caption = 'WebUpdate demo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 112
    Top = 96
    Width = 149
    Height = 27
    Caption = 'I am version 1.0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 24
    Top = 24
    Width = 137
    Height = 25
    Caption = 'Update wizard'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 56
    Width = 137
    Height = 25
    Caption = 'Update'
    TabOrder = 1
    OnClick = Button2Click
  end
  object WebUpdateWizard1: TWebUpdateWizard
    Caption = 'Application update'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    WebUpdate = WebUpdate1
    Left = 200
    Top = 32
  end
  object WebUpdate1: TWebUpdate
    Agent = 'TWebUpdate'
    ApplyPatch = False
    DateFormat = 'dd/mm/yyyy'
    DateSeparator = '/'
    ExtractCAB = False
    ExistingConnection = False
    FTPPassive = False
    HTTPKeepAliveAuthentication = False
    KeepIntermediateFiles = False
    Logging = True
    LogFileName = 'WUPDATE.LOG'
    LastURLEntry.Save = False
    LastURLEntry.RegRoot = lurLOCALUSER
    Port = 21
    PostUpdateInfo.Enabled = False
    Signature = 'WebUpdate'
    SignatureCheck = False
    TempDirectory = '.'
    TimeFormat = 'hh:nn'
    TimeSeparator = ':'
    UpdateType = httpUpdate
    UpdateConnect = wucNoConnect
    UpdateUpdate = wuuPromptOnce
    URL = 'http://www.tmssoftware.com/wu/testapp.inf'
    UseCRC32 = False
    VersionCheck = vcUpdateOnly
    Version = '1.7.0.0'
    Left = 240
    Top = 32
  end
end
