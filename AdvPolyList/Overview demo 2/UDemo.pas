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
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  GDIPPictureContainer, GDIPHTMLItem, StdCtrls, GDIPWedgeItem,
  GDIPDropDownItem, GDIPButtonItem, GDIPGraphicItem, GDIPCheckItem,
  GDIPRadioItem, Spin, ExtCtrls, AdvHorizontalPolyList, GDIPImageSectionItem,
  GDIPGroupItem, GDIPImageItem, AdvPolyList, GDIPImageTextItem,
  GDIPImageTextButtonItem, GDIPImageTextButtonSectionItem,
  GDIPLargeButtonedItem, GDIPCustomItem, GDIPTextItem, GDIPSectionItem,
  CustomItemsContainer, AdvVerticalPolyList, AdvStyleIF,
  GDIPFullDropDownItem, GDIPHeaderItem, GDIPSplitterItem, GDIPLargeButtonedHTMLItem,
  AdvGDIP;

type
  TForm2 = class(TForm)
    GDIPPictureContainer1: TGDIPPictureContainer;
    AdvVerticalPolyList2: TAdvVerticalPolyList;
    WedgeItem7: TWedgeItem;
    WedgeItem8: TWedgeItem;
    WedgeItem9: TWedgeItem;
    WedgeItem10: TWedgeItem;
    AdvVerticalPolyList3: TAdvVerticalPolyList;
    SectionItem1: TSectionItem;
    Edit1: TEdit;
    LargeButtonedItem1: TLargeButtonedItem;
    LargeButtonedItem3: TLargeButtonedItem;
    AdvVerticalPolyList5: TAdvVerticalPolyList;
    AdvVerticalPolyList6: TAdvVerticalPolyList;
    AdvVerticalPolyList7: TAdvVerticalPolyList;
    AdvVerticalPolyList8: TAdvVerticalPolyList;
    SectionItem2: TSectionItem;
    ImageTextButtonItem1: TImageTextButtonItem;
    ImageTextButtonItem2: TImageTextButtonItem;
    SectionItem3: TSectionItem;
    GroupItem1: TGroupItem;
    AdvPolyList1: TAdvPolyList;
    GroupItem2: TGroupItem;
    ImageItem1: TImageItem;
    ImageItem2: TImageItem;
    ImageItem3: TImageItem;
    ImageItem4: TImageItem;
    ImageItem5: TImageItem;
    ImageItem6: TImageItem;
    Edit2: TEdit;
    AdvPolyList2: TAdvPolyList;
    ImageItem7: TImageItem;
    ImageItem8: TImageItem;
    ImageItem9: TImageItem;
    ImageItem10: TImageItem;
    ImageItem11: TImageItem;
    ImageItem12: TImageItem;
    ImageItem13: TImageItem;
    ImageItem14: TImageItem;
    ImageItem15: TImageItem;
    ImageItem16: TImageItem;
    ImageItem17: TImageItem;
    AdvHorizontalPolyList1: TAdvHorizontalPolyList;
    LargeButtonedItem4: TLargeButtonedItem;
    SectionItem4: TSectionItem;
    Panel1: TPanel;
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    SectionItem5: TSectionItem;
    SectionItem6: TSectionItem;
    ImageTextItem1: TImageTextItem;
    ImageTextItem2: TImageTextItem;
    ImageTextItem3: TImageTextItem;
    ImageTextItem4: TImageTextItem;
    ImageTextItem5: TImageTextItem;
    ImageTextItem6: TImageTextItem;
    ImageSectionItem1: TImageSectionItem;
    SectionItem8: TSectionItem;
    HTMLItem1: THTMLItem;
    Memo1: TMemo;
    ButtonItem1: TButtonItem;
    ButtonItem2: TButtonItem;
    ButtonItem3: TButtonItem;
    ButtonItem4: TButtonItem;
    SectionItem10: TSectionItem;
    SectionItem7: TSectionItem;
    ImageTextButtonItem3: TImageTextButtonItem;
    ImageTextButtonItem4: TImageTextButtonItem;
    SectionItem11: TSectionItem;
    SectionItem12: TSectionItem;
    Panel2: TPanel;
    FullDropDownItem1: TFullDropDownItem;
    HeaderItem1: THeaderItem;
    HeaderItem2: THeaderItem;
    ImageTextItem7: TImageTextItem;
    ImageTextItem8: TImageTextItem;
    ImageTextItem9: TImageTextItem;
    ImageTextItem10: TImageTextItem;
    RadioItem1: TRadioItem;
    RadioItem2: TRadioItem;
    RadioItem3: TRadioItem;
    RadioItem4: TRadioItem;
    RadioItem5: TRadioItem;
    SplitterItem1: TSplitterItem;
    CheckItem1: TCheckItem;
    CheckItem2: TCheckItem;
    CheckItem3: TCheckItem;
    Label2: TLabel;
    LargeButtonedItem2: TLargeButtonedItem;
    procedure FormCreate(Sender: TObject);
    procedure AdvVerticalPolyList2ItemSelect(Sender: TObject; Item: TCustomItem;
      var Allow: Boolean);
    procedure ImageTextItem1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure ImageTextButtonItem1ItemButtonClick(Sender: TObject;
      Item: TCustomItem);
    procedure LargeButtonedItem1ItemButtonClick(Sender: TObject;
      Item: TCustomItem);
    procedure LargeButtonedItem4ItemButtonClick(Sender: TObject;
      Item: TCustomItem);
    procedure ImageItem1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure ImageItem10ItemClick(Sender: TObject; Item: TCustomItem);
    procedure HTMLItem1CaptionAnchorClick(Sender: TObject; Anchor: string);
    procedure ImageTextItem10ItemClick(Sender: TObject; Item: TCustomItem);
    procedure CheckItem1ItemClick(Sender: TObject; Item: TCustomItem);
    procedure RadioItem1DrawGraphic(Sender: TObject; g: TGPGraphics;
      Rect: TGPRectF; Item: TCustomItem; Checked: Boolean; State: TGraphicState;
      Kind: TGraphicKind; Enabled: Boolean; var Default: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure HidePages;
    procedure ShowPage(Item: integer);
  end;

var
  Form2: TForm2;
  separator: TSectionItem;

implementation

uses
  ShellApi;

{$R *.dfm}

procedure TForm2.AdvVerticalPolyList2ItemSelect(Sender: TObject;
  Item: TCustomItem; var Allow: Boolean);
begin
  ShowPage(Item.Index);
  if item is TWedgeItem then
    Memo1.Lines.Add('Page ' + TWedgeItem(Item).Caption + ' Selected');
end;

procedure TForm2.CheckItem1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  if Item is TCheckItem then
    Memo1.Lines.Add(TCheckItem(Item).Caption + ' clicked')
  else if Item is TRadioItem then
    Memo1.Lines.Add(TRadioItem(Item).Caption + ' clicked');
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  AdvVerticalPolyList3.ConnectContainer(AdvVerticalPolyList5, ccRight, cmGradientBorder);
  AdvVerticalPolyList6.ConnectContainer(AdvVerticalPolyList5, ccRight, cmGradientBorder);
  AdvVerticalPolyList7.ConnectContainer(AdvVerticalPolyList5, ccRight, cmGradientBorder);
  AdvVerticalPolyList8.ConnectContainer(AdvVerticalPolyList5, ccRight, cmGradientBorder);
  AdvVerticalPolyList3.BorderTypes := [btGradientRight];
  AdvVerticalPolyList6.BorderTypes := [btGradientRight];
  AdvVerticalPolyList7.BorderTypes := [btGradientRight];
  AdvVerticalPolyList8.BorderTypes := [btGradientRight];
  AdvVerticalPolyList5.BorderTypes := [];
  AdvVerticalPolyList2.BorderTypes := [btNormalRight];
  AdvVerticalPolyList2.BorderMode := bmTransition;


  LargeButtonedItem2.Description := 'Before sharing this file please be aware that it contains:';
  LargeButtonedItem2.Description := LargeButtonedItem2.Description+ #13#10+
  '- Document properties and author''s name'+ #13#10+
  '- Custom XML Data'+ #13#10+
  '- Content that people with disabilities find difficult to read';

  LargeButtonedItem3.Caption := 'You can open or delete a version file. Most autosaved versions are deleted when you close this file.';
  LargeButtonedItem3.Description := 'There are no previous versions of this file.';

  LargeButtonedItem4.Caption := '';

  AdvVerticalPolyList2.SelectItem(4);
  SectionItem7.Caption := '';
  SectionItem7.Visible := false;
  SectionItem8.Caption := '';
  SectionItem8.Visible := false;
  SectionItem11.Caption := '';
  SectionItem11.Visible := false;
  SectionItem12.Caption := '';
  SectionItem12.Visible := false;
  LargeButtonedItem4.Caption := '';
  SectionItem6.Status.Position := spItemRectangle;
  SectionItem6.Status.OffsetLeft := 0;

  ImageTextButtonItem1.Down := true;
  ImageTextButtonItem2.Down := true;
  FullDropDownItem1.ItemIndex := 1;
end;

procedure TForm2.HidePages;
begin
  AdvVerticalPolyList3.Visible := false;
  AdvVerticalPolyList6.Visible := false;
  AdvVerticalPolyList7.Visible := false;
  AdvVerticalPolyList8.Visible := false;
end;

procedure TForm2.HTMLItem1CaptionAnchorClick(Sender: TObject; Anchor: string);
begin
  ShellExecute(Handle, 'Open', PChar(Anchor), nil, nil, SW_SHOWNORMAL);
  Memo1.Lines.Add('Click on Anchor : ' + Anchor);
end;

procedure TForm2.ImageItem10ItemClick(Sender: TObject; Item: TCustomItem);
begin
  Memo1.Lines.Add(TImageTextItem(Item).Caption + ' Clicked');
end;

procedure TForm2.ImageItem1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  Memo1.Lines.Add(TImageTextItem(Item).Caption + ' Clicked');
end;

procedure TForm2.ImageTextButtonItem1ItemButtonClick(Sender: TObject;
  Item: TCustomItem);
begin
  if item.Tag = 0 then
  begin
    item.Tag := 1
  end
  else
  begin
    item.Tag := 0;
  end;

  if item.Tag = 1 then
    Memo1.Lines.Add('Pinned Item ' + TImageTextButtonItem(item).Caption)
  else
    Memo1.Lines.Add('Unpinned Item ' + TImageTextButtonItem(item).Caption);

  SectionItem7.Visible := false;
  SectionItem8.Visible := false;
  SectionItem11.Visible := false;
  SectionItem12.Visible := false;

  if ImageTextButtonItem1.Tag = 1 then
  begin
    SectionItem7.Visible := true;
    SectionItem8.Visible := false;
    SectionItem11.Visible := false;
    SectionItem12.Visible := false;
  end;
  if ImageTextButtonItem2.Tag = 1 then
  begin
    SectionItem7.Visible := false;
    SectionItem8.Visible := true;
    SectionItem11.Visible := false;
    SectionItem12.Visible := false;
  end;
  if ImageTextButtonItem3.Tag = 1 then
  begin
    SectionItem7.Visible := false;
    SectionItem8.Visible := false;
    SectionItem11.Visible := true;
    SectionItem12.Visible := false;
  end;
  if ImageTextButtonItem4.Tag = 1 then
  begin
    SectionItem7.Visible := false;
    SectionItem8.Visible := false;
    SectionItem11.Visible := false;
    SectionItem12.Visible := true;
  end
end;

procedure TForm2.ImageTextItem10ItemClick(Sender: TObject; Item: TCustomItem);
begin
  Memo1.Lines.Add(TImageTextItem(Item).Caption + ' clicked');
end;

procedure TForm2.ImageTextItem1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  Memo1.Lines.Add(TImageTextItem(Item).Caption + ' Clicked');
  case item.Index of
    9:
    begin
      Close;
    end;
  end;
end;

procedure TForm2.LargeButtonedItem1ItemButtonClick(Sender: TObject;
  Item: TCustomItem);
begin
  Memo1.Lines.Add(TLargeButtonedItem(Item).ButtonCaption + ' Clicked');
end;

procedure TForm2.LargeButtonedItem4ItemButtonClick(Sender: TObject;
  Item: TCustomItem);
begin
  Memo1.Lines.Add(TLargeButtonedItem(Item).ButtonCaption + ' Clicked with copies : ' + inttostr(SpinEdit1.Value));
end;

procedure TForm2.RadioItem1DrawGraphic(Sender: TObject; g: TGPGraphics;
  Rect: TGPRectF; Item: TCustomItem; Checked: Boolean; State: TGraphicState;
  Kind: TGraphicKind; Enabled: Boolean; var Default: Boolean);
var
  b: TGPBrush;
  p: TGPPen;
begin
  default := false;
  case Kind of
    gkRadioButton:
    begin
      if Checked then
      begin
        case State of
          gsHovered, gsDown, gsNormal:
          begin
            b := TGPSolidBrush.Create(MakeColor(255, RGB(254, 144, 0)));
            g.FillEllipse(b, MakeRect(Rect.X + 5, Rect.Y + 5, Rect.Width - 10, Rect.Height - 10));
            b.Free;
          end;
        end;
      end
      else
      begin
        case State of
          gsHovered, gsDown, gsNormal:
          begin
            p := TGPPen.Create(MakeColor(255, RGB(254, 144, 0)));
            g.DrawEllipse(p, MakeRect(Rect.X + 5, Rect.Y + 5, Rect.Width - 10, Rect.Height - 10));
            p.Free;
          end;
        end;
      end;
    end;
    gkCheckBox:
    begin
      if Checked then
      begin
        AdvVerticalPolyList8.List.Appearance.ButtonSelected.Fill(g, Rect);
        p := TGPPen.Create(MakeColor(255, clBlack));
        g.DrawLine(p, Rect.X + Rect.Width / 6 * 2, Rect.Y + Rect.Height / 2, Rect.X + Rect.Width / 4 * 2, Rect.Y + Rect.Height / 4 * 3);
        g.DrawLine(p, Rect.X + Rect.Width / 4 * 2, Rect.Y + Rect.Height / 4 * 3, Rect.X + Rect.Width / 4 * 3, Rect.Y + Rect.Height / 3);
        p.Free;
      end;
    end;
  end;

  if item.State = isNormal then
  begin
    p := TGPPEN.Create(MakeColor(255, RGB(226, 228, 231)));
    g.drawline(p, Rect.X + Rect.Width + 5, Item.Y, Rect.X + Rect.Width + 5, Item.Y + Item.Height);
    p.Free;
  end;
end;

procedure TForm2.ShowPage(Item: integer);
begin
  HidePages;

  case Item of
    4:
    begin
      AdvVerticalPolyList3.Visible := true;
    end;
    5:
    begin
      AdvVerticalPolyList6.Visible := true;
    end;
    6:
    begin
      AdvVerticalPolyList7.Visible := true;
    end;
    7:
    begin
      AdvVerticalPolyList8.Visible := true;
    end;
  end;
end;

end.
