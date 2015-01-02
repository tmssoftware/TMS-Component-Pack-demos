object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'SectionListBox demo'
  ClientHeight = 324
  ClientWidth = 243
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
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 193
    Height = 33
    Caption = 'Demonstrates drag && drop of subitems limited to sections'
    WordWrap = True
  end
  object SectionListBox1: TSectionListBox
    Left = 24
    Top = 80
    Width = 193
    Height = 217
    Sections = <
      item
        Alignment = taLeftJustify
        VAlignment = vtaCenter
        AutoEdit = False
        AutoSize = True
        Caption = 'Section 1'
        Fixed = False
        ImageIndex = -1
        State = lssContracted
        SubItems.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5')
        Color = clWindow
        Lines = slNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        FontUsage = fuSubItems
        EndEllipsis = False
        ControlType = scText
        RadioIndex = 0
        SortDirection = sdNone
        SortShow = False
        Tag = 0
        OwnerDraw = False
        ReadOnly = True
        ItemHeight = 13
      end
      item
        Alignment = taLeftJustify
        VAlignment = vtaCenter
        AutoEdit = False
        AutoSize = True
        Caption = 'Section 2'
        Fixed = False
        ImageIndex = -1
        State = lssContracted
        SubItems.Strings = (
          'A'
          'B'
          'C'
          'D'
          'E')
        Color = clWindow
        Lines = slNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        FontUsage = fuSubItems
        EndEllipsis = False
        ControlType = scText
        RadioIndex = 0
        SortDirection = sdNone
        SortShow = False
        Tag = 0
        OwnerDraw = False
        ReadOnly = True
        ItemHeight = 13
      end
      item
        Alignment = taLeftJustify
        VAlignment = vtaCenter
        AutoEdit = False
        AutoSize = True
        Caption = 'Section 3'
        Fixed = False
        ImageIndex = -1
        State = lssContracted
        SubItems.Strings = (
          'Item 1'
          'Item 2'
          'Item 3'
          'Item 4')
        Color = clWindow
        Lines = slNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        FontUsage = fuSubItems
        EndEllipsis = False
        ControlType = scText
        RadioIndex = 0
        SortDirection = sdNone
        SortShow = False
        Tag = 0
        OwnerDraw = False
        ReadOnly = True
        ItemHeight = 13
      end>
    TabPositions = <>
    TabPosMove = False
    WordWrap = False
    OneExpanded = False
    FullFocus = True
    ImageSpacing = 0
    SubItemHeight = 13
    TabOrder = 0
    OnDragDrop = SectionListBox1DragDrop
    OnDragOver = SectionListBox1DragOver
    OnMouseDown = SectionListBox1MouseDown
    Flat = False
    SectionFont.Charset = DEFAULT_CHARSET
    SectionFont.Color = clWindowText
    SectionFont.Height = -11
    SectionFont.Name = 'Tahoma'
    SectionFont.Style = []
    SectionIndent = 14
    SubItemIndent = 14
    URLSettings.URLAware = False
    URLSettings.URLColor = clBlue
    URLSettings.URLFull = False
    ExpandDisable = False
    ContractDisable = False
    SectionColor = clBtnFace
    ActiveSection = asFull
    NodeType = lnFlat
    SectionFocus = sfDash
    ScrollStyle = slsNormal
    ScrollColor = clNone
    ScrollWidth = 17
    SelectionColor = clHighlight
    SelectionTextColor = clHighlightText
    Version = '1.9.2.4'
  end
end
