object Form1: TForm1
  Left = 189
  Top = 146
  Caption = 'TMS software Thumbnail demo application'
  ClientHeight = 369
  ClientWidth = 688
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
    Left = 352
    Top = 32
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 352
    Top = 8
    Width = 76
    Height = 13
    Caption = 'Selected image:'
  end
  object DriveComboBox1: TDriveComboBox
    Left = 8
    Top = 8
    Width = 145
    Height = 19
    DirList = dlb
    TabOrder = 0
  end
  object dlb: TDirectoryListBox
    Left = 7
    Top = 33
    Width = 145
    Height = 229
    ItemHeight = 16
    TabOrder = 1
    OnDblClick = dlbDblClick
  end
  object tl: TThumbnailList
    Left = 184
    Top = 8
    Width = 161
    Height = 353
    ScrollStyle = ssNormal
    ScrollColor = clBlack
    ScrollWidth = 16
    ShowSelection = False
    TabOrder = 2
    Thumbnails = <>
    ThumbnailSize = 64
    OnClick = tlClick
    Version = '1.1.0.2'
  end
  object Button1: TButton
    Left = 7
    Top = 267
    Width = 146
    Height = 25
    Caption = 'Show all images in folder'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 298
    Width = 144
    Height = 25
    Caption = 'Show single image'
    TabOrder = 4
    OnClick = Button2Click
  end
end
