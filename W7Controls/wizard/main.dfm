object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'TMS W7 Controls: Wizard'
  ClientHeight = 521
  ClientWidth = 734
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
  object W7LeftPanel1: TW7LeftPanel
    Left = 0
    Top = 0
    Width = 200
    Height = 477
    Version = '1.0.2.0'
    Align = alLeft
    ParentFont = False
    TabOrder = 0
    object StepButton1: TW7ToolButton
      Left = 14
      Top = 22
      Width = 170
      Height = 24
      Version = '1.0.2.0'
      Caption = 'Welcome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5978398
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyUp = StepButton1KeyUp
      OnMouseUp = StepButton1MouseUp
    end
    object StepButton2: TW7ToolButton
      Left = 14
      Top = 57
      Width = 170
      Height = 24
      Version = '1.0.2.0'
      Caption = 'Backup type'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5978398
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyUp = StepButton1KeyUp
      OnMouseUp = StepButton1MouseUp
    end
    object StepButton3: TW7ToolButton
      Left = 14
      Top = 91
      Width = 170
      Height = 24
      Version = '1.0.2.0'
      Caption = 'Destination'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5978398
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyUp = StepButton1KeyUp
      OnMouseUp = StepButton1MouseUp
    end
    object StepButton4: TW7ToolButton
      Left = 14
      Top = 124
      Width = 170
      Height = 24
      Version = '1.0.2.0'
      Caption = 'Finish'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5978398
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnKeyUp = StepButton1KeyUp
      OnMouseUp = StepButton1MouseUp
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 477
    Width = 734
    Height = 44
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    object Image1: TImage
      Left = 17
      Top = 15
      Width = 16
      Height = 16
      Cursor = crHandPoint
      AutoSize = True
      Picture.Data = {
        055449636F6E0000010001001010000001002000680400001600000028000000
        1000000020000000010020000000000040040000000000000000000000000000
        00000000000000000000000000000000B95C2B10BB5E2B80C0612CDFC86630FF
        D2713AFFD67A42FFD4773DFFD16E31CFD5713260000000000000000000000000
        000000000000000000000000B5592A30B95B2ADFC95F27FFD6672AFFDA7034FF
        DF7B3EFFE38849FFE8985AFFECA86DFFE49659FFDB7A3ACFDC76341000000000
        0000000000000000B1562830B8582AEFCC5A28FFD26024FFD66829FFE08E5DFF
        F0E2DEFFF0DACCFFEB9551FFEF9B51FFF5B36DFFF5BC7EFFDF7D3CCFDB753410
        0000000000000000B25629CFC85D30FFCE5921FFD26023FFD66829FFE5AB8BFF
        F0E8E8FFF0E8E8FFECA56FFFEF994DFFF4A455FFF9B76EFFF1B576FFD87333AF
        00000000AD522760BB5D32FFCB5A27FFCE581DFFD15F23FFD56628FFDB763AFF
        EAC4B0FFEABB9CFFE88B43FFEC944AFFF19C50FFF4A254FFF4B574FFDF8C4FFF
        D36F3230AB5127AFC86A41FFCA521AFFCD561CFFD05D21FFD46426FFE4AA8AFF
        F1EAEAFFF1E9E9FFE5853FFFE98D45FFEC9349FFEE974CFFEE9B52FFE79F65FF
        D06D318FB15A32FFD1774EFFCB531CFFCC541BFFCF5A1FFFD36124FFE09871FF
        F2EBEBFFF2EAEAFFE69A66FFE5853EFFE78A42FFE98D44FFE98D44FFE7985DFF
        CC6A30BFB45F38FFD2774DFFD06431FFCD5720FFCE571DFFD15D22FFD46426FF
        EED4C8FFF3ECECFFEFD6CAFFE18343FFE2803BFFE3823DFFE3823DFFE2894FFF
        C9682FBFB4603AFFD57D55FFD06533FFD16633FFD1622CFFCF5C22FFD25F23FF
        D8753FFFF2E5E2FFF3EDEDFFECC7B2FFDD7634FFDE7835FFDE7835FFDE7A42FF
        C4652EBFA9522BDFDA8D6BFFD06433FFD16533FFD26733FFD36A34FFD46931FF
        D4672DFFDF9168FFF5EFEFFFF4EEEEFFDD7E46FFDA6F2FFFDA6F2FFFD86F37FF
        C1622DAFA44B258FD18969FFD37144FFD06533FFD16633FFE9B8A1FFEECBBAFF
        DE8E65FFEBC1ACFFF6F2F2FFF5F0F0FFDE8A5BFFDA743AFFDA743AFFCF6C34FF
        BE5F2C60A34B2420B3613DFFDD9271FFD06433FFD6784CFFFEFDFDFFFCFBFBFF
        FBF8F8FFF9F6F6FFF8F5F5FFF3E2DBFFD66E36FFD76F37FFD56E36FFBE5F2DEF
        BB5D2B1000000000A34A2480C77C5BFFDB8B68FFD06737FFD98159FFF0CEBEFF
        FDFCFCFFFCFAFAFFEECBB9FFDA8458FFD46A35FFD46B38FFC1602EFFB75A2A50
        000000000000000000000000A24A249FC27654FFDE9676FFD4774DFFD06737FF
        D06533FFD16533FFD16837FFD26D3FFFD06C42FFBC5D30FFB358296000000000
        00000000000000000000000000000000A24A2470AC5731EFC57A58FFCE8261FF
        D78B6AFFD48764FFC8744EFFBC643BFFB1562ADFB05528500000000000000000
        0000000000000000000000000000000000000000A34B2410A44B2560A54D258F
        A74E25BFA84F26BFAA502680AB51275000000000000000000000000000000000
        00000000E00F0000C00300008001000080010000000000000000000000000000
        000000000000000000000000000000000000000080010000C0030000E0070000
        F01F0000}
      OnMouseUp = Image1MouseUp
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 734
      Height = 2
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 0
    end
    object CancelButton: TButton
      Left = 645
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 3
      OnKeyUp = CancelButtonKeyUp
      OnMouseUp = CancelButtonMouseUp
    end
    object NextButton: TButton
      Left = 555
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Next >'
      TabOrder = 2
      OnKeyUp = NextButtonKeyUp
      OnMouseUp = NextButtonMouseUp
    end
    object BackButton: TButton
      Left = 474
      Top = 10
      Width = 75
      Height = 25
      Caption = '< Back'
      TabOrder = 1
      OnKeyUp = BackButtonKeyUp
      OnMouseUp = BackButtonMouseUp
    end
  end
  object MainBody: TPanel
    Left = 200
    Top = 0
    Width = 534
    Height = 477
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object W7CaptionPanel1: TW7CaptionPanel
      Left = 0
      Top = 0
      Width = 534
      Height = 44
      Version = '1.0.2.0'
      Align = alTop
      ParentFont = False
      TabOrder = 0
      object CaptLabel: TLabel
        Left = 16
        Top = 16
        Width = 54
        Height = 15
        Caption = 'CaptLabel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5978398
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 44
      Width = 534
      Height = 433
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 1
      Visible = False
      object TabSheet1: TTabSheet
        Caption = 'Step1'
        object Step1: TPanel
          Left = 0
          Top = 0
          Width = 526
          Height = 405
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Memo1: TMemo
            Left = 24
            Top = 23
            Width = 481
            Height = 154
            BorderStyle = bsNone
            Lines.Strings = (
              'Welcome to the Create Backup Wizard!'
              ''
              
                'This wizard will guide you through the process of creating, conf' +
                'iguring and running the operation '
              
                'of back up your data. You can create an image of the entire hard' +
                ' disk. The wizard allows you to '
              
                'create full backup archives or to back up only the changes made ' +
                'since your last backup.')
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Step2'
        ImageIndex = 1
        object Step2: TPanel
          Left = 0
          Top = 0
          Width = 526
          Height = 405
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label1: TLabel
            Left = 24
            Top = 23
            Width = 95
            Height = 13
            Caption = 'Select backup type.'
          end
          object RadioButton1: TRadioButton
            Left = 40
            Top = 63
            Width = 113
            Height = 17
            Caption = 'Full backup'
            TabOrder = 0
          end
          object RadioButton2: TRadioButton
            Left = 40
            Top = 95
            Width = 113
            Height = 17
            Caption = 'Incremental backup'
            TabOrder = 1
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Step3'
        ImageIndex = 2
        object Step3: TPanel
          Left = 0
          Top = 0
          Width = 526
          Height = 405
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label2: TLabel
            Left = 24
            Top = 23
            Width = 194
            Height = 13
            Caption = 'Specify file name of your backup archive'
          end
          object Edit1: TEdit
            Left = 40
            Top = 63
            Width = 393
            Height = 21
            TabOrder = 0
          end
          object Button1: TButton
            Left = 442
            Top = 61
            Width = 33
            Height = 25
            Caption = '...'
            TabOrder = 1
            OnKeyUp = Button1KeyUp
            OnMouseUp = Button1MouseUp
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Step4'
        ImageIndex = 3
        object Step4: TPanel
          Left = 0
          Top = 0
          Width = 526
          Height = 405
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object W7ActiveLabel1: TW7ActiveLabel
            Left = 24
            Top = 120
            Width = 135
            Height = 15
            MouseInColor = 15026695
            MouseOutColor = 5577749
            MouseInCursor = crHandPoint
            MouseOutCursor = crDefault
            Caption = 'TMS software home page'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 5577749
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = W7ActiveLabel1Click
          end
          object W7ActiveLabel2: TW7ActiveLabel
            Left = 24
            Top = 141
            Width = 121
            Height = 15
            MouseInColor = 15026695
            MouseOutColor = 5577749
            MouseInCursor = crHandPoint
            MouseOutCursor = crDefault
            Caption = 'TMS W7 Controls page'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 5577749
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = W7ActiveLabel2Click
          end
          object Memo2: TMemo
            Left = 24
            Top = 23
            Width = 481
            Height = 82
            BorderStyle = bsNone
            Lines.Strings = (
              'It was a "Wizard" demo.'
              ''
              
                'In this demo we use W7 Controls. You can download them from our ' +
                'site.'
              
                'We also use icons created by VisualPharm Company. Download this ' +
                'icons in case of using them in '
              'your applications. You can find the EULA in project'#39's folder.')
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 72
    Top = 488
  end
end
