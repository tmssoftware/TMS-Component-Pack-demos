object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'TAdvTouchKeyBoard demo'
  ClientHeight = 373
  ClientWidth = 665
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 30
    Top = 309
    Width = 146
    Height = 19
    Caption = 'Original Keyboard'
    Color = 15385507
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 309
    Width = 322
    Height = 19
    Caption = 'Original KeyBoard with custom Bitmaps'
    Color = 15385507
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 309
    Width = 144
    Height = 19
    Caption = 'Custom KeyBoard'
    Color = 15385507
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object AdvTouchKeyboard1: TAdvTouchKeyboard
    Left = 30
    Top = 103
    Width = 600
    Height = 200
    Color = clWhite
    AutoCapsDisplay = True
    HighlightCaps = clWhite
    HighlightAltGr = clWhite
    KeyboardType = ktAZERTY
    Keys = <
      item
        X = 0
        Y = 0
        Caption = #178
        ShiftCaption = #179
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 40
        Y = 0
        Caption = '&'
        ShiftCaption = '1'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 80
        Y = 0
        Caption = #233
        ShiftCaption = '2'
        AltGrCaption = '@'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 120
        Y = 0
        Caption = '"'
        ShiftCaption = '3'
        AltGrCaption = '#'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 160
        Y = 0
        Caption = #39
        ShiftCaption = '4'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 200
        Y = 0
        Caption = '('
        ShiftCaption = '5'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 240
        Y = 0
        Caption = #167
        ShiftCaption = '6'
        AltGrCaption = '^'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 280
        Y = 0
        Caption = #232
        ShiftCaption = '7'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 320
        Y = 0
        Caption = '!'
        ShiftCaption = '8'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 360
        Y = 0
        Caption = #231
        ShiftCaption = '9'
        AltGrCaption = '{'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 400
        Y = 0
        Caption = #224
        ShiftCaption = '0'
        AltGrCaption = '}'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 440
        Y = 0
        Caption = ')'
        ShiftCaption = #186
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 480
        Y = 0
        Caption = '-'
        ShiftCaption = '_'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 520
        Y = 0
        Caption = 'Backspace'
        KeyValue = 8
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 80
        SpecialKey = skBackSpace
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 0
        Y = 40
        Caption = '->'
        ShiftCaption = '<-'
        KeyValue = 9
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 60
        SpecialKey = skTab
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 60
        Y = 40
        Caption = 'A'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 100
        Y = 40
        Caption = 'Z'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 140
        Y = 40
        Caption = 'E'
        AltGrCaption = #8364
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 180
        Y = 40
        Caption = 'R'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 220
        Y = 40
        Caption = 'T'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 260
        Y = 40
        Caption = 'Y'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 300
        Y = 40
        Caption = 'U'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 340
        Y = 40
        Caption = 'I'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 380
        Y = 40
        Caption = 'O'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 420
        Y = 40
        Caption = 'P'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 460
        Y = 40
        Caption = '^'
        ShiftCaption = #168
        AltGrCaption = '['
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 500
        Y = 40
        Caption = '$'
        ShiftCaption = '*'
        AltGrCaption = ']'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 550
        Y = 40
        Caption = 'Enter'
        KeyValue = 13
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 80
        Width = 50
        SpecialKey = skReturn
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 0
        Y = 80
        Caption = 'Caps Lock'
        KeyValue = 20
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 70
        SpecialKey = skCaps
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 70
        Y = 80
        Caption = 'Q'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 110
        Y = 80
        Caption = 'S'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 150
        Y = 80
        Caption = 'D'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 190
        Y = 80
        Caption = 'F'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 230
        Y = 80
        Caption = 'G'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 270
        Y = 80
        Caption = 'H'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 310
        Y = 80
        Caption = 'J'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 350
        Y = 80
        Caption = 'K'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 390
        Y = 80
        Caption = 'L'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 430
        Y = 80
        Caption = 'M'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 470
        Y = 80
        Caption = #249
        ShiftCaption = '%'
        AltGrCaption = #180
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 510
        Y = 80
        Caption = #181
        ShiftCaption = #163
        AltGrCaption = '`'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 0
        Y = 120
        Caption = 'Shift'
        KeyValue = 160
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 50
        SpecialKey = skShift
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 50
        Y = 120
        Caption = '<'
        ShiftCaption = '>'
        AltGrCaption = '\'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 90
        Y = 120
        Caption = 'W'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 130
        Y = 120
        Caption = 'X'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 170
        Y = 120
        Caption = 'C'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 210
        Y = 120
        Caption = 'V'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 250
        Y = 120
        Caption = 'B'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 290
        Y = 120
        Caption = 'N'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 330
        Y = 120
        Caption = ';'
        ShiftCaption = '.'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 370
        Y = 120
        Caption = ';'
        ShiftCaption = ','
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 410
        Y = 120
        Caption = ':'
        ShiftCaption = '/'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 450
        Y = 120
        Caption = '='
        ShiftCaption = '+'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 490
        Y = 120
        Caption = 'Shift'
        KeyValue = 161
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 110
        SpecialKey = skShift
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 0
        Y = 160
        Caption = 'Ctrl'
        KeyValue = 162
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 60
        SpecialKey = skCtrl
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 60
        Y = 160
        Caption = 'Win'
        KeyValue = 91
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skWin
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 100
        Y = 160
        Caption = 'Alt'
        KeyValue = 18
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 60
        SpecialKey = skAlt
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 160
        Y = 160
        KeyValue = 32
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 240
        SpecialKey = skSpaceBar
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 400
        Y = 160
        Caption = 'Alt Gr'
        KeyValue = 0
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 60
        SpecialKey = skAltGr
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 460
        Y = 160
        Caption = 'Win'
        KeyValue = 92
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skWin
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 500
        Y = 160
        Caption = 'Menu'
        KeyValue = 93
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skApp
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 540
        Y = 160
        Caption = 'Ctrl'
        KeyValue = 163
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 60
        SpecialKey = skCtrl
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end>
    SmallFont.Charset = DEFAULT_CHARSET
    SmallFont.Color = clWindowText
    SmallFont.Height = -9
    SmallFont.Name = 'Tahoma'
    SmallFont.Style = []
    Version = '1.2.9.1'
  end
  object AdvTouchKeyboard2: TAdvTouchKeyboard
    Left = 32
    Top = 103
    Width = 600
    Height = 200
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Color = clWhite
    AutoCapsDisplay = True
    HighlightCaps = clWhite
    HighlightAltGr = clWhite
    KeyboardType = ktQWERTY
    Keys = <
      item
        X = 0
        Y = 0
        Caption = #186
        ShiftCaption = #170
        AltGrCaption = '\'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 40
        Y = 0
        Caption = '1'
        ShiftCaption = '!'
        AltGrCaption = '|'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 80
        Y = 0
        Caption = '2'
        ShiftCaption = '"'
        AltGrCaption = '@'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 120
        Y = 0
        Caption = '3'
        ShiftCaption = #183
        AltGrCaption = '#'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 160
        Y = 0
        Caption = '4'
        ShiftCaption = '$'
        AltGrCaption = '~'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 200
        Y = 0
        Caption = '5'
        ShiftCaption = '%'
        AltGrCaption = #8364
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 240
        Y = 0
        Caption = '6'
        ShiftCaption = '&'
        AltGrCaption = #172
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 280
        Y = 0
        Caption = '7'
        ShiftCaption = '/'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 320
        Y = 0
        Caption = '8'
        ShiftCaption = '('
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 360
        Y = 0
        Caption = '9'
        ShiftCaption = ')'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 400
        Y = 0
        Caption = '0'
        ShiftCaption = '='
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 440
        Y = 0
        Caption = #39
        ShiftCaption = '?'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 480
        Y = 0
        Caption = #161
        ShiftCaption = #191
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 520
        Y = 0
        Caption = 'Backspace'
        KeyValue = 8
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 80
        SpecialKey = skBackSpace
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 0
        Y = 40
        Caption = '->'
        ShiftCaption = '<-'
        KeyValue = 9
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 60
        SpecialKey = skTab
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 60
        Y = 40
        Caption = 'Q'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 100
        Y = 40
        Caption = 'W'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 140
        Y = 40
        Caption = 'E'
        AltGrCaption = #8364
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 180
        Y = 40
        Caption = 'R'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 220
        Y = 40
        Caption = 'T'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 260
        Y = 40
        Caption = 'Y'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 300
        Y = 40
        Caption = 'U'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 340
        Y = 40
        Caption = 'I'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 380
        Y = 40
        Caption = 'O'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 420
        Y = 40
        Caption = 'P'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 460
        Y = 40
        Caption = '`'
        ShiftCaption = '^'
        AltGrCaption = '['
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 500
        Y = 40
        Caption = '+'
        ShiftCaption = '*'
        AltGrCaption = ']'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 550
        Y = 40
        Caption = 'Enter'
        KeyValue = 13
        ShiftKeyValue = 0
        AltGrKeyValue = 0
        Height = 80
        Width = 50
        SpecialKey = skReturn
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 0
        Y = 80
        Caption = 'Caps Lock'
        KeyValue = 20
        ShiftKeyValue = 0
        AltGrKeyValue = 0
        Height = 40
        Width = 70
        SpecialKey = skCaps
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 70
        Y = 80
        Caption = 'A'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 110
        Y = 80
        Caption = 'S'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 150
        Y = 80
        Caption = 'D'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 190
        Y = 80
        Caption = 'F'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 230
        Y = 80
        Caption = 'G'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 270
        Y = 80
        Caption = 'H'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 310
        Y = 80
        Caption = 'J'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 350
        Y = 80
        Caption = 'K'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 390
        Y = 80
        Caption = 'L'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 430
        Y = 80
        Caption = #209
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 470
        Y = 80
        Caption = #180
        ShiftCaption = #168
        AltGrCaption = '{'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 510
        Y = 80
        Caption = #199
        AltGrCaption = '}'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 0
        Y = 120
        Caption = 'Shift'
        KeyValue = 160
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 50
        SpecialKey = skShift
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 50
        Y = 120
        Caption = '<'
        ShiftCaption = '>'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 90
        Y = 120
        Caption = 'Z'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 130
        Y = 120
        Caption = 'X'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 170
        Y = 120
        Caption = 'C'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 210
        Y = 120
        Caption = 'V'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 250
        Y = 120
        Caption = 'B'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 290
        Y = 120
        Caption = 'N'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 330
        Y = 120
        Caption = 'M'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 370
        Y = 120
        Caption = ','
        ShiftCaption = ';'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 410
        Y = 120
        Caption = '.'
        ShiftCaption = ':'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 450
        Y = 120
        Caption = '-'
        ShiftCaption = '_'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 490
        Y = 120
        Caption = 'Shift'
        KeyValue = 161
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 110
        SpecialKey = skShift
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 0
        Y = 160
        Caption = 'Ctrl'
        KeyValue = 162
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 60
        SpecialKey = skCtrl
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 60
        Y = 160
        Caption = 'Win'
        KeyValue = 91
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skWin
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 100
        Y = 160
        Caption = 'Alt'
        KeyValue = 18
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 60
        SpecialKey = skAlt
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 160
        Y = 160
        KeyValue = 32
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 240
        SpecialKey = skSpaceBar
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 400
        Y = 160
        Caption = 'Alt Gr'
        KeyValue = 0
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 60
        SpecialKey = skAltGr
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 460
        Y = 160
        Caption = 'Win'
        KeyValue = 92
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skWin
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 500
        Y = 160
        Caption = 'Menu'
        KeyValue = 93
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skApp
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 540
        Y = 160
        Caption = 'Ctrl'
        KeyValue = 163
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 60
        SpecialKey = skCtrl
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end>
    PictureDownState.Data = {
      F6120000424DF612000000000000360000002800000028000000280000000100
      180000000000C0120000130B0000130B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F2
      F0E0DCD8D0CAC4A99D929E908176634F7E6A55816D59816D587D685474604D9C
      8E7FA69A8ED4CEC8E8E4E1F4F2F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F2F1D8D3CDA99E918978688A756292
      7F6C927E6B927E6C8F7B68907B698F7B698D79668F7B688E7A67897561897564
      958475AA9E91D6D1CBF3F2F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFAFAF9D6D0CBAC9E9295837394816E9683718E7A67897460816C577E6853
      78624C77614B77614B76604B7B66517F6955816C5788735F8D79668D79668D7C
      69A99D90DDD9D4FCFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3AA9F92806F
      93816F9F8C7B87735F7E695478624C755F49755F49755F49755F49755F49755F
      49755F49755F49755F49755F4976604A7A644F85705C95816F8D7B678B7A69AF
      A59BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFEFDFDE4E0DD8F81728B79669B8876917D6A7A644F755F
      49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F4975
      5F49755F49755F49755F49755F4976614B84705B8F7B68816C58ADA195E7E4E2
      FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFD
      FDE2DEDA9E9081907C689D8A7787725E77614C755F49755F49755F49755F4975
      5F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49
      755F49755F49755F49755F49816B578D7966846F5D938677DFDBD7FDFDFDFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E0DC9E8E7F937F6EA0
      8D7C846F5B755F49755F49755F49755F49755F49755F49755F49755F49755F49
      755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F
      49755F49755F497B65508F7B68877260938476E7E4E1FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF8E7F708F79679F8C7B87725E755F49755F49
      755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F
      49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F4975
      5F497C67528E7A67826D5AAA9E90FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FAFAF9B2A99E8875629B8876836F5A755F49755F49755F49755F49755F49755F
      49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F4975
      5F49755F49755F49755F49755F49755F49755F49755F49755F49755F49826D59
      9582707D6852C2BAB1FCFCFBFFFFFFFFFFFFFFFFFFFFFFFFD5CFCA8E7C6C9A87
      768E7A6776604A755F49755F49755F49755F49755F49755F49755F49755F4975
      5F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49
      755F49755F49755F49755F49755F49755F49755F4976604A8C7865917D6A8574
      60DCD7D2FFFFFFFFFFFFFFFFFFF4F2F1A89B8E8D7B679D8A787A6550755F4975
      5F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49
      755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F
      49755F49755F49755F49755F49755F497A644F998675826D5AA4978AF3F1F0FF
      FFFFFFFFFFD7D2CB8F7D6B9C89778A7663755F49755F49755F49755F49755F49
      755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F
      49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F4975
      5F49755F49755F49755F498A756293806D826F5CD4CEC8FFFFFFF3F1F0A6998D
      8D78659D8B7976614B755F49755F49755F49755F49755F49755F49755F49755F
      49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F4975
      5F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49
      755F4975604A9986757F6B56A19589F3F2F1E0DCD78372609784718C7864755F
      49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F4975
      5F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49
      755F49755F49755F49755F49755F49755F49755F49755F49755F49755F498A75
      628C79658A7865E6E3E0BEB6AE806C599C8876816C57755F49755F49755F4975
      5F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49
      755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F
      49755F49755F49755F49755F49755F49755F49755F49816C5895816F7A6550D4
      CDC7A0948788735F9783717B6650755F49755F49755F49755F49755F49755F49
      755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F
      49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F4975
      5F49755F49755F49755F49755F497D685294806E7B6651B0A4998471608F7B68
      937F6C79634E755F49755F49755F49755F49755F49755F49755F49755F49755F
      49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F4975
      5F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49
      755F49755F497B6651937F6D836E5A9A8B7C705B45937F6C8E7A6777614B755F
      49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F4975
      5F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49
      755F49755F49755F49755F49755F49755F49755F49755F49755F49755F497A64
      4F917D6A88746081705D745F4994816E87725E755F49755F49755F49755F4975
      5F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49
      755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F
      49755F49755F49755F49755F49755F49755F49755F4978624C8B77648A766368
      523B75604A95816F87735F755F49755F49755F49755F49755F49755F49755F49
      755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F
      49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F4975
      5F49755F49755F49755F49755F4978624C8B77648B776469533B75604993806D
      89756175604A755F49755F49755F49755F49755F49755F49755F49755F49755F
      49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F4975
      5F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49
      755F49755F4977624C8B77648A766268523B725C46917E6B94816E79644E755F
      49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F4975
      5F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49
      755F49755F49755F49755F49755F49755F49755F49755F49755F49755F497A64
      4F927E6B87735E6750396D57428C7865927D6B79634E755F49755F49755F4975
      5F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49
      755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F
      49755F49755F49755F49755F49755F49755F49755F497A6550917E6B826D5862
      4C35806F5C86715D9A87767D6752755F49755F49755F49755F49755F49755F49
      755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F
      49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F4975
      5F49755F49755F49755F49755F497E68539785727B66508E7E6CA092837D6853
      988573826D59755F49755F49755F49755F49755F49755F49755F49755F49755F
      49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F4975
      5F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49
      755F49755F49836E59927F6C735D469D9083BEB5AC76624C917E6B8F7C69755F
      49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F4975
      5F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49
      755F49755F49755F49755F49755F49755F49755F49755F49755F49755F498F7C
      688A7662715B45CFC8C1E0DBD77C695685715D9E8B7A7B6550755F49755F4975
      5F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49
      755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F
      49755F49755F49755F49755F49755F49755F49755F4A9C89787D685285725EE6
      E2DFF3F1EF9E90817A654F95816E907C69755F49755F49755F49755F49755F49
      755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F
      49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F4975
      5F49755F49755F49755F498F7B68907D69715B44A19485F4F2F0FDFCFCC3BAB2
      75624D836E5B988573806B56755F49755F49755F49755F49755F49755F49755F
      49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F4975
      5F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49
      806B579986747B65507B6751D4CDC6FFFFFFFFFFFFE9E6E390817175604A8E7A
      67937F6C7B6651755F49755F49755F49755F49755F49755F49755F49755F4975
      5F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49
      755F49755F49755F49755F49755F49755F49755F497A644F937F6C8C78657059
      439E8F80F3F1F0FFFFFFFFFFFFFEFEFEC9C2B977634E7D6752927F6C8E7A6778
      624C755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49
      755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F
      49755F49755F49755F4978624D8D7966917E6B78634D7B6751D2CBC4FFFFFFFF
      FFFFFFFFFFFFFFFFF8F7F5A99C8E6F5942816C579784718F7B68755F49755F49
      755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F
      49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F4975
      5F4987725E9784717E69536C543CAEA194FAF9F9FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFF1EEEE897865705B457F6A569885738E7A6778624C755F49755F49755F
      49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F4975
      5F49755F49755F49755F49755F49755F49755F49755F49806B5694806D7C6852
      6C573E85725EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3DE
      DA91816F725E467F6A5695816F8E7A667E6853755F49755F49755F49755F4975
      5F49755F49755F49755F49755F49755F49755F49755F49755F49755F49755F49
      755F49755F49755F49755F497E69538D79667C67516E59428E7C6AE1DCD8FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDE0DCD7917F6F70
      5B447F6B56917D6A95816F8B77637A644F755F49755F49755F49755F49755F49
      755F49755F49755F49755F49755F49755F49755F49755F4976604A77614B846E
      5A836E5A816D5879644E6C553C8E7C6ADFDAD5FDFDFDFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDE3DEDA8975616D574079644E
      88746094816F9A867489746178624C755F49755F49755F49755F49755F49755F
      49755F49755F49755F4976604A7B65508B7864968371907C69816C56725D466A
      533A85725EE1DDD8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F0EEA89B8D77624B715A4477634D8672
      5E93806D9A877598857389746087725E806B567C67527C6752806A5687725E89
      7561998673998775917E6B826E59735D476E553F7B6751AEA194FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF8F7F5D0C8C1968775735C476F594276614A7E6A5487
      725E907C6995826F94806E93806D937F6D93806D94816E8F7B6885715D7C6751
      735E476C563F79654E9E8F7FD3CCC5FAFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFEBE7E5CBC3BBA0918177624B6B553D6D573F725B45755F49
      77614C78634E78634D76614B745E48715A436C553D6953397460499E8F7FD4CD
      C6F4F1F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF3F1EFDFDAD5CCC4BCA193847D6851654C33664E35664E36664E
      35654E34654D338E7C6AA09282CCC4BADFDAD4F3F1EFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    PictureNormalState.Data = {
      F6120000424DF612000000000000360000002800000028000000280000000100
      180000000000C0120000230B0000230B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF9F9F8D9D4
      CFB3A99FA99D919889798F7E6D8975628974608B786489766287746188756391
      8070A09284B5AAA0D8D3CEEDEBE8FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFEDEBEAC3BAB2B1A498A39485A79889AC9D8FB2
      A397B3A599B6A89CB9AC9FB9ADA0B9ADA1B7AA9EB4A79AB2A597B1A396AD9E91
      A79789A39586B5ABA0DEDAD6FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFEF
      EEECD8D3CEB9AFA59887778F7B69998675B5A698C1B3A8D1C6BDD7CEC7DED6D0
      E2DBD5E1DAD4E2DBD6E0D9D3DDD5CED5CCC3CBC0B6BCAEA19E8D7C8C78658C7B
      69ADA094C8C0B8EEECE9FDFDFDFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFF6F5F6C2BBB39A8B7B958271
      AB9A8BBBAEA2CCC1B9D3CAC2D5CCC4D7CEC7D8CFC8D9D1CAD9D1CAD9D1CAD9D1
      CBD9D1CAD8D0C9D7CFC8D6CDC6D5CDC5CEC4BCC6BBB1B1A2959B8979867461B2
      A79CF2F1EFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
      FFFFFFFFFFFFFFFFFFE8E6E3BCB3AA938170968371A89888C9BDB2D5CCC4DFD8
      D3DED8D2DDD6D0DBD4CDDAD3CCD9D1CBD9D1CAD9D1CAD9D1CAD9D1CAD9D2CBDA
      D3CCDCD4CEDED8D2E0D9D3DED6D0D0C6BEB4A5989784738C7A68A99C8FD6D2CC
      FFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E6
      E3BBB1A7917F6D95816EC2B4A8D7CEC5DFD8D2DAD3CCD9D1CAD8D0C9D8D0C9D8
      D0C9D9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD8D0C9
      D9D1CAD9D1CBDED8D2DBD3CCD4CAC1A18F7F7F6B579B8C7EDAD6D2F6F5F4FFFF
      FFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFF6F6F6BCB3A9917E6C9B8877BB
      AC9FD2C8C0DBD3CCDBD4CDD9D2CBD9D1CAD8D0C9D8D0C9D9D1CAD9D1CAD9D1CA
      D9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD8D0C9D9D1CAD9D1CADBD3
      CDDAD3CCDBD3CDC5B9AFA9998A826F5BA19487E9E6E4FFFFFFFFFFFFFFFFFFFE
      FEFEFFFFFFFFFFFFF0EEECC2BAB2907E6D927D6ABAAA9EDCD4CDDCD5CFDBD4CE
      D8D0C9D8D0C9D8D0C9D9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1
      CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD8D0C9D8D0C9D8D0C9D9D1CBDDD6D0E1
      DAD4D3C9C0978473846F5CAFA498E8E6E3FFFFFFFFFFFFFEFEFEFFFFFFFFFFFF
      D8D3CD978878917E6BBDAFA3D1C7BEDDD6D0D9D1CAD9D1CAD9D1CAD9D1CAD9D1
      CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9
      D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CADCD5CED9D1CAC6B9AE
      9D8B7A85735FBDB3A9FFFFFFFFFFFFFFFFFFFFFFFFEEECEAB7ACA28F7C69A290
      80D4CAC1DAD2CBDCD5CFD9D1CAD8D0C9D8D0C9D8D0C9D9D1CAD9D1CAD9D1CAD9
      D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CA
      D9D1CAD9D1CAD9D1CAD8D0C9D8D0C9DBD3CDDBD3CCDCD3CCB3A49785705A9C8E
      7DE0DDD8F9F8F7FFFFFFFEFEFEC2B9B192806FA08E7DC1B5A9DFD8D1DBD4CDD8
      D0C9D9D1CAD8D0C9D9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CA
      D9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1
      CAD9D1CAD9D1CAD8D0C9D9D1CAE2DCD7CCC2B8A79685877561A4998BE4E1DDFF
      FFFFF9F8F8AEA29686725EAE9F91CEC3BADBD4CDDAD2CBD9D1CAD9D1CAD9D1CA
      D9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1
      CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9
      D1CAD9D1CADED6D0D2C9C0BFB2A587745F897967D7D2CDFFFFFFD9D4CF9C8C7C
      8D7965C2B5AADBD3CDDAD2CCD9D1CAD8D0C9D9D1CAD9D1CAD9D1CAD9D1CAD9D1
      CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D0CAD9D0CAD9
      D0CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD8D0C9D9D1CADBD3CD
      DAD2CBD6CCC49582717F6B56C1B9B0EDECEBB0A59A998877A69585CEC4BBDFD8
      D2D9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9
      D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D0CAD9D0CAD9D0CAD9D1CAD9D1CA
      D9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CADBD3CDDDD5D0AD9D
      908F7B69ADA194C2BAB29F91839B8978B2A293D2C8C0DFD8D2D9D1CAD8D1CAD9
      D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CA
      D9D1CAD9D1CAD9D1CAD9D0CAD9D0CAD9D0CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1
      CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CADBD4CDDED7D1B9AB9E988574A19385A8
      9D918876649C8A78C1B3A6D5CCC4DED7D1D8D0C9D8D0C9D9D1CAD9D1CAD9D1CA
      D9D0CAD9D0CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D0CAD9D0CAD9D1
      CAD9D1CAD9D1CAD9D1CAD9D1CAD9D0CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9
      D1CAD9D1CAD8D0C9DBD3CDDDD6D0C6BAB0A494849786768F7F6D7F6C589D8B7A
      C7BAAFD5CCC4DDD6D0D9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1
      CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9
      D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CA
      DAD3CCDCD5CECBC0B7AB9B8D93817084725F7A6751A1907FCEC3B9D6CDC6DCD5
      CED9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D0CAD9D0CAD9D0CAD9
      D0CAD9D0CAD9D0CAD9D1CAD9D1CAD9D0CAD9D0CAD9D0CAD9D1CAD9D1CAD9D0CA
      D9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CADAD2CBDBD4CDD3C9
      C0B0A1948774616D57417B6751A49484D2C7BED7CEC7DBD4CDD9D1CAD9D1CAD9
      D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D0CAD9CFCAD9CFCAD9CFCAD9CFCAD9D0CA
      D9D1CAD9D1CAD9D0CAD9CFCAD9D0CAD9D0CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1
      CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CADAD2CBDBD3CDD7CEC6B3A5987F6B575E
      462E7D6953A49484D1C6BDD7CEC7DBD4CED9D1CAD9D1CAD9D1CAD9D1CAD9D1CA
      D9D1CAD9D1CAD9D1CAD9D0CAD9D0CAD9CFCAD9CFCAD9D0CAD9D1CAD9D1CAD9D0
      CAD9CFCAD9CFCAD9D0CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9
      D1CAD9D1CAD9D1CADAD2CBDBD3CDD6CDC5B3A597826E5A644C357B6650A08F7E
      CDC2B8D6CDC6DCD5CED9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D0CAD9D0CAD9D1
      CAD9D0CAD9D0CAD9CFCAD9D0CAD9D0CAD9D0CAD9D0CAD9D0CAD9CFCAD9CFCAD9
      D0CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CA
      DAD2CBDBD4CDD4CBC2B0A0927F6B56614A3179634E998675C6B9AFD5CCC4DDD6
      D0D9D1C9D9D1C9D9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D0CAD9D0CAD9
      CFCAD9CFCAD9CFCAD9CFCAD9CFCAD9CFCAD9CFCAD9CFCAD9D0CAD9D1CAD9D1CA
      D9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1C9DAD3CCDCD5CECFC4
      BBA897877D6954634C3476614C958170C3B5ABD5CCC4DED7D1D8D0C9D8D0C9D9
      D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D0CAD9D0CAD9CFCAD9CFCAD9CFCA
      D9CFCAD9CFCAD9CFCAD9CFCAD9D0CAD9D0CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1
      CAD9D1CAD9D1CAD9D1CAD9D1CAD8D0C9DBD3CCDDD6D0CBC0B6A291817E6A5568
      523B7F6C598E7B69B7A89BD3CAC2DFD9D3D8D0C9D8D0C9D9D1CAD9D1CAD9D1CA
      D9D1CAD9D1CAD9D1CAD9D0CAD9D0CAD9D0CAD9D0CAD9D0CAD9D0CAD9D0CAD9D0
      CAD9D0CAD9D0CAD9D1CAD9D1CAD9D0CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9
      D1CAD9D1CAD8D0C9DBD4CDDED7D1C0B3A895837084715E7A67539181718C7967
      A89888CDC3BADED7D1D9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1
      CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9
      D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CA
      DBD3CCDCD5CEB2A4968A77638F7E6C938374A5988A8B7966988674C4B8ADDBD3
      CDDAD2CBD9D1CAD8D0C9D9D1CAD9D1CAD9D1CAD9D1CAD9D0CAD9D1CAD9D1CAD9
      D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D0CAD9D1CAD9D1CA
      D9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD8D0C9D9D1CADAD2CCDAD2CBD7CFC7A191
      81806C569F9081B4A99ECBC4BC907F6D7D6752AC9B8DD0C6BDDCD5CFDAD3CCD8
      D0C9D9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CA
      D9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1
      CAD9D1CAD9D1CAD8D0C9D9D1CADED7D1D4CBC4C3B6AC85705C78644EBAB0A5E5
      E1DDE5E2DF9586756C543C988674C6BAB0DED7D1DBD4CDD8D0C9D9D1CAD9D1CA
      D9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1
      CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD8
      D0C9D9D1CAE1DAD5CFC5BCB1A193735B4478634ECAC2BAFFFFFFFCFCFCAA9E92
      6B543E826C58AB9C8ED4CBC3DBD3CDDDD5CFD9D1CAD8D0C9D8D0C9D8D0C9D9D1
      CAD9D1CAD9D1CAD9D1CAD9D1CAD9D0CAD9D0CAD9D0CAD9D0CAD9D1CAD9D1CAD9
      D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD8D0C9D8D0C9DBD3CCDBD4CDDED6D0
      BBACA1907B696E563F948474E0DBD7FFFFFFFFFFFFD3CDC79181717B66518975
      61B8AA9DCEC4BBDDD6D0D9D1CAD9D1CAD8D0C9D8D0C9D9D1CAD9D1CAD9D1CAD9
      D1CAD9D1CAD9D0CAD9CFCAD9CFCAD9D0CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CA
      D9D1CAD9D1CAD8D0C9D9D1CAD9D1CADBD4CDD7CEC7C8BCB2998776755E498775
      62C9C2BAF1F0EEFFFFFFFFFFFFF9F9F8B9AFA577624D6C543CA08F7EC1B4A8DC
      D5CDDBD4CDDAD3CCD8D0C9D8D0C9D9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D0CA
      D9CFCAD9CFCAD9D0CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD8D0
      C9D9D1CADCD4CEDDD5CFD2C7BEB1A2947D6751644B329E8F81F2F1EFFEFEFEFF
      FFFFFFFFFFFFFFFFE9E6E3A79A8C6E5840735D45958370C3B7ABD4CBC3DDD6CF
      DDD5CFDAD2CBD8D0CAD8D0C9D8D0C9D9D1CAD9D1CAD9D0CAD9D0CAD9D0CAD9D0
      CAD9D1CAD9D1CAD9D1CAD9D1CAD8D0C9D9D1CAD9D1CADAD3CCDBD4CDDFD8D2CE
      C3BAAE9E907B654E69533A887562D4CDC6FFFFFFFFFFFFFEFEFEFFFFFFFFFFFF
      F8F7F6E0DCD7998A796B543C78624CA08F7FC1B4A9D4CBC3DCD5CED9D1CAD9D1
      CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9D1CAD9
      D1CAD9D1CAD9D1CAD9D1CAD9D1CADBD3CCD7CFC8D4CBC4B1A2948B7763644B32
      826F5AC4BCB2F7F6F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFED4CE
      C79686766D563E6E573F9C8A79B7A99CD2C7BFDAD2CBE1DAD4DED7D1DCD5CFDA
      D2CBD9D1CBD9D1CAD9D1CAD8D1C9D9D1CAD9D1CAD9D1CADAD2CBDBD4CDDDD6D0
      E0D9D3E0D9D3DFD8D2CBC1B8B2A4977A644E644B317A6650C1B8AEEDEAE7FFFF
      FFFFFFFFFFFFFFFEFEFEFFFFFFFEFDFDFFFFFFFFFFFFFFFFFFDDD7D29F90816B
      553D745E48846E5AA79687BBADA1CDC3BAD4CBC3D6CDC6D9D1CADBD3CCDBD3CD
      DBD4CDDBD4CDDBD4CDDBD3CDDBD3CDDAD2CBD8CFC8D6CDC5CEC4BBC6BCB1B8AB
      9E9B8A797A6550674F37826E59C1B8ADFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFF
      FFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFF4F2F1DBD5D09888786D563F68513A
      826E5A958170AD9D8FC1B4A9CBBFB6D7CEC6DBD3CCDDD6CFDDD7D1DED7D1DED7
      D1DDD5CFDDD6CFD9D0C9D1C6BDC7BBB0B1A294A08F7E85715C715B44624A3088
      7662C5BBB2EDEAE7FFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFF
      FEFEFEFEFEFEFFFFFFFFFFFFFFFFFFDDD8D3B1A5998D7C6A6E5741654D347058
      418B7864988574AB9B8CB4A698BBAEA2C0B3A8C1B4A9C1B4A9BBAEA3B7AA9DAC
      9D8E9F8E7E907D6A766049674E35664F3585725E9E8F7FD4CEC7F8F6F5FFFFFF
      FFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFFFFFFFFFFFFFFFFFFFEFEFED8D2CC9B8C7D816E5B715C4577634D7B65507F
      6A55836F598974608F7A68907C698F7B688A756286715D7F6A557B6751756049
      735D4676614B958573CBC3BAF3F1EFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFF6F5F4E2DEDAD7D1CAB9AFA49D8E7F9383717F6C56745E46705941
      725A44735C45715A43715B43735D477E6A558A7866958473B1A497C8C0B7E1DD
      D8F2F0EEFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFFFFFFFFFFFF
      FFFFFFFFFFFFE8E5E1B6ABA0A49687806E586B553C61492F60472E6149305E47
      2D624B3169523A7E6A56958574AA9C8ED9D2CBFDFDFCFFFFFFFFFFFFFFFFFFFE
      FEFEFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    SmallFont.Charset = DEFAULT_CHARSET
    SmallFont.Color = clWindowText
    SmallFont.Height = -9
    SmallFont.Name = 'Tahoma'
    SmallFont.Style = []
    Version = '1.2.9.1'
  end
  object AdvTouchKeyboard3: TAdvTouchKeyboard
    Left = 126
    Top = 103
    Width = 600
    Height = 200
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Color = clWhite
    AutoCapsDisplay = True
    HighlightCaps = clRed
    HighlightAltGr = clRed
    KeyboardType = ktQWERTY
    Keys = <
      item
        X = 10
        Y = 15
        Caption = 'Q'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clNavy
        ColorDown = clWindow
        TextColor = clBlack
        TextColorDown = clWhite
        ImageIndex = -1
      end
      item
        X = 60
        Y = 10
        Caption = 'W'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 110
        Y = 8
        Caption = 'E'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 160
        Y = 6
        Caption = 'R'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 210
        Y = 6
        Caption = 'T'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 260
        Y = 8
        Caption = 'Y'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 310
        Y = 10
        Caption = 'U'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 360
        Y = 15
        Caption = 'I'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 10
        Y = 60
        Caption = 'O'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 60
        Y = 55
        Caption = 'P'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 110
        Y = 53
        Caption = 'A'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 160
        Y = 50
        Caption = 'S'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 210
        Y = 50
        Caption = 'D'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 260
        Y = 53
        Caption = 'F'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 310
        Y = 55
        Caption = 'H'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 360
        Y = 60
        Caption = 'J'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 10
        Y = 105
        Caption = 'K'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 60
        Y = 100
        Caption = 'L'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 110
        Y = 97
        Caption = '<'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 160
        Y = 95
        Caption = '^'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 210
        Y = 95
        Caption = 'Z'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 260
        Y = 97
        Caption = 'X'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 310
        Y = 100
        Caption = 'C'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 360
        Y = 105
        Caption = 'V'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 100
        Y = 150
        Caption = 'B'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skNone
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 155
        Y = 150
        Caption = 'SPACE'
        KeyValue = 32
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 100
        SpecialKey = skSpaceBar
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 340
        Y = 150
        Caption = '<-'
        KeyValue = 8
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skBackSpace
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end
      item
        X = 270
        Y = 150
        Caption = 'CAP'
        KeyValue = 20
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        Height = 40
        Width = 40
        SpecialKey = skCaps
        BorderColor = clGray
        BorderColorDown = clBlack
        Color = clSilver
        ColorDown = clGray
        TextColor = clBlack
        TextColorDown = clBlack
        ImageIndex = -1
      end>
    PictureDownState.Data = {
      8E110000424D8E11000000000000360000002800000028000000250000000100
      18000000000058110000130B0000130B00000000000000000000FF42FFFF42FF
      FF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42
      FFE2D9D0DDC1A6D6AB7DC08E54C88F4AD9A055DCA559DCA95DDDAB5FCEA05AB6
      8E50E0C190D3BD9CEBE3D7FF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FF
      FF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42
      FFFF42FFFF42FFFF42FFFF42FFFF42FFF5EEEACCA587C7834CD38039D6873ED7
      8D44D9924ADD9951E19E59E4A360E4A562E2A560E0A65DDDA75BDCA75BDCA75A
      DBA559C59454DFC29CE4DCD3FF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42
      FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF
      42FFF5EFEBD5A181CB6F33D1702CD37731D8823CDF8D48E89657EF9E64F5A571
      F9AC7DFCB187FCB186F8AB7CF4A46FEF9E63E99A5AE29953DD9A4FDA9B4FD999
      4ECF9048D2A87BE8DFD7FF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF
      42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFE0BFAEC35E27CE5F1E
      D06924D67A30DD893EE59751EEAE6EF5C68CFAD8A2FCE5B2FDECBBFDF0C0FDF1
      C2FDEDBCFCE6B4FADCA7F5C88FEEB272E59A53DE8C40D98B3DD78D41D68C42D5
      8E4BDFBFA3FF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FF
      FF42FFFF42FFFF42FFFF42FFD69577C74E13CC5717D06D21D7822FE5A155F3C7
      84FBE1A4FEE9AEFEECB7FEF0C4FEF5D2FEF8DCFEFAE1FEFAE2FEF8DCFEF5D4FE
      F1C6FEEDB9FEE9AFFCE4A8F5CE8DE7A85DD88733D3802FD48037D37C36D5986A
      F4EEE9FF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42
      FFCE744FC8440ACB5413D17322E09B49F5CB83FDDD9AFEE0A4FEEBC4FEF5E3FE
      FBF4FEFDFBFEFEFDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFCF8FEF7E9
      FEEDCBFEE2AAFDDD9AF8D38EE5A556D37C29D1762BD1722DC0723AEDE0D7FF42
      FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFCC6E4CC53A04CA5311D5
      7E2CF0BB6EFDD489FED899FEEDD2FEFBF6FEFDFAFEFEFCFEFEFDFEFEFDFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFEFEFDFEFEFEFEFEFEFEFCFAFEF0
      DCFED99FFDD388F5C67BDA8937CF6E23CF6724C56B36E9DED7FF42FFFF42FFFF
      42FFFF42FFFF42FFFF42FFC3735AC33100C94F0DDC8A39F9C97BFEC87BFEE5C2
      FEFCFAFEFDFCFEFDF9FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFDFEFEFEFEFDFCFEECD4FE
      C981FCCC7FE39949CE681DCE5D1CD38356FF42FFFF42FFFF42FFFF42FFFF42FF
      E3BAAEC33103C74509DE8D3DFCC472FEC482FEF5EBFEFDFDFEFEFDFEFEFEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFDFDFEFEFEFEFAF6FECD97FDC06E
      E7A151CC6119CA5214D89D80FF42FFFF42FFFF42FFF8F2F0BB3C15C53B04DC86
      36FCBA66FEC68DFEFCFAFEFEFDFEFEFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFDFCFEFDFDFED3AAFDB460E69B4ACA56
      13C1460DEBD8D0FF42FFFF42FFCE8E7AC43200D46E24FBB25CFEC089FEFCFBFE
      FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFEFDFDFECFA6FDAC57DD8637C8460AD58260FF
      42FFFF42FFB73B13C94A0CF4A650FEAD6BFEF9F5FEFEFEFEFEFEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFEFEFDFEFCFBFEBD8AFAA751D0621BBE3602E7D8D3DFC0B6C33200
      E18434FE9848FEEBDDFEFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFD
      FEFEFEFEF7F2FE9E57EC9541C53B04D0927FD6917CC9470BF9943EFEC196FEFE
      FEFEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFEFEFEFED9
      BEFD903CD15B18C86445D17152DC6E24FE8A3EFEF2EBFEFEFEFEFEFEFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFCFBFE9857E87E2FB1
      2C00A9320AEF7D2BFEAE7CFEFEFEFEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFDFBFEC8A7F9822EC33904B43504FC7C29
      FED5BCFEFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFBFEECE0FE782BD14F11BE430CFE7428FEEDE3FEFEFEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFEFDF9FE813DDC5513C5440DFE752EFEFCFBFEFEFEFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDF9FE9259E3
      5311C63D08FE7E3CFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDF9FE9560E64F0EC63C08FE7A38
      FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFEFDFAFE945FE64C0CBF3906FE7633FEFBFAFEFDFDFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FDFEFDF9FE935EE3480AD86D45FE6823FEEEE6FEFEFEFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFCFEFCFBFE7B3ED3
      3F06C56E52FC5B13FED3BDFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFDFEECE2FE641FCE562DD6A799F04D0B
      FEA278FEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFEFEFDFEFEFEFEC3A7FA540ECD7F65F6F0EECD3A04FE6C2CFEEFE8FEFE
      FEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFDFEFA
      F8FE844EE64407DEC1B9FF42FFCD775CF74F0CFEB28FFEFDFDFEFDFCFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFEFDFDFED1BCFD5713CE572EFF
      42FFFF42FFE9D9D5DF4D19FD6526FEE5D9FEFEFEFEFEFDFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFEFEFEFEFEFEFEF4EFFE7A42E64205E3BDB2FF42FFFF42FFFF42FF
      E2A794EE4606FE8653FEF4F0FEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFEFDFD
      FEFAF9FEA47CF64A09CC6C4CFF42FFFF42FFFF42FFFF42FFFF42FFD06946F64A
      09FE9E75FEF8F5FEFEFEFEFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFDFDFEFCFBFEBA9CFB5110CE49
      1CF7EFEDFF42FFFF42FFFF42FFFF42FFFF42FFEEE4E2D96944F84C0CFEA179FE
      F6F2FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFEFEFEFEFEFEFEFEFEFEFAF9FEBA9DFB5212D94C1DF2DCD5FF42FFFF42FFFF
      42FFFF42FFFF42FFFF42FFFF42FFE6D7D3C44F28F54808FE8C5DFEEBE2FEFDFD
      FEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFDFCFEFDFDFE
      F3EEFEA37DF94D0ED84B1CF2DAD3FF42FFFF42FFFF42FFFF42FFFF42FFFF42FF
      FF42FFFF42FFFF42FFFF42FFCA6A4AEA3F04FD6930FEC7AFFEF8F5FEFEFEFEFD
      FDFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFEFEFEFEFDFDFEFDFDFEFDFDFEFBF9FED7C6FE7A47F24305C75029
      EED9D3FF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42
      FFFF42FFFF42FFD49D8DD54313F6490BFE7F4FFECEBAFEF6F3FEFDFDFEFDFDFE
      FEFEFEFDFDFEFEFEFEFEFDFEFEFDFEFEFCFEFEFCFEFDFAFEFEFDFEFDFDFEFDFD
      FEFEFEFEF9F6FEDCCDFE9268FA5013D63702D48A73FF42FFFF42FFFF42FFFF42
      FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF
      42FFF7EDEADA8B72DB4411F4470AFD703BFEAB8AFEDBCCFEF5F0FEFBF9FEFEFE
      FEFEFDFEFDFDFEFDFCFEFDFCFEFDFDFEFBFAFEF6F2FEE4D8FEB597FE7B4AF84D
      10DC3902D27153E5CEC7FF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF
      42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FF
      F5EBE8DEA28FCC4D24E23A02F3460AFD5D22FE7C4CFE946AFEA582FEAC8CFEAC
      8CFEA887FE976FFE8254FD642CF6490DE63C02D75125D98D75E5D0CAFF42FFFF
      42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FF
      FF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42
      FFF5E7E3E6B4A5CF7356E0734FC73101D73701DE3801DE3901D83701D03401E3
      744FD57153DAA08EE9D0C9FF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FF
      FF42FFFF42FFFF42FFFF42FFFF42FFFF42FF}
    PictureNormalState.Data = {
      8E110000424D8E11000000000000360000002800000028000000250000000100
      18000000000058110000130B0000130B00000000000000000000FF42FFFF42FF
      FF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42
      FFD5D5DEB3B3D09292C26C6CA96868AA7A7AB47F7FB78181B98282BA7676B260
      60A6A4A4CCA4A4CADADAE7FF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FF
      FF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42
      FFFF42FFFF42FFFF42FFFF42FFFF42FFEDEDF29B9BB86E6EA76464A86969AB6E
      6EAE7373B17A7AB48181B98888BC8989BD8686BC8484BA8080B88080B87F7FB7
      7D7DB76C6CADABABD0D6D6E1FF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42
      FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF
      42FFEEEEF29B9BBA61619E5C5CA25F5FA56969AB7676B28585BB9292C29D9DC9
      A8A8CEB1B1D3AFAFD3A6A6CE9C9CC89191C18888BC7F7FB77878B47777B37676
      B26B6BAD9090BEDBDBE4FF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF
      42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFBFBFCF5A5A90565696
      59599B6060A66E6EAE7F7FB79797C5AFAFD3C0C0DCCBCBE3D2D2E6D6D6E8D7D7
      E9D3D3E7CDCDE3C4C4DEB1B1D39A9AC68080B86F6FAF6A6AAC6B6BAD6B6BAD71
      71B0B3B3CFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FF
      FF42FFFF42FFFF42FFFF42FF9898B54F4F8B53539158589A6060A68181B9A9A9
      CFC2C2DECACAE2D0D0E6D8D8EAE1E1EFE7E7F3EBEBF5EBEBF5E7E7F3E2E2F0D9
      D9EBD2D2E6CBCBE3C5C5DFAFAFD38888BC6464A85D5DA56464A86363A78888B7
      ECECF1FF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42
      FF7C7CA04C4C8651518D59599B7777B3A9A9CFBDBDDBC4C4DED8D8EAEDEDF5F7
      F7FBFCFCFEFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFF9F9FDF0F0F8
      DDDDEDC8C8E0BDBDDBB2B2D48282BA5B5BA15B5BA15C5CA2636398DEDEE6FF42
      FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FF7B7B9E49498150508C5D
      5DA59898C6B2B2D4BDBDDBE1E1EFF8F8FCFBFBFDFCFCFEFDFDFFFDFDFFFDFDFF
      FDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFBFBFDE7E7
      F3C1C1DDB2B2D4A4A4CC6868AA58589A59599B636398DDDDE3FF42FFFF42FFFF
      42FFFF42FFFF42FFFF42FF81819D47477D4E4E886A6AACA6A6CEAAAAD0D7D7E9
      FBFBFDFCFCFEFBFBFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFDFDFFFDFDFFFDFDFFFCFCFEE2E2F0AE
      AED2ABABD17878B45656965555957F7FAAFF42FFFF42FFFF42FFFF42FFFF42FF
      C1C1D048487E4C4C846E6EAEA2A2CCAEAED2F2F2F8FDFDFFFDFDFFFDFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFDFDFFFDFDFFF8F8FCBCBCDAA1A1CB
      8080B853539351518D9E9EBAFF42FFFF42FFFF42FFFF42FF52527F4949816868
      AA9B9BC7B6B6D6FBFBFDFDFDFFFDFDFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFCFCFEFDFDFFC8C8E09898C67B7BB55151
      8D4C4C83DADAE1FF42FFFF42FF9999B047477D5A5A9E9494C4B3B3D5FCFCFEFD
      FDFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFDFDFFFDFDFFC5C5DF9292C26969AB4C4C868989ACFF
      42FFFF42FF4F4F7C4E4E888888BCA0A0CAF8F8FCFDFDFFFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFDFFFDFDFFFCFCFEB3B3D58D8DBF56569646467ADADAE0C5C5D047477D
      6A6AAC8989BDE9E9F3FDFDFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFF
      FDFDFFF6F6FA9393C37A7AB44949819D9DB39D9DB64D4D878080B8BBBBD9FDFD
      FFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFDFDFFD4D4
      E88181B95555957474998080A35C5CA48282BAF2F2F8FDFDFFFDFDFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFCFCFE9393C36B6BAD41
      41714444706D6DADAAAAD0FDFDFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFDFDFFFCFCFEC6C6E07676B249497F4343757474B2
      D3D3E7FDFDFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFCFCFEEAEAF47777B35252904949817474B2EDEDF5FDFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
      FFFBFBFD8282BA5757994C4C867878B4FCFCFEFDFDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFD9494C459
      599B4B4B838181B9FDFDFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFD9898C659599B4B4B837F7FB7
      FDFDFFFDFDFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFBFBFD9898C658589A48487E7C7CB6FBFBFDFDFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
      FFFBFBFD9797C55656987A7AA47272B0EEEEF6FDFDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFEFCFCFE8282BA4F
      4F8B7C7C9B6666AAD4D4E8FDFDFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFDFDFFFDFDFFEBEBF56F6FAF676794AFAFC05B5BA1
      A8A8CEFDFDFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFDFDFFFDFDFFC6C6E06161A78B8BA7FF42FF4C4C867777B3EFEFF7FDFD
      FFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFDFDFFF9F9
      FD8D8DBF565698C6C6D0FF42FF8585A45F5FA5B7B7D7FDFDFFFCFCFEFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFDFDFFD3D3E76666AA676794FF
      42FFFF42FFDCDCE25F5F987373B1E6E6F2FDFDFFFDFDFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFDFDFFFDFDFFF4F4FA8585BB565696C4C4D1FF42FFFF42FFFF42FF
      B1B1C659599B9191C1F4F4FAFDFDFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFDFDFF
      FBFBFDAAAAD05C5CA47A7A9DFF42FFFF42FFFF42FFFF42FFFF42FF78789E5C5C
      A4A6A6CEF8F8FCFDFDFFFCFCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFDFDFFFCFCFEBFBFDB6464A85C5C
      8EFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFE6E6EA7A7AA35F5FA5A9A9CFF6
      F6FAFDFDFFFDFDFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFDFDFFFDFDFFFDFDFFFBFBFDC0C0DC6565A9616196E0E0E7FF42FFFF42FFFF
      42FFFF42FFFF42FFFF42FFFF42FFDADADF61618B5C5CA29797C5EBEBF5FDFDFF
      FDFDFFFDFDFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFDFDFFFCFCFEFDFDFFF3
      F3F9ABABD16161A7606094DEDEE7FF42FFFF42FFFF42FFFF42FFFF42FFFF42FF
      FF42FFFF42FFFF42FFFF42FF79799C5656987A7AB4CBCBE3F8F8FCFDFDFFFDFD
      FFFDFDFFFDFDFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFDFDFFFDFDFFFDFDFFFDFDFFFBFBFDD9D9EB8989BD5A5A9E62628E
      DDDDE4FF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42
      FFFF42FFFF42FFA7A7BA5A5A8F5D5DA58E8EC0D2D2E6F7F7FBFDFDFFFDFDFFFD
      FDFFFDFDFFFDFDFFFDFDFFFDFDFFFCFCFEFCFCFEFBFBFDFDFDFFFDFDFFFDFDFF
      FDFDFFF8F8FCDFDFED9D9DC96565A94E4E8A9696B0FF42FFFF42FFFF42FFFF42
      FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF
      42FFEFEFF29898B45A5A925C5CA28080B8B3B3D5DDDDEDF4F4FAFBFBFDFDFDFF
      FDFDFFFDFDFFFCFCFEFCFCFEFDFDFFFBFBFDF6F6FAE5E5F1BCBCDA8A8ABE6161
      A751518D8181A4D2D2DAFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF
      42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FF
      EDEDF0ACACC261618F5353915C5CA27171AF8B8BBF9F9FC9AEAED2B4B4D6B4B4
      D6B2B2D4A2A2CC9191C17777B35F5FA55454946565979999B4D4D4DBFF42FFFF
      42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FF
      FF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42
      FFEAEAEEBDBDCE8282A38383AB49497F4E4E8A51518F51518F4F4F8B4C4C8685
      85AE8282A5AAAABED5D5DEFF42FFFF42FFFF42FFFF42FFFF42FFFF42FFFF42FF
      FF42FFFF42FFFF42FFFF42FFFF42FFFF42FF}
    SmallFont.Charset = DEFAULT_CHARSET
    SmallFont.Color = clRed
    SmallFont.Height = -8
    SmallFont.Name = 'Tahoma'
    SmallFont.Style = [fsBold]
    Version = '1.2.9.1'
  end
  object Memo1: TMemo
    Left = 32
    Top = 8
    Width = 600
    Height = 89
    BevelInner = bvSpace
    BevelKind = bkFlat
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 30
    Top = 334
    Width = 311
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 4
    Text = 'Original keyboard layout'
    OnChange = ComboBox1Change
    Items.Strings = (
      'Original keyboard layout'
      'Original keyboard layout with custom bitmap images'
      'Custom keyboard layout with custom bitmap images')
  end
  object CheckBox1: TCheckBox
    Left = 362
    Top = 315
    Width = 239
    Height = 17
    Caption = 'Show uppercase/lowercase characters'
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = CheckBox1Click
  end
  object CheckBox2: TCheckBox
    Left = 362
    Top = 338
    Width = 295
    Height = 17
    Caption = 'Highlight uppercase/lowercase on multi character keys'
    Checked = True
    State = cbChecked
    TabOrder = 6
    OnClick = CheckBox2Click
  end
end
