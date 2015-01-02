object Form132: TForm132
  Left = 0
  Top = 0
  Caption = 'Demo ImageListBox as PictureDialog'
  ClientHeight = 418
  ClientWidth = 375
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    375
    418)
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 17
    Top = 360
    Width = 342
    Height = 41
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'Select image'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 16
    Top = 16
    Width = 343
    Height = 338
    Anchors = [akLeft, akTop, akRight, akBottom]
    BorderStyle = bsSingle
    TabOrder = 1
    object Image1: TImage
      Left = 1
      Top = 1
      Width = 337
      Height = 332
      Align = alClient
      Center = True
      Proportional = True
      Stretch = True
    end
  end
end
