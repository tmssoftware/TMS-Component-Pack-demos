{********************************************************************}
{ TMS Graphics Demo                                                  }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2012                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit UTMSGraphicsDemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvSelectors, ExtCtrls, ImgList, StdCtrls, AdvFontCombo
  {$IFDEF VER150}
  , XPMan
  {$ENDIF}
  {$IFDEF VER170}
  , XPMan
  {$ENDIF}
  ;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    AdvPenStyleSelector2: TAdvPenStyleSelector;
    AdvBrushStyleSelector2: TAdvBrushStyleSelector;
    AdvShadowSelector2: TAdvShadowSelector;
    AdvTableBorderSelector2: TAdvTableBorderSelector;
    AdvGradientDirectionSelector1: TAdvGradientDirectionSelector;
    AdvPenWidthSelector1: TAdvPenWidthSelector;
    ImageList1: TImageList;
    Label1: TLabel;
    Panel4: TPanel;
    AdvColorSelector4: TAdvColorSelector;
    AdvColorSelector5: TAdvColorSelector;
    AdvColorSelector1: TAdvColorSelector;
    Panel5: TPanel;
    AdvColorSelector7: TAdvColorSelector;
    AdvColorSelector8: TAdvColorSelector;
    AdvColorSelector9: TAdvColorSelector;
    ColorLabel: TLabel;
    ColorLabel2: TLabel;
    Panel6: TPanel;
    AdvColorSelector12: TAdvColorSelector;
    ColorLabel3: TLabel;
    AdvColorSelector10: TAdvColorSelector;
    Label2: TLabel;
    Panel3: TPanel;
    AdvToolSelector3: TAdvToolSelector;
    AdvToolSelector4: TAdvToolSelector;
    Label3: TLabel;
    AdvPenWidthSelector2: TAdvPenWidthSelector;
    AdvPenStyleSelector1: TAdvPenStyleSelector;
    AdvBrushStyleSelector1: TAdvBrushStyleSelector;
    Panel7: TPanel;
    Label4: TLabel;
    AdvFontSelector1: TAdvFontSelector;
    AdvOfficeComboBox1: TAdvOfficeComboBox;
    Button1: TButton;
    ColorDialog1: TColorDialog;
    Panel2: TPanel;
    AdvTextColorSelector2: TAdvTextColorSelector;
    AdvTextColorSelector3: TAdvTextColorSelector;
    Panel8: TPanel;
    Label5: TLabel;
    AdvTableSelector1: TAdvTableSelector;
    AdvCharacterSelector1: TAdvCharacterSelector;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AdvColorSelector8Click(Sender: TObject);
    procedure AdvColorSelector9Click(Sender: TObject);
    procedure AdvColorSelector7Click(Sender: TObject);
    procedure AdvColorSelector5Select(Sender: TObject; Index: Integer; Item: TAdvSelectorItem);
    procedure AdvColorSelector1Select(Sender: TObject; Index: Integer; Item: TAdvSelectorItem);
    procedure AdvColorSelector4Select(Sender: TObject; Index: Integer; Item: TAdvSelectorItem);
    procedure AdvColorSelector11Click(Sender: TObject);
    procedure AdvColorSelector12Select(Sender: TObject; Index: Integer; Item: TAdvSelectorItem);
    procedure AdvColorSelector10Click(Sender: TObject);
    procedure AdvColorSelector10Select(Sendet: TObject; Index: Integer;
      Item: TAdvSelectorItem);
    procedure AdvCharacterSelector1Select(Sender: TObject);
    procedure AdvTableSelector1Select(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  i: Integer;

  procedure AddItem(s:string);
  begin
    AdvOfficeComboBox1.Items.Add(s);
  end;

begin
  AdvPenStyleSelector1.SelectedIndex:= 3;
  AdvPenWidthSelector2.SelectedIndex:= 2;
  AdvBrushStyleSelector1.SelectedIndex:= 1;

  AddItem('ALGERIA');
  AddItem('AMERICAN OCEANIAN TERRITORIES');
  AddItem('AMERICAN SAMOA');
  AddItem('ANDORRA');
  AddItem('ANGOLA');
  AddItem('ANGUILLA');
  AddItem('ANTIGUA AND BARBUDA');
  AddItem('ARGENTINA');
  AddItem('ARMENIA');
  AddItem('ARUBA');
  AddItem('AUSTRALIA');
  AddItem('AUSTRIA');
  AddItem('AZERBAIJAN');
  AddItem('BAHAMAS');
  AddItem('BAHRAIN');
  AddItem('BANGLADESCH');
  AddItem('BARBADOS');
  AddItem('BELARUS');
  AddItem('BELGIUM');
  AddItem('BELIZE');
  AddItem('BENIN');
  AddItem('BERMUDA');
  AddItem('BHUTAN');
  AddItem('BOLIVIA');
  AddItem('BOSNIA AND HERZEGOWINA');
  AddItem('BOTSWANA');
  AddItem('BRAZIL');
  AddItem('BRITISH INDIAN OCEAN TERRITORY');
  AddItem('BRUNEI DARUSSALAM');
  AddItem('BULGARIA');
  AddItem('BURKINA FASO');
  AddItem('BURUNDI');
  AddItem('CAMBODIA');
  AddItem('CAMEROON');
  AddItem('CANADA');
  AddItem('CANARY ISLANDS');
  AddItem('CAPE VERDE');
  AddItem('CAYMAN ISLANDS');
  AddItem('CENTRAL AFRICAN REPUBLIC');
  AddItem('CEUTA');
  AddItem('CHAD');
  AddItem('CHANNEL ISLANDS (UK)');
  AddItem('CHILE');
  AddItem('CHINA');
  AddItem('COLOMBIA');
  AddItem('COMOROS');
  AddItem('CONGO');
  AddItem('COSTA RICA');
  AddItem('CROATIA');
  AddItem('CUBA');
  AddItem('CYPRUS');
  AddItem('CZECH REPUBLIC');
  AddItem('DENMARK');
  AddItem('DJIBOUTI');
  AddItem('DOMINICA');
  AddItem('DOMINICAN REPUBLIC');
  AddItem('ECUADOR');
  AddItem('EGYPT');
  AddItem('EL SALVADOR');
  AddItem('EMIRATE OF AFGHANISTAN');
  AddItem('EQUATORIAL GUINEA');
  AddItem('ERITREA');
  AddItem('ESTONIA');
  AddItem('ETHIOPIA');
  AddItem('FALKLAND ISLANDS');
  AddItem('FAROE ISLANDS');
  AddItem('FIJI');
  AddItem('FINLAND');
  AddItem('FRANCE');
  AddItem('FRENCH GUIANA');
  AddItem('FRENCH POLYNESIA');
  AddItem('GABON');
  AddItem('GAMBIA');
  AddItem('GEORGIA');
  AddItem('GERMANY');
  AddItem('GHANA');
  AddItem('GIBRALTAR');
  AddItem('GREECE');
  AddItem('GREENLAND');
  AddItem('GRENADA');
  AddItem('GUADELOUPE');
  AddItem('GUATEMALA');
  AddItem('GUINEA');
  AddItem('GUINEA-BISSAU');
  AddItem('GUYANA');
  AddItem('HAITI');
  AddItem('HONDURAS');
  AddItem('HONG KONG');
  AddItem('HUNGARY');
  AddItem('ICELAND');
  AddItem('INDIA');
  AddItem('INDONESIA');
  AddItem('IRAN');
  AddItem('IRAQ');
  AddItem('IRELAND');
  AddItem('ISRAEL');
  AddItem('ITALY');
  AddItem('IVORY COAST');
  AddItem('JAMAICA');
  AddItem('JAPAN');
  AddItem('JORDAN');
  AddItem('KAZAKHSTAN');
  AddItem('KENYA');
  AddItem('KIRGISTAN');
  AddItem('KIRIBATI');
  AddItem('KUWAIT');
  AddItem('LAO PEOPLES DEMOCRATIC REPUBLIC');
  AddItem('LATVIA');
  AddItem('LEBANON');
  AddItem('LESOTHO');
  AddItem('LIBERIA');
  AddItem('LIBYAN ARAB JAMAHIRYA');
  AddItem('LIECHTENSTEIN');
  AddItem('LITHUANIA');
  AddItem('LUXEMBOURG');
  AddItem('MACAU');
  AddItem('MACEDONIA');
  AddItem('MADAGASCAR');
  AddItem('MALAWI');
  AddItem('MALAYSIA');
  AddItem('MALDIVES');
  AddItem('MALI');
  AddItem('MALTA');
  AddItem('MARSHALL ISLANDS');
  AddItem('MARTINIQUE');
  AddItem('MAURITANIA');
  AddItem('MAURITIUS');
  AddItem('MAYOTTE');
  AddItem('MEXICO');
  AddItem('MICRONESIA');
  AddItem('MOLDOVA');
  AddItem('MONGOLIA');
  AddItem('MONTSERRAT');
  AddItem('MOROCCO');
  AddItem('MOZAMBIQUE');
  AddItem('MYANMAR');
  AddItem('MONACO');
  AddItem('NAMIBIA');
  AddItem('NAURU');
  AddItem('NEPAL');
  AddItem('NETHERLANDS');
  AddItem('NETHERLANDS ANTILLES');
  AddItem('NEW CALEDONIA');
  AddItem('NEW ZEALAND');
  AddItem('NEW ZEALAND'#39'S OCEANIA');
  AddItem('NICARAGUA');
  AddItem('NIGER');
  AddItem('NIGERIA');
  AddItem('NORTHERN KOREA');
  AddItem('NORTHERN MARIANA ISLANDS');
  AddItem('NORWAY');
  AddItem('OCEANIA');
  AddItem('OMAN');
  AddItem('PAKISTAN');
  AddItem('PALAU');
  AddItem('PANAMA');
  AddItem('PAPUA NEW GUINEA');
  AddItem('PARAGUAY');
  AddItem('PERU');
  AddItem('PHILIPPINES');
  AddItem('PITCAIRN');
  AddItem('POLAND');
  AddItem('PORTUGAL');
  AddItem('QATAR');
  AddItem('REUNION');
  AddItem('ROMANIA');
  AddItem('RUSSIA');
  AddItem('RWANDA');
  AddItem('SAN MARINO');
  AddItem('SAO TOME AND PRINCIPE');
  AddItem('SAUDI ARABIA');
  AddItem('SENEGAL');
  AddItem('SERBIA');
  AddItem('SEYCHELLES');
  AddItem('SIERRA LEONE');
  AddItem('SINGAPORE');
  AddItem('SLOVAKIA');
  AddItem('SLOVENIA');
  AddItem('SOLOMON ISLANDS');
  AddItem('SOMALIA');
  AddItem('SOUTH AFRICA');
  AddItem('SOUTH KOREA');
  AddItem('SPAIN');
  AddItem('SRI LANKA');
  AddItem('ST. HELENA');
  AddItem('ST. KITTS');
  AddItem('ST. LUCIA');
  AddItem('ST. PIERRE AND MIQUELON');
  AddItem('ST. VINCENT');
  AddItem('SUDAN');
  AddItem('SURINAME');
  AddItem('SVALBARD');
  AddItem('SWAZILAND');
  AddItem('SWEDEN');
  AddItem('SWITZERLAND');
  AddItem('SYRIAN ARAB REPUBLIC');
  AddItem('TAIWAN');
  AddItem('TAJIKISTAN');
  AddItem('TANZANIA');
  AddItem('THAILAND');
  AddItem('TOGO');
  AddItem('TONGA');
  AddItem('TRINIDAD AND TOBAGO');
  AddItem('TUNISIA');
  AddItem('TURKEY');
  AddItem('TURKMENISTAN');
  AddItem('TURKS AND CAICOS ISLANDS');
  AddItem('TUVALU');
  AddItem('UGANDA');
  AddItem('UKRAINE');
  AddItem('UNITED ARAB EMIRATES');
  AddItem('UNITED KINGDOM');
  AddItem('URUGUAY');
  AddItem('USA');
  AddItem('UZBEKISTAN');
  AddItem('VANUATU');
  AddItem('VATICAN CITY STATE');
  AddItem('VENEZUELA');
  AddItem('VIET NAM');
  AddItem('VIRGIN ISLANDS (BRITISH)');
  AddItem('VIRGIN ISLANDS (U.S.)');
  AddItem('WALLIS AND FUTUNA ISLANDS');
  AddItem('WEST SAMOA');
  AddItem('YEMEN');
  AddItem('YUGOSLAVIA');
  AddItem('ZAIRE');
  AddItem('ZAMBIA');
  AddItem('ZIMBABWE');

  AdvFontSelector1.Text := 'Arial';

  for i := 169 to 229 do
  begin
    with advcharacterselector1.Tools.Add do
    begin
      ItemType := itAutoSizeButton;    
      Caption := chr(i);
      Hint := '#'+inttostr(i);
      CaptionAlignment := taCenter;
    end;
  end;



end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  AdvOfficeComboBox1.RecentSelection.Clear;
  AdvFontSelector1.RecentSelection.Clear;
end;

procedure TForm1.AdvColorSelector8Click(Sender: TObject);
begin
  ColorLabel.Font.Color := AdvColorSelector8.SelectedColor;
end;

procedure TForm1.AdvColorSelector9Click(Sender: TObject);
begin
  ColorLabel.Font.Color := AdvColorSelector9.SelectedColor;
end;

procedure TForm1.AdvColorSelector7Click(Sender: TObject);
begin
  ColorLabel.Font.Color := AdvColorSelector7.SelectedColor;
end;

procedure TForm1.AdvColorSelector5Select(Sender: TObject; Index: Integer; Item: TAdvSelectorItem);
begin
  ColorLabel2.Font.Color := AdvColorSelector5.SelectedColor;
end;

procedure TForm1.AdvColorSelector1Select(Sender: TObject; Index: Integer; Item: TAdvSelectorItem);
begin
  if (Index = 41) then
  begin
    if colordialog1.execute then
    begin
      AdvColorSelector1.SelectedColor := colordialog1.Color;
      ColorLabel2.Font.Color := AdvColorSelector1.SelectedColor;
    end
  end
  else
    ColorLabel2.Font.Color := AdvColorSelector1.SelectedColor;
end;

procedure TForm1.AdvColorSelector4Select(Sender: TObject; Index: Integer; Item: TAdvSelectorItem);
begin
  ColorLabel2.Font.Color := AdvColorSelector4.SelectedColor;
end;

procedure TForm1.AdvColorSelector11Click(Sender: TObject);
begin
  ColorLabel3.Font.Color := AdvColorSelector1.SelectedColor;
end;

procedure TForm1.AdvColorSelector12Select(Sender: TObject; Index: Integer; Item: TAdvSelectorItem);
begin
  ColorLabel3.Font.Color := AdvColorSelector12.SelectedColor;
end;

procedure TForm1.AdvColorSelector10Click(Sender: TObject);
begin
  ColorLabel3.Font.Color := AdvColorSelector10.SelectedColor;
end;

procedure TForm1.AdvColorSelector10Select(Sendet: TObject; Index: Integer;
  Item: TAdvSelectorItem);
begin
  if (Index = 41) then // more colors is selected
  begin
    if ColorDIalog1.Execute then
      AdvColorSelector10.SelectedColor := ColorDialog1.Color;
  end;
  ColorLabel3.Font.Color := AdvColorSelector10.SelectedColor;
end;

procedure TForm1.AdvCharacterSelector1Select(Sender: TObject);
begin
  Label9.Caption := AdvCharacterSelector1.SelectedChar;
end;

procedure TForm1.AdvTableSelector1Select(Sender: TObject);
begin
  label8.Caption := inttostr(advtableselector1.SelectedColumns) + ' x ' + inttostr(advtableselector1.SelectedRows) +' table';
end;

end.
