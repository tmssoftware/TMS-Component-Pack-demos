unit UDemoFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, GDIPPictureContainer, GDIPWedgeItem, GDIPCustomItem, GDIPTextItem,
  GDIPImageTextItem, CustomItemsContainer, AdvVerticalPolyList, AdvPolyList,
  GDIPGroupItem, StdCtrls, GDIPImageItem, GDIPSplitterItem, GDIPCheckItem,
  GDIPRadioItem, GDIPHeaderItem, GDIPFullDropDownItem, GDIPGraphicItem,
  GDIPButtonItem, GDIPImageTextButtonItem, GDIPImageTextButtonSectionItem,
  GDIPLargeButtonedItem, Spin, AdvHorizontalPolyList, ExtCtrls, GDIPHTMLItem,
  GDIPSectionItem, GDIPImageSectionItem, AdvGDIP;

type
  TTMSFrame1 = class(TFrame)
    AdvVerticalPolyList2: TAdvPolyMenu;
    ImageTextItem1: TImageTextItem;
    ImageTextItem3: TImageTextItem;
    ImageTextItem2: TImageTextItem;
    ImageTextItem4: TImageTextItem;
    WedgeItem7: TWedgeItem;
    WedgeItem8: TWedgeItem;
    WedgeItem9: TWedgeItem;
    WedgeItem10: TWedgeItem;
    ImageTextItem5: TImageTextItem;
    ImageTextItem6: TImageTextItem;
    AdvVerticalPolyList5: TAdvVerticalPolyList;
    Label2: TLabel;
    Memo1: TMemo;
    ImageSectionItem1: TImageSectionItem;
    HTMLItem1: THTMLItem;
    Panel2: TPanel;
    AdvVerticalPolyList8: TAdvVerticalPolyList;
    AdvHorizontalPolyList1: TAdvHorizontalPolyList;
    Panel1: TPanel;
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    LargeButtonedItem4: TLargeButtonedItem;
    SectionItem4: TSectionItem;
    SectionItem5: TSectionItem;
    SectionItem6: TSectionItem;
    ButtonItem1: TButtonItem;
    ButtonItem2: TButtonItem;
    ButtonItem3: TButtonItem;
    ButtonItem4: TButtonItem;
    SectionItem10: TSectionItem;
    FullDropDownItem1: TFullDropDownItem;
    HeaderItem1: THeaderItem;
    ImageTextItem7: TImageTextItem;
    ImageTextItem8: TImageTextItem;
    ImageTextItem9: TImageTextItem;
    ImageTextItem10: TImageTextItem;
    HeaderItem2: THeaderItem;
    RadioItem1: TRadioItem;
    RadioItem2: TRadioItem;
    RadioItem3: TRadioItem;
    RadioItem4: TRadioItem;
    RadioItem5: TRadioItem;
    SplitterItem1: TSplitterItem;
    CheckItem1: TCheckItem;
    CheckItem2: TCheckItem;
    CheckItem3: TCheckItem;
    AdvVerticalPolyList7: TAdvVerticalPolyList;
    AdvPolyList1: TAdvPolyList;
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
    SectionItem3: TSectionItem;
    GroupItem1: TGroupItem;
    GroupItem2: TGroupItem;
    AdvVerticalPolyList6: TAdvVerticalPolyList;
    SectionItem2: TSectionItem;
    ImageTextButtonItem1: TImageTextButtonItem;
    SectionItem7: TSectionItem;
    ImageTextButtonItem2: TImageTextButtonItem;
    SectionItem8: TSectionItem;
    ImageTextButtonItem3: TImageTextButtonItem;
    SectionItem11: TSectionItem;
    ImageTextButtonItem4: TImageTextButtonItem;
    SectionItem12: TSectionItem;
    AdvVerticalPolyList3: TAdvVerticalPolyList;
    Edit1: TEdit;
    SectionItem1: TSectionItem;
    LargeButtonedItem1: TLargeButtonedItem;
    LargeButtonedItem2: TLargeButtonedItem;
    LargeButtonedItem3: TLargeButtonedItem;
    GDIPPictureContainer1: TGDIPPictureContainer;
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
    procedure WedgeItem10ItemClick(Sender: TObject; Item: TCustomItem);
    procedure WedgeItem10ItemSelect(Sender: TObject; Item: TCustomItem;
      var Allow: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowPage(Item: integer);
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  ShellApi;

{$R *.dfm}

{ TTMSFrame1 }

constructor TTMSFrame1.Create(AOwner: TComponent);
begin
  inherited;
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

procedure TTMSFrame1.CheckItem1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  if Item is TCheckItem then
    Memo1.Lines.Add(TCheckItem(Item).Caption + ' clicked')
  else if Item is TRadioItem then
    Memo1.Lines.Add(TRadioItem(Item).Caption + ' clicked');
end;

procedure TTMSFrame1.HTMLItem1CaptionAnchorClick(Sender: TObject; Anchor: string);
begin
  ShellExecute(Handle, 'Open', PChar(Anchor), nil, nil, SW_SHOWNORMAL);
  Memo1.Lines.Add('Click on Anchor : ' + Anchor);
end;

procedure TTMSFrame1.ImageItem10ItemClick(Sender: TObject; Item: TCustomItem);
begin
  Memo1.Lines.Add(TImageTextItem(Item).Caption + ' Clicked');
end;

procedure TTMSFrame1.ImageItem1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  Memo1.Lines.Add(TImageTextItem(Item).Caption + ' Clicked');
end;

procedure TTMSFrame1.ImageTextButtonItem1ItemButtonClick(Sender: TObject;
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

procedure TTMSFrame1.ImageTextItem10ItemClick(Sender: TObject; Item: TCustomItem);
begin
  Memo1.Lines.Add(TImageTextItem(Item).Caption + ' clicked');
end;

procedure TTMSFrame1.ImageTextItem1ItemClick(Sender: TObject; Item: TCustomItem);
begin
  Memo1.Lines.Add(TImageTextItem(Item).Caption + ' Clicked');
  case item.Index of
    9:
    begin

    end;
  end;
end;

procedure TTMSFrame1.LargeButtonedItem1ItemButtonClick(Sender: TObject;
  Item: TCustomItem);
begin
  Memo1.Lines.Add(TLargeButtonedItem(Item).ButtonCaption + ' Clicked');
end;

procedure TTMSFrame1.LargeButtonedItem4ItemButtonClick(Sender: TObject;
  Item: TCustomItem);
begin
  Memo1.Lines.Add(TLargeButtonedItem(Item).ButtonCaption + ' Clicked with copies : ' + inttostr(SpinEdit1.Value));
end;

procedure TTMSFrame1.RadioItem1DrawGraphic(Sender: TObject; g: TGPGraphics;
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

procedure TTMSFrame1.ShowPage(Item: integer);
begin
  case Item of
    4:
    begin
      AdvVerticalPolyList3.Visible := True;
      AdvVerticalPolyList6.Visible := False;
      AdvVerticalPolyList7.Visible := False;
      AdvVerticalPolyList8.Visible := False;
      AdvVerticalPolyList3.BringToFront;
    end;
    5:
    begin
      AdvVerticalPolyList3.Visible := False;
      AdvVerticalPolyList6.Visible := True;
      AdvVerticalPolyList7.Visible := False;
      AdvVerticalPolyList8.Visible := False;
      AdvVerticalPolyList6.BringToFront;
    end;
    6:
    begin
      AdvVerticalPolyList3.Visible := False;
      AdvVerticalPolyList6.Visible := False;
      AdvVerticalPolyList7.Visible := True;
      AdvVerticalPolyList8.Visible := False;
      AdvVerticalPolyList7.BringToFront;
    end;
    7:
    begin
      AdvVerticalPolyList3.Visible := False;
      AdvVerticalPolyList6.Visible := False;
      AdvVerticalPolyList7.Visible := False;
      AdvVerticalPolyList8.Visible := True;
      AdvVerticalPolyList8.BringToFront;
    end;
  end;
end;

procedure TTMSFrame1.WedgeItem10ItemClick(Sender: TObject; Item: TCustomItem);
begin
  AdvVerticalPolyList2.SelectItem(Item.Index);
end;

procedure TTMSFrame1.WedgeItem10ItemSelect(Sender: TObject; Item: TCustomItem;
  var Allow: Boolean);
begin
  ShowPage(Item.Index);
  if item is TWedgeItem then
    Memo1.Lines.Add('Page ' + TWedgeItem(Item).Caption + ' Selected');
end;

end.
