object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'TMS vCard Demo'
  ClientHeight = 382
  ClientWidth = 817
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
  object GroupBox1: TGroupBox
    Left = 346
    Top = 0
    Width = 471
    Height = 382
    Align = alRight
    Caption = 'Details'
    TabOrder = 0
    ExplicitLeft = 330
    object Image1: TImage
      Left = 343
      Top = 38
      Width = 105
      Height = 105
      Proportional = True
      Stretch = True
      OnClick = Image1Click
    end
    object btAddContact: TButton
      Left = 16
      Top = 348
      Width = 75
      Height = 25
      Caption = 'Add'
      TabOrder = 0
      OnClick = btAddContactClick
    end
    object Button1: TButton
      Left = 97
      Top = 348
      Width = 75
      Height = 25
      Caption = 'Preset'
      TabOrder = 1
      OnClick = Button1Click
    end
    object PageControl1: TPageControl
      Left = 16
      Top = 19
      Width = 321
      Height = 323
      ActivePage = TabSheet1
      TabOrder = 2
      object TabSheet1: TTabSheet
        Caption = 'Personal'
        ExplicitHeight = 258
        object Label11: TLabel
          Left = 8
          Top = 260
          Width = 32
          Height = 13
          Caption = 'Photo:'
        end
        object Label9: TLabel
          Left = 8
          Top = 207
          Width = 44
          Height = 13
          Caption = 'Birthday:'
        end
        object Label8: TLabel
          Left = 8
          Top = 179
          Width = 54
          Height = 13
          Caption = 'Profession:'
        end
        object Label7: TLabel
          Left = 8
          Top = 152
          Width = 44
          Height = 13
          Caption = 'Job Title:'
        end
        object Label6: TLabel
          Left = 8
          Top = 125
          Width = 49
          Height = 13
          Caption = 'Company:'
        end
        object Label10: TLabel
          Left = 8
          Top = 98
          Width = 49
          Height = 13
          Caption = 'Nickname:'
        end
        object Label5: TLabel
          Left = 8
          Top = 71
          Width = 53
          Height = 13
          Caption = 'Last name:'
        end
        object Label4: TLabel
          Left = 8
          Top = 44
          Width = 54
          Height = 13
          Caption = 'First name:'
        end
        object Label3: TLabel
          Left = 8
          Top = 233
          Width = 43
          Height = 13
          Caption = 'Website:'
        end
        object Label23: TLabel
          Left = 8
          Top = 13
          Width = 49
          Height = 13
          Caption = 'Full name:'
        end
        object edPhoto: TEdit
          Left = 68
          Top = 257
          Width = 197
          Height = 21
          TabOrder = 0
        end
        object btLoadPhoto: TButton
          Left = 272
          Top = 255
          Width = 22
          Height = 25
          Caption = '...'
          TabOrder = 1
          OnClick = btLoadPhotoClick
        end
        object edWebsite: TEdit
          Left = 68
          Top = 230
          Width = 225
          Height = 21
          TabOrder = 2
        end
        object dtBirthDay: TDateTimePicker
          Left = 68
          Top = 203
          Width = 225
          Height = 21
          Date = 41317.463741423610000000
          Time = 41317.463741423610000000
          TabOrder = 3
        end
        object edProfession: TEdit
          Left = 68
          Top = 176
          Width = 225
          Height = 21
          TabOrder = 4
        end
        object edJobTitle: TEdit
          Left = 68
          Top = 149
          Width = 225
          Height = 21
          TabOrder = 5
        end
        object edCompany: TEdit
          Left = 68
          Top = 122
          Width = 225
          Height = 21
          TabOrder = 6
        end
        object edNickName: TEdit
          Left = 68
          Top = 95
          Width = 225
          Height = 21
          TabOrder = 7
        end
        object edLastName: TEdit
          Left = 68
          Top = 68
          Width = 225
          Height = 21
          TabOrder = 8
        end
        object edFirstName: TEdit
          Left = 68
          Top = 41
          Width = 225
          Height = 21
          TabOrder = 9
        end
        object edFullName: TEdit
          Left = 68
          Top = 10
          Width = 226
          Height = 23
          TabOrder = 10
        end
      end
      object Email: TTabSheet
        Caption = 'Email'
        ImageIndex = 1
        ExplicitHeight = 258
        object Label1: TLabel
          Left = 8
          Top = 13
          Width = 31
          Height = 13
          Caption = 'Home:'
        end
        object Label12: TLabel
          Left = 8
          Top = 40
          Width = 29
          Height = 13
          Caption = 'Work:'
        end
        object edHomeEmail: TEdit
          Left = 68
          Top = 10
          Width = 225
          Height = 21
          TabOrder = 0
        end
        object edWorkEmail: TEdit
          Left = 68
          Top = 37
          Width = 225
          Height = 21
          TabOrder = 1
        end
      end
      object Address: TTabSheet
        Caption = 'Address'
        ImageIndex = 2
        ExplicitHeight = 258
        object Label15: TLabel
          Left = 8
          Top = 13
          Width = 33
          Height = 13
          Caption = 'Home'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 8
          Top = 151
          Width = 30
          Height = 13
          Caption = 'Work'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 8
          Top = 32
          Width = 34
          Height = 13
          Caption = 'Street:'
        end
        object Label18: TLabel
          Left = 8
          Top = 59
          Width = 50
          Height = 13
          Caption = 'PostCode:'
        end
        object Label19: TLabel
          Left = 8
          Top = 86
          Width = 23
          Height = 13
          Caption = 'City:'
        end
        object Label20: TLabel
          Left = 8
          Top = 173
          Width = 34
          Height = 13
          Caption = 'Street:'
        end
        object Label21: TLabel
          Left = 8
          Top = 200
          Width = 50
          Height = 13
          Caption = 'PostCode:'
        end
        object Label22: TLabel
          Left = 8
          Top = 227
          Width = 23
          Height = 13
          Caption = 'City:'
        end
        object Label24: TLabel
          Left = 7
          Top = 115
          Width = 43
          Height = 13
          Caption = 'Country:'
        end
        object Label25: TLabel
          Left = 8
          Top = 255
          Width = 43
          Height = 13
          Caption = 'Country:'
        end
        object edHomeStreet: TEdit
          Left = 68
          Top = 29
          Width = 225
          Height = 21
          TabOrder = 0
        end
        object edHomeCode: TEdit
          Left = 68
          Top = 56
          Width = 225
          Height = 21
          TabOrder = 1
        end
        object edHomeCity: TEdit
          Left = 68
          Top = 83
          Width = 225
          Height = 21
          TabOrder = 2
        end
        object edWorkStreet: TEdit
          Left = 68
          Top = 170
          Width = 225
          Height = 21
          TabOrder = 3
        end
        object edWorkCode: TEdit
          Left = 68
          Top = 197
          Width = 225
          Height = 21
          TabOrder = 4
        end
        object edWorkCity: TEdit
          Left = 68
          Top = 224
          Width = 225
          Height = 21
          TabOrder = 5
        end
        object edHomeCountry: TEdit
          Left = 67
          Top = 112
          Width = 225
          Height = 21
          TabOrder = 6
        end
        object edWorkCountry: TEdit
          Left = 68
          Top = 252
          Width = 225
          Height = 21
          TabOrder = 7
        end
      end
      object Phone: TTabSheet
        Caption = 'Phone'
        ImageIndex = 3
        ExplicitHeight = 258
        object Label13: TLabel
          Left = 8
          Top = 13
          Width = 34
          Height = 13
          Caption = 'Mobile:'
        end
        object Label14: TLabel
          Left = 8
          Top = 40
          Width = 29
          Height = 13
          Caption = 'Work:'
        end
        object edWorkPhone: TEdit
          Left = 68
          Top = 37
          Width = 225
          Height = 21
          TabOrder = 0
        end
        object edMobilePhone: TEdit
          Left = 68
          Top = 10
          Width = 225
          Height = 21
          TabOrder = 1
        end
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 346
    Height = 382
    Align = alClient
    Caption = 'Contacts'
    TabOrder = 1
    ExplicitWidth = 354
    object Label2: TLabel
      Left = 11
      Top = 177
      Width = 36
      Height = 13
      Caption = 'Details:'
    end
    object lbContacts: TListBox
      Left = 11
      Top = 53
      Width = 318
      Height = 118
      ItemHeight = 13
      TabOrder = 0
      OnClick = lbContactsClick
    end
    object btImport: TButton
      Left = 11
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Import'
      TabOrder = 1
      OnClick = btImportClick
    end
    object btExport: TButton
      Left = 92
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Export'
      TabOrder = 2
      OnClick = btExportClick
    end
    object btExportAll: TButton
      Left = 173
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Export All'
      TabOrder = 3
      OnClick = btExportAllClick
    end
    object meDetails: TMemo
      Left = 11
      Top = 196
      Width = 318
      Height = 177
      ScrollBars = ssVertical
      TabOrder = 4
    end
  end
  object vCard1: TvCard
    vContacts = <>
    Left = 264
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Filter = 'vCard files|*.vcf'
    Left = 312
    Top = 8
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 696
    Top = 152
  end
end
