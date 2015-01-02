{***************************************************************************}
{ TAdvCardList sample application                                           }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2012                                               }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{***************************************************************************}

unit UAdvCardListDemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvCardList, StdCtrls, AdvCardListStyler, JPEG, ExtCtrls
  {$IFDEF VER150}
  , XPMan
  {$ENDIF}
  {$IFDEF VER170}
  , XPMan
  {$ENDIF}
  {$IFDEF VER180}
  , XPMan
  {$ENDIF}
  ;

type
  TForm1 = class(TForm)
    AdvCardList1: TAdvCardList;
    Button1: TButton;
    AdvCardListStyler1: TAdvCardListStyler;
    Panel1: TPanel;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    CheckBox2: TCheckBox;
    ComboBox2: TComboBox;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AddCard(ACaption, AType, AWeb:string; APrice: Integer; AImage:string; ADate: TDateTime; Avail: Boolean);
  end;

var
  Form1: TForm1;

implementation

{$R carddemo.res}
{$R *.dfm}

procedure TForm1.AddCard(ACaption, AType, AWeb: string; APrice: Integer;
  AImage: string; ADate: TDateTime; Avail: Boolean);
var
  ac: TAdvCard;
  ms: TMemoryStream;
  reshandle: THandle;
  hglobal: THandle;
  ptr: Pointer;
  ressize: integer;
  JPEGImage: TJPEGImage;

begin
  ac := AdvCardList1.Cards.Add;
  ac.Caption := ACaption;
  ac.ItemList[0].AsString := AType;
  ac.ItemList[1].AsString := AWeb;
  ac.ItemList[2].AsInteger := APrice;
  if AImage <> '' then
  begin
    reshandle := FindResource(hinstance, PChar(AImage), PChar(RT_RCDATA));
    if reshandle <> 0 then
    begin
      hglobal := LoadResource(hinstance, reshandle);
      ms := TMemoryStream.Create;
      try
        ressize := SizeOfResource(hinstance, reshandle);
        ptr := LockResource(hglobal);
        ms.WriteBuffer(ptr^,ressize);
        ms.Position := 0;
        JPEGImage := TJPEGImage.Create;
        try
          JPEGImage.LoadFromStream(ms);
          ac.ItemList[3].Picture.Assign(JPEGImage);
        finally
          JPEGImage.Free;
        end;  
      finally
        FreeResource(reshandle);
        ms.Free;
      end;
    end;
  end;
  ac.ItemList[4].AsDate := ADate;
  ac.ItemList[5].AsBoolean := Avail;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  // load cards
  AdvCardList1.BeginUpdate;
  AddCard('Mercedes','SLK','www.mbusa.com',50,'slk',encodedate(2004,10,1),true);
  AddCard('Mercedes','SLR','www.mbusa.com',450,'slr',encodedate(2004,6,1),true);
  AddCard('Mercedes','SL','www.mbusa.com',150,'sl',encodedate(2001,11,1),false);
  AddCard('Mercedes','CL','www.mbusa.com',140,'cl',encodedate(2000,4,1),false);
  AddCard('Porsche','911','www.porsche.com',120,'p911',encodedate(1997,8,1),false);
  AddCard('Porsche','Boxster','www.porsche.com',120,'boxster',encodedate(1997,8,1),false);
  AddCard('BMW','M3','www.bmw.com',95,'m3',encodedate(2003,2,1),true);
  AddCard('BMW','645','www.bmw.com',135,'b645',encodedate(2004,9,1),false);
  AddCard('BMW','Z4','www.bmw.com',75,'z4',encodedate(2004,3,1),false);
  AddCard('Aston Martin','DB9','www.astonmartin.com',175,'db9',encodedate(2003,2,1),true);
  AddCard('Ferrari','355','www.ferrari.it',275,'f355',encodedate(1996,2,1),true);
  AdvCardList1.EndUpdate;
  // present horizontal scrollbar
  AdvCardList1.LeftCol := 0;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  case combobox1.itemindex of
  0: Advcardlist1.SortSettings.SortType := stCaption;
  1,2,3:
    begin
      Advcardlist1.SortSettings.SortIndex := combobox1.itemindex - 1;
      Advcardlist1.SortSettings.SortType := stItem;
    end;
  4,5:
    begin
      AdvCardList1.SortSettings.SortIndex := combobox1.itemindex;
      AdvCardList1.SortSettings.SortType := stItem;
    end;
  end;
  AdvCardList1.LeftCol := 0;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  AdvCardList1.MultiSelect := checkbox1.Checked;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  AdvCardList1.CardHoverAppearance.Enabled := checkbox2.Checked;
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin
  AdvCardListStyler1.Style := TAdvCardListStyle(combobox2.ItemIndex);
end;

end.
