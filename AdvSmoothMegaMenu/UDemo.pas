{********************************************************************}
{ TMS TAdvSmoothMegaMenu Demo                                        }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2014                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit UDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvSmoothMegaMenu, GDIPFILL, ComCtrls, AdvGDIP, AdvStyleIF,
  AdvSmoothMegaMenuGallery, GDIPPictureContainer, GDIPMenu, ShellAPI;

type
  TForm181 = class(TForm)
    AdvSmoothMegaMenu1: TAdvSmoothMegaMenu;
    StatusBar1: TStatusBar;
    Button1: TButton;
    GDIPPictureContainer1: TGDIPPictureContainer;
    PageControl1: TPageControl;
    Memo1: TMemo;
    TabSheet1: TTabSheet;
    MonthCalendar1: TMonthCalendar;
    procedure StatusBar1DrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
      const Rect: TRect);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure AdvSmoothMegaMenu1MenuItemClick(Sender: TObject;
      ItemIndex: Integer);
    procedure AdvSmoothMegaMenu1MenuSubItemAnchorClick(Sender: TObject;
      Menu: TAdvSmoothMegaMenu; MenuItem: TAdvSmoothMegaMenuItem;
      Item: TGDIPMenuSectionItem; Anchor: string);
    procedure AdvSmoothMegaMenu1MenuSubItemCheckChanged(Sender: TObject;
      Menu: TAdvSmoothMegaMenu; MenuItem: TAdvSmoothMegaMenuItem;
      item: TGDIPMenuSectionItem);
    procedure AdvSmoothMegaMenu1MenuSubItemClick(Sender: TObject;
      Menu: TAdvSmoothMegaMenu; MenuItem: TAdvSmoothMegaMenuItem;
      Item: TGDIPMenuSectionItem; Text: string);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure UpdateStyle;
    procedure AddSpecialHistory(str: String);
    procedure HistoryRead(Item: TGDIPMenuSectionItem);
    procedure AddNormalHistory(str: String);
  end;

var
  Form181: TForm181;
  f: TGDIPFill;
  style: String;
  counthistory: integer;
  bkf: TGDIPFill;

implementation

{$R *.dfm}

procedure TForm181.AddNormalHistory(str: String);
begin
  with AdvSmoothMegaMenu1.MenuItems[2].Menu.Sections[0] do
  begin
    with items.Add do
    begin
      begin
        GraphicLeftName := 'newshistory';
        Text := '<p>'+str+'</p>';
        Data := 'news';
      end;
    end;
  end;
  inc(counthistory);
  if counthistory >= 6 then
    AdvSmoothMegaMenu1.MenuItems[2].Menu.Sections[0].Items[0].free;
end;

procedure TForm181.AddSpecialHistory(str: String);
begin
  with AdvSmoothMegaMenu1.MenuItems[2].Menu.Sections[0] do
  begin
    with items.Add do
    begin
      begin
        GraphicLeftName := 'specialhistory';
        Text := '<p>'+str+'</p>';
        Data := 'specialnews';
      end;
    end;
  end;
  inc(counthistory);
  if counthistory >= 6 then
    AdvSmoothMegaMenu1.MenuItems[2].Menu.Sections[0].Items[0].free;
end;

procedure TForm181.AdvSmoothMegaMenu1MenuItemClick(Sender: TObject;
  ItemIndex: Integer);
begin
  if Itemindex = 5 then
    Self.Close
end;

procedure TForm181.AdvSmoothMegaMenu1MenuSubItemAnchorClick(Sender: TObject;
  Menu: TAdvSmoothMegaMenu; MenuItem: TAdvSmoothMegaMenuItem;
  Item: TGDIPMenuSectionItem; Anchor: string);
begin
  ShellExecute(Handle, 'open', PChar(Anchor), nil, nil, SW_SHOW);
end;

procedure TForm181.AdvSmoothMegaMenu1MenuSubItemCheckChanged(Sender: TObject;
  Menu: TAdvSmoothMegaMenu; MenuItem: TAdvSmoothMegaMenuItem;
  item: TGDIPMenuSectionItem);
var
  I: Integer;
begin
  if item.Data = 'float' then
  begin
    if item.Checked then
    begin
      AdvSmoothMegaMenu1.MenuItems[0].FloatMenu(Self.Left + 20, Self.Top + 100);
      AdvSmoothMegaMenu1.MenuItems[1].FloatMenu(Self.Left + 300, Self.Top + 100);
      AdvSmoothMegaMenu1.MenuItems[2].FloatMenu(Self.Left + 660, Self.Top + 100);
    end
    else
    begin
      AdvSmoothMegaMenu1.MenuItems[0].CloseMenu(true);
      AdvSmoothMegaMenu1.MenuItems[1].CloseMenu(true);
      AdvSmoothMegaMenu1.MenuItems[2].CloseMenu(true);
    end;
  end
  else if item.Data = '0' then
  begin
    AdvSmoothMegaMenu1.Direction := mdHorizontal;
    AdvSmoothMegaMenu1.Align := alTop;
    AdvsmoothMegaMenu1.Height := 40;
    for I := 0 to AdvSmoothMegaMenu1.MenuItems.Count - 1 do
      AdvSmoothMegaMenu1.MenuItems[I].Menu.DropDownLocation := ddBottomRight;
  end
  else if item.Data = '1' then
  begin
    AdvSmoothMegaMenu1.Direction := mdVertical;
    AdvSmoothMegaMenu1.Align := alLeft;
    AdvsmoothMegaMenu1.Width := 200;
    for I := 0 to AdvSmoothMegaMenu1.MenuItems.Count - 1 do
      AdvSmoothMegaMenu1.MenuItems[I].Menu.DropDownLocation := ddRightCenterCenter;
  end;
