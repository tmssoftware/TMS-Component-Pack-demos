{********************************************************************}
{ TMS TAdvPolyList Demo                                              }
{                                                                    }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2012                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit UDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, AdvHorizontalPolyList, GDIPWedgeItem,
  GDIPImageTextButtonSectionItem, GDIPLargeButtonedItem, ComCtrls,
  GDIPRadioItem, GDIPButtonItem, GDIPImageTextButtonItem, GDIPDropDownItem,
  GDIPGroupItem, GDIPSectionItem, GDIPImageSectionItem, GDIPHTMLSectionItem,
  GDIPHTMLItem, GDIPCustomItem, GDIPTextItem, GDIPImageTextItem,
  GDIPGraphicItem, GDIPCheckItem, CustomItemsContainer, AdvPolyList, GDIPImageItem,
  StdCtrls, ExtCtrls, AdvPolyPager, GDIPPictureContainer, AdvStyleIF, GDIPLargeButtonedHTMLItem;

type
  TForm665 = class(TForm)
    AdvPolyList1: TAdvPolyList;
    HTMLSectionItem1: THTMLSectionItem;
    HTMLSectionItem2: THTMLSectionItem;
    HTMLItem5: THTMLItem;
    HTMLItem6: THTMLItem;
    GroupItem1: TGroupItem;
    AdvPolyList2: TAdvPolyList;
    CheckItem1: TCheckItem;
    CheckItem2: TCheckItem;
    CheckItem3: TCheckItem;
    CheckItem4: TCheckItem;
    CheckItem5: TCheckItem;
    CheckItem10: TCheckItem;
    CheckItem11: TCheckItem;
    CheckItem12: TCheckItem;
    CheckItem13: TCheckItem;
    GDIPPictureContainer1: TGDIPPictureContainer;
    AdvPolyList3: TAdvPolyList;
    DropDownItem1: TDropDownItem;
    ButtonItem1: TButtonItem;
    ButtonItem2: TButtonItem;
    ButtonItem3: TButtonItem;
    ButtonItem4: TButtonItem;
    DropDownItem2: TDropDownItem;
    RadioItem1: TRadioItem;
    RadioItem2: TRadioItem;
    RadioItem3: TRadioItem;
    RadioItem4: TRadioItem;
    AdvPolyList4: TAdvPolyList;
    LargeButtonedItem1: TLargeButtonedItem;
    TextItem1: TTextItem;
    AdvHorizontalPolyList1: TAdvHorizontalPolyList;
    MonthCalendar1: TMonthCalendar;
    TextItem2: TTextItem;
    AdvPolyList5: TAdvPolyList;
    HTMLItem1: THTMLItem;
    HTMLItem2: THTMLItem;
    HTMLItem3: THTMLItem;
    WedgeItem1: TWedgeItem;
    ImageSectionItem1: TImageSectionItem;
    AdvPolyPager1: TAdvPolyPager;
    AdvPolyPage1: TAdvPolyPage;
    Label1: TLabel;
    AdvPolyPage2: TAdvPolyPage;
    AdvPolyPage3: TAdvPolyPage;
    ImageSectionItem2: TImageSectionItem;
    CheckItem6: TCheckItem;
    CheckItem7: TCheckItem;
    CheckItem8: TCheckItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    HTMLItem4: THTMLItem;
    HTMLItem7: THTMLItem;
    HTMLItem8: THTMLItem;
    Panel1: TPanel;
    Image1: TImage;
    Label2: TLabel;
    StatusBar1: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure CheckItem1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure AdvHorizontalPolyList1ItemSelect(Sender: TObject;
      Item: TCustomItem; var Allow: Boolean);
    procedure ButtonItem1ItemButtonClick(Sender: TObject; Item: TCustomItem);
    procedure RadioItem1ItemCheckChanged(Sender: TObject; Item: TCustomItem;
      Checked: Boolean);
    procedure HTMLItem6DescriptionAnchorClick(Sender: TObject; Anchor: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form665: TForm665;

implementation

uses
  ShellApi;

{$R *.dfm}


procedure TForm665.AdvHorizontalPolyList1ItemSelect(Sender: TObject;
  Item: TCustomItem; var Allow: Boolean);
begin
  Image1.Picture.Assign((Item as TImageItem).Image);
end;

procedure TForm665.ButtonItem1ItemButtonClick(Sender: TObject;
  Item: TCustomItem);
begin
  StatusBar1.Panels[0].Text := (Item as TButtonItem).Caption;
end;

procedure TForm665.CheckItem1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  (Item as TCheckItem).Checked := not (Item as TCheckItem).Checked;
end;

procedure TForm665.FormCreate(Sender: TObject);
var
  I, J: Integer;
begin
  HTMLItem6.Description := '<ul><li><u>Meeting</u> with Steve at 8AM </li>'+
  '<li>Presentation <i>new</i> product at 3<b>PM</b></li>'+
  '<li>Meeting with <a href="mailto:john@email.com">John</a> at 4PM </li>'+
  '<li>Interview at 6<b>PM</b> - <font color="clred">cancelled</font></li>'+
  '</ul>';

  J := 0;
  for I := 0 to 19 do
  begin
    Randomize;
    with TImageItem(AdvHorizontalPolyList1.AddItem(TImageItem)) do
    begin
      Width := 200;
      ImageWidth := 175;
      ImageHeight := 175;
      Inc(J);
      if J > 8 then
        J := 1;
      Image.LoadFromFile('Sample photos\'+inttostr(J)+'.jpg');
      Caption := 'Nature picture ' + inttostr(I + 1);
      AspectRatio := true;
    end;
  end;



 {
  AStyle := tsOffice2007Luna;
  AdvPolyList1.SetComponentStyle(AStyle);
  AdvPolyList2.SetComponentStyle(AStyle);
  AdvPolyList3.SetComponentStyle(AStyle);
  AdvPolyList4.SetComponentStyle(AStyle);
  AdvPolyList5.SetComponentStyle(AStyle);
  AdvHorizontalPolyList1.SetComponentStyle(AStyle);
}
  AdvPolyList1.List.ConvertItem(TextItem2, TSectionItem);
  (AdvPolyList1.List.Items[1] as TSectionItem).Caption := '';
  (AdvPolyList1.List.Items[1] as TSectionItem).LineVisible := false;


  AdvHorizontalPolyList1.SelectItem(0);
end;

procedure TForm665.HTMLItem6DescriptionAnchorClick(Sender: TObject;
  Anchor: string);
begin
  ShellExecute(Handle, 'Open', PChar(Anchor), nil, nil, SW_SHOWNORMAL);
end;

procedure TForm665.RadioItem1ItemCheckChanged(Sender: TObject;
  Item: TCustomItem; Checked: Boolean);
begin
  if Checked then
    StatusBar1.Panels[0].Text := (Item as TRadioItem).Caption;
end;

end.
