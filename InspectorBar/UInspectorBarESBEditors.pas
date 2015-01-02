{***************************************************************************}
{ TInspectorBar component                                                   }
{ for Delphi & C++Builder                                                   }
{ version 1.1                                                               }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2001 - 2002                                        }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{                                                                           }
{***************************************************************************}

unit UInspectorBarESBEditors;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, InspectorBar, StdCtrls, Mask, Spin, Menus, InspLinks
  {$IFDEF VER150}
  , Variants, WinXP, ESBInpsLinks, ESBPCSEdit, ESBPCSDateTimeEdit,
  ESBPCSPanel, ESBPCSSpinEdit, ESBPCSComboBox, ESBPCSDateTimeComboBox,
  ESBPCSCountryComboBox, ESBPCSFractionEdit, ESBInspLinks,
  ESBPCSDateTimeSpinEdit
  {$ENDIF}
  ;

type
  TForm1 = class(TForm)
    InspectorBar1: TInspectorBar;
    esbSpinIntEditLink: TESBInspIntSpinEditLink;
    esbSpinFloatEditLink: TESBInspFloatSpinEditLink;
    esbSpinPosEditLink: TESBInspPosSpinEditLink;
    esbSpinYearEditLink: TESBInspYearSpinEditLink;
    esbSpinMonthEditLink: TESBInspMonthSpinEditLink;
    esbSpinDOWEditLink: TESBInspDOWSpinEditLink;
    esbComboMonthEditLink: TESBInspMonthComboBoxEditLink;
    esbComboDOWEditLink: TESBInspDowComboBoxEditLink;
    esbComboTZEditLink: TESBInspTZComboBoxEditLink;
    esbComboEMUEditLink: TESBInspEMUComboBoxEditLink;
    esbComboCountryEditLink: TESBInspCountryComboBoxEditLink;
    esbComboLookupEditLink: TESBInspLookUpComboBoxEditLink;
    esbSuperEditLink: TESBInspSuperEditLink;
    esbPCSEditEditLink: TESBInspPCSEditLink;
    esbFractEditLink: TESBInspFractEditLink;
    esbPosEditLink: TESBInspPosEditLink;
    esbIntEditLink: TESBInspIntEditLink;
    esbFloatEditLink: TESBInspFloatEditLink;
    esbIPEditLink: TESBInspIPEditLink;
    esbPercentEditLink: TESBInspPercentEditLink;
    esbHexEditLink: TESBInspHexEditLink;
    esbSciFloatEditLink: TESBInspSciFloatEditLink;
    esbPosFloatEditLink: TESBInspPosFloatEditLink;
    esbYearEditLink: TESBInspYearEditLink;
    esbDateEditLink: TESBInspDateEditLink;
    esbTimeEditLink: TESBInspTimeEditLink;
    esbDOWEditLink: TESBInspDOWEditLink;
    esbCurrEditLink: TESBInspCurrEditLink;
    esbMonthEditLink: TESBInspMonthEditLink;
    esbLongCurrEditLink: TESBInspLongCurrEditLink;
    esbCurrencyEditLink: TESBInspCurrencyEditLink;
    esbComplexEditLink: TESBInspComplexEditLink;
    esbDateTimeEditLink2: TESBInspDateTimeEditLink;
    esbFractionEditLink2: TESBInspFractionEditLink;

//    procedure ColComboInspectorEditLink1SetProperties(Sender: TObject;
//      R: TRect; Item: TInspectorItem);
    procedure InspectorBar1CustomEditButton(Sender: TObject;
      AInspectorItem: TInspectorItem;
      var AEditButton: TInspectorEditButton);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{
procedure TForm1.ColComboInspectorEditLink1SetProperties(Sender: TObject;
  R: TRect; Item: TInspectorItem);
begin
  with ColComboInspectorEditLink1.ColumnComboBox do
  begin
    Columns.Clear;
    with Columns.Add do
    begin
      Width := 50;
      Font.Name := 'Tahoma';
    end;
    with Columns.Add do
    begin
      Width := 150;
      Font.Color := clBlue;
      Font.Style := [fsItalic];
      Font.Name := 'Tahoma';
    end;

    ComboItems.Clear;
    with ComboItems.Add.Strings do
    begin
      Add('BMW');
      Add('3 series');
    end;
    with ComboItems.Add.Strings do
    begin
      Add('Porsche');
      Add('Boxster Roadster series');
    end;
    with ComboItems.Add.Strings do
    begin
      Add('Mercedes');
      Add('SL Grand Tourismo series');
    end;
    with ComboItems.Add.Strings do
    begin
      Add('Audi');
      Add('TT roadster series');
    end;

    ItemIndex := Item.IntValue;
  end;

end;
}
procedure TForm1.InspectorBar1CustomEditButton(Sender: TObject;
  AInspectorItem: TInspectorItem; var AEditButton: TInspectorEditButton);
begin
  if AInspectorItem.Tag = 1 then
    AEditButton := ebDropDown;
  if AInspectorItem.Tag = 2 then
    AEditButton := ebMore;
end;

end.