end;

procedure TForm181.AdvSmoothMegaMenu1MenuSubItemClick(Sender: TObject;
  Menu: TAdvSmoothMegaMenu; MenuItem: TAdvSmoothMegaMenuItem;
  Item: TGDIPMenuSectionItem; Text: string);
var
  m: TMemo;
  p: TTabSheet;
  activm: TMemo;
  I: Integer;
begin
  activm := (PageControl1.ActivePage.Controls[0] as TMemo);
  if item.Data = 'cut' then
  begin
    activm.CutToClipboard;
    AddNormalHistory('Cut Text to clipboard');
  end
  else if item.Data = 'copy' then
  begin
    activm.CopyToClipboard;
    AddNormalHistory('Copy Text to clipboard');
  end
  else if item.Data = 'paste' then
  begin
    activm.PasteFromClipboard;
    AddNormalHistory('Paste Text from clipboard');
  end
  else if item.Data = 'new' then
  begin
    p := TTabSheet.Create(PageControl1);
    m := TMemo.Create(p);
    m.Parent := p;
    m.Align := alClient;
    p.Caption := 'New Page ' + inttostr(PageControl1.PageCount);
    p.PageControl := PageControl1;
    m.Lines.Add('This is a new page');

    AddSpecialHistory('Added new Page');
  end
  else if item.Data = 'save' then
  begin
    showmessage('save clicked');
    AddNormalHistory('Saving Document' + PageControl1.ActivePage.Caption);
  end
  else if item.Data = 'saveall' then
  begin
    ShowMessage('save all clicked');
    for I := 0 to PageControl1.PageCount - 1 do
      AddNormalHistory('Saving Document ' + inttostr(I) + ' ' + PageControl1.Pages[I].Caption);
  end
  else if item.Data = 'exit' then
    close
  else if item.Data = 'news' then
    HistoryRead(item);

  AdvSmoothMegaMenu1.MenuItems[0].CloseMenu;
  AdvSmoothMegaMenu1.MenuItems[1].CloseMenu;
end;

procedure TForm181.Button1Click(Sender: TObject);
var
  g: TAdvSmoothMegaMenuGalleryForm;
  I: Integer;
begin
  AdvSmoothMegaMenu1.MenuItems[3].CloseMenu;
  g := TAdvSmoothMegaMenuGalleryForm.Create(Application);
  g.FormStyle := fsStayOnTop;

  AddSpecialHistory('Showing Style Gallery');

  if g.ShowModal = 1 then
    AdvSmoothMegaMenu1.LoadFromFile(g.GalleryFile, true);

  style := ExtractFileName(g.GalleryFile);
  UpdateStyle;
  AddSpecialHistory('Updating Style: ' + style);
  g.Free;

  //apply default top layer style:
  for I := 0 to AdvSmoothMegaMenu1.MenuItems[4].Menu.TopLayerItems.Count - 1 do
    AdvSmoothMegaMenu1.MenuItems[4].Menu.TopLayerItems[I].Fill.Assign(bkf);
end;

procedure TForm181.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  f.Free;
  bkf.Free;
end;

procedure TForm181.FormCreate(Sender: TObject);
var
  i: integer;
  s: TCurrentItem;
begin
  StatusBar1.DoubleBuffered := true;
  f := TGDIPFill.Create;
  bkf := TGDIPFill.Create;
  UpdateStyle;
  style := 'Loaded Style: Office 2007 Luna.MMProp';
  AdvSmoothMegaMenu1.MenuItems[3].Menu.Sections[0].Items[0].Control := Button1;
  AdvSmoothMegaMenu1.MenuItems[3].Menu.Sections[0].Items[2].Control := MonthCalendar1;
  for I := 0 to AdvSmoothMegaMenu1.MenuItems.Count - 1 do
    AdvSmoothMegaMenu1.MenuItems[I].Menu.DropDownLocation := ddBottomRight;

  AdvSmoothMegaMenu1.MenuItems[5].Menu.Sections.Clear;

  //history
  AddNormalHistory('Started Sample');
  AddNormalHistory(style);


  bkf.Assign(AdvSmoothMegaMenu1.MenuItems[4].Menu.TopLayerItems[0].Fill);

  with AdvSmoothMegaMenu1.MenuItems[4].Menu do
  begin
    s.item := Sections[0].Items[0];
    s.section := Sections[0];
    SelectedItem := s;
  end;
end;

procedure TForm181.HistoryRead(Item: TGDIPMenuSectionItem);
begin
  if Item.Data = 'news' then
    item.GraphicLeftName := 'readhistory';
end;

procedure TForm181.StatusBar1DrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
var
  g: TGPGraphics;
  tw, th: integer;
begin
  StatusBar.Canvas.Brush.Style := bsClear;
  statusBar.Canvas.Font.Size := 10;
  tw := StatusBar.Canvas.TextWidth(style);
  th := Statusbar.Canvas.TextHeight(style);
  g := TGPGraphics.Create(StatusBar.Canvas.Handle);
  g.SetSmoothingMode(SmoothingModeAntiAlias);
  g.SetTextRenderingHint(TextRenderingHintAntiAlias);
  f.Fill(g, MakeRect(Rect.Left, Rect.Top, tw + 50, Rect.Bottom - rect.Top - 1));
  g.Free;
  StatusBar.Canvas.TextOut(Rect.Left + 25, Rect.Top + (Rect.Bottom - Rect.Top - 1 - th) div 2, style);
end;

procedure TForm181.UpdateStyle;
begin
  f.Assign(AdvSmoothMegaMenu1.ItemAppearance.MenuItemFillHover);
  StatusBar1.Invalidate;
end;

end.
