object ChildForm: TChildForm
  Left = 835
  Top = 275
  Width = 695
  Height = 480
  Caption = 'Child'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  Menu = AdvMainMenu1
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object AdvMainMenu1: TAdvMainMenu
    Version = '1.2.0.1'
    Left = 8
    Top = 8
    object Action1: TMenuItem
      Caption = 'Action'
      GroupIndex = 2
      object Item1: TMenuItem
        Caption = 'ActiveForm'
        GroupIndex = 2
        OnClick = Item1Click
      end
      object UnMerge1: TMenuItem
        Caption = 'Unmerge && close MDI child'
        GroupIndex = 2
        OnClick = UnMerge1Click
      end
    end
  end
end
