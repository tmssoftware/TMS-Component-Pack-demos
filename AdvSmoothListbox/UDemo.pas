{********************************************************************}
{ TMS TAdvSmoothListBox Demo                                         }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2014                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit UDemo;

interface

uses
  Windows, SysUtils, Graphics, Forms, Controls, StdCtrls, Classes, AdvSmoothListBox,
  ExtCtrls, Math, ImgList, GDIPPictureContainer, jpeg, Dialogs, AdvStyleIF, ShellAPI, ComCtrls, AdvGDIP;

type
  TForm67 = class(TForm)
    AdvSmoothListBox1: TAdvSmoothListBox;
    Panel1: TPanel;
    Button1: TButton;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    GDIPPictureContainer1: TGDIPPictureContainer;
    ImageList1: TImageList;
    OpenDialog1: TOpenDialog;
    Label8: TLabel;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    Edit2: TEdit;
    Edit1: TEdit;
    AdvSmoothListBox3: TAdvSmoothListBox;
    AdvSmoothListBox2: TAdvSmoothListBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    ComboBox1: TComboBox;
    Label9: TLabel;
    Label10: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    CheckBox1: TCheckBox;
    AdvSmoothListBox4: TAdvSmoothListBox;
    ComboBox2: TComboBox;
    Label3: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    TabSheet5: TTabSheet;
    AdvSmoothListBox5: TAdvSmoothListBox;
    TabSheet6: TTabSheet;
    AdvSmoothListBox6: TAdvSmoothListBox;
    Label15: TLabel;
    TabSheet7: TTabSheet;
    AdvSmoothListBox7: TAdvSmoothListBox;
    AdvSmoothListBox8: TAdvSmoothListBox;
    Label16: TLabel;
    Label17: TLabel;
    AdvSmoothListBox9: TAdvSmoothListBox;
    Label18: TLabel;
    TabSheet8: TTabSheet;
    AdvSmoothListBox10: TAdvSmoothListBox;
    procedure FormCreate(Sender: TObject);
    procedure AdvSmoothListBox1ShowDetail(Sender: TObject; itemindex: Integer);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure AdvSmoothListBox2ItemClick(Sender: TObject; itemindex: Integer);
    procedure ComboBox1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure AdvSmoothListBox1AnchorClick(Sender: TObject; Anchor: string);
    procedure AdvSmoothListBox3ItemCheckClick(Sender: TObject;
      itemindex: Integer; checked: Boolean);
    procedure ComboBox2Change(Sender: TObject);
    procedure AdvSmoothListBox4ItemDragDrop(Sender: TObject; DragItemIndex,
      DropItemIndex: Integer; var allowdrop: Boolean);
    procedure AdvSmoothListBox5ItemButtonClick(Sender: TObject;
      itemindex: Integer);
    procedure AdvSmoothListBox6ItemDropDownSelect(Sender: TObject;
      Item: TAdvSmoothListBoxItem; ItemIndex: Integer; Value: string);
    procedure AdvSmoothListBox7DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure AdvSmoothListBox9DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure AdvSmoothListBox9DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure AdvSmoothListBox7DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure AdvSmoothListBox8DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure AdvSmoothListBox8DragDrop(Sender, Source: TObject; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TAdvSmoothCrackedListBox = class(TAdvSmoothListBox)

  end;

  TMonthCalendarDropDownItemSelect = procedure(Sender: TObject; Value: TDate) of object;

  TMonthCalendarDropDown = class(TPanel, ISmoothListBox)
  private
    FOwnerListBox: TAdvSmoothListBox;
    FOwnerListBoxItem: TAdvSmoothListBoxItem;
    FCal: TMonthCalendar;
    FOnItemSelect: TMonthCalendarDropDownItemSelect;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure DoEnter; override;
  protected
    procedure DoItemSelect(Sender: TObject; Value: TDate);
    procedure ItemSelected(Sender: TObject);
    procedure SetOwner(Owner: TAdvSmoothListBox; Item: TAdvSmoothListBoxItem);
    procedure Show(Item: TAdvSmoothListBoxItem);
  public
    property OnItemSelect: TMonthCalendarDropDownItemSelect read FOnItemSelect write FOnItemSelect;
    //property listbox
  end;

var
  Form67: TForm67;

implementation

{$R *.dfm}

{ TMonthCalendarDropDown }

constructor TMonthCalendarDropDown.Create(AOwner: TComponent);
begin
  inherited;
  FCal := TMonthCalendar.Create(Self);
  FCal.Parent := Self;
  FCal.OnClick := ItemSelected;
  Fcal.Width := 350;
  Fcal.Height := 297;
  Width := FCal.Width;
  Height := FCal.Height;
  FCal.Align := alClient;
end;

destructor TMonthCalendarDropDown.Destroy;
begin
  FCal.Free;
  inherited;
end;

procedure TMonthCalendarDropDown.DoEnter;
begin
  inherited;
  if Assigned(Fcal) then
    Fcal.SetFocus;
end;

procedure TMonthCalendarDropDown.DoItemSelect(Sender: TObject; Value: TDate);
begin
  if Assigned(FOnItemSelect) then
    FOnItemSelect(Sender, Value);

  if Assigned(FOwnerListBox) and Assigned(FOwnerListBoxItem) then
    TAdvSmoothCrackedListBox(FOwnerListBox).DoItemDropDownSelect(FOwnerListBox, FOwnerListBoxItem,
      FOwnerListBoxItem.Index, FormatDateTime('dd.mm.yyyy', Value));
end;

procedure TMonthCalendarDropDown.ItemSelected(Sender: TObject);
begin
  DoItemSelect(Sender, FCal.date);
end;

procedure TMonthCalendarDropDown.SetOwner(Owner: TAdvSmoothListBox;
  Item: TAdvSmoothListBoxItem);
begin
  FOwnerListBox := Owner;
  FOwnerListBoxItem := Item;
end;

procedure TMonthCalendarDropDown.Show(Item: TAdvSmoothListBoxItem);
begin
  if Item.Info <> '' then
    FCal.Date := StrToDate(Item.Info);
end;


procedure TForm67.AdvSmoothListBox1AnchorClick(Sender: TObject; Anchor: string);
begin
  ShellExecute(WindowHandle, 'Open', Pchar(Anchor), nil, nil, SW_SHOWNORMAL);
end;

procedure TForm67.AdvSmoothListBox1ShowDetail(Sender: TObject;
  itemindex: Integer);
begin
  with AdvSmoothListBox1.Items[itemindex] do
  begin
    Edit1.Text := Caption;
    Edit2.Text := Info;
    Memo1.Text := Notes;
  end;
end;

procedure TForm67.AdvSmoothListBox2ItemClick(Sender: TObject;
  itemindex: Integer);
begin
  AdvSmoothListBox1.Invalidate;
end;

procedure TForm67.AdvSmoothListBox3ItemCheckClick(Sender: TObject;
  itemindex: Integer; checked: Boolean);
var
  I: Integer;
  count: integer;
begin
  if checked then
  begin
    AdvSmoothListBox3.Items[itemindex].GraphicLeftType := gtCommonImage;
    AdvSmoothListBox3.Items[itemindex].Notes := '<font color="clGreen">Task finished</font>';
    AdvSmoothListBox3.Items[itemindex].ProgressValue := 100;
  end
  else
  begin
    AdvSmoothListBox3.Items[itemindex].Notes := '<font color="clRed">Task unfinished</font>';
    AdvSmoothListBox3.Items[itemindex].GraphicLeftType := gtImage;
    AdvSmoothListBox3.Items[itemindex].ProgressValue := 0;    
  end;

  Count := 0;
  for I := 0 to AdvSmoothListBox3.Items.Count - 1 do
  begin
    if AdvSmoothListBox3.Items[I].Checked then
      Inc(Count);    
  end;
  AdvSmoothListBox3.Footer.Caption := 'Finished tasks : ' + '<font size="10" color="clBlack">'+inttostr(count)+'</font>';
end;

procedure TForm67.AdvSmoothListBox4ItemDragDrop(Sender: TObject; DragItemIndex,
  DropItemIndex: Integer; var allowdrop: Boolean);
var
  drag, drop: TAdvSmoothListBoxItem;
  dragdate: TDate;
  d, m, y: Word;
begin
  drag := AdvSmoothListBox4.Items[DragItemIndex];
  drop := AdvSmoothListBox4.Items[DropItemIndex];
  //change category
  drag.CategoryID := drop.categoryID;
  //change date
  dragdate := StrToDate(drag.info);
  DecodeDate(dragdate, y, m, d);
  drag.Info := FormatDateTime('dd/mm/yyyy', EncodeDate(y, drag.categoryID + 1, d));
//  AdvSmoothListBox4.Items.Sort;
end;

procedure TForm67.AdvSmoothListBox5ItemButtonClick(Sender: TObject;
  itemindex: Integer);
begin
  if AdvSmoothListBox5.Items[itemindex].Expanded then
    AdvSmoothListBox5.Items[itemindex].ButtonCaption := '-'
  else
    AdvSmoothListBox5.Items[itemindex].ButtonCaption := '+'
end;

procedure TForm67.AdvSmoothListBox6ItemDropDownSelect(Sender: TObject;
  Item: TAdvSmoothListBoxItem; ItemIndex: Integer; Value: string);
begin
  Item.Info := Value;
end;

procedure TForm67.AdvSmoothListBox7DragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  if (Source is TAdvSmoothListBox) then
  begin
    AdvSmoothListBox7.Items.Add.Caption := (Source as TAdvSmoothListBox).Items.SelectedItem.Caption;
  end;
end;

procedure TForm67.AdvSmoothListBox7DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := false;
  if (Source is TAdvSmoothListBox) then
  begin
    Accept := (Source as TAdvSmoothListBox) <> advsmoothlistbox7;
  end;
end;

procedure TForm67.AdvSmoothListBox8DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  i: integer;
begin
  if Source is TStrings then
  begin
    for I := 0 to (Source as TStrings).Count - 1 do
    begin
      AdvSmoothListBox8.Items.Add.Caption := (Source as TStrings)[I];
    end;
  end;
end;

procedure TForm67.AdvSmoothListBox8DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TStrings);
end;

procedure TForm67.AdvSmoothListBox9DragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  if (Source is TAdvSmoothListBox) then
  begin
    AdvSmoothListBox9.Items.Add.Caption := (Source as TAdvSmoothListBox).Items.SelectedItem.Caption;
  end;
end;

procedure TForm67.AdvSmoothListBox9DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := false;
  if (Source is TAdvSmoothListBox) then
  begin
    Accept := (Source as TAdvSmoothListBox) <> advsmoothlistbox9;
  end;
end;

procedure TForm67.Button1Click(Sender: TObject);
begin
  if AdvSmoothListBox1.DetailStatus = dsDetailsVisible then
  begin
    with AdvSmoothListBox1.Items.SelectedItem do
    begin
      Caption := Edit1.Text;
      Info := Edit2.Text;
      Notes := Memo1.Text;
    end;
    AdvSmoothListBox1.HideDetails;
  end;
end;

procedure TForm67.Button2Click(Sender: TObject);
begin
  AdvSmoothListBox2.Items[4].Caption := '';
end;

procedure TForm67.CheckBox1Click(Sender: TObject);
begin
  AdvSmoothListBox1.LookupBar.Visible := CheckBox1.Checked;
end;

procedure TForm67.ComboBox1Change(Sender: TObject);
var
  AStyle: TTMSStyle;
begin
  //Save progress fill settings to clipboard
  AStyle := tsOffice2003Blue;
  AdvSmoothListBox3.ItemAppearance.ProgressAppearance.ProgressFill.SaveToClipBoard;
  case ComboBox1.ItemIndex of
    0: AStyle := tsOffice2003Blue;
    1: AStyle := tsOffice2003Silver;
    2: AStyle := tsOffice2003Olive;
    3: AStyle := tsOffice2003Classic;
    4: AStyle := tsOffice2007Luna;
    5: AStyle := tsOffice2007Obsidian;
    6: AStyle := tsOffice2007Silver;
    7: AStyle := tsWindows8;
  end;
  AdvSmoothListBox3.SetComponentStyle(AStyle);
  //load progress fill settings to clipboard
  AdvSmoothListBox3.ItemAppearance.ProgressAppearance.ProgressFill.LoadFromClipBoard;
end;

procedure TForm67.ComboBox2Change(Sender: TObject);
begin
  AdvSmoothListBox4.LookupBar.Position := TAdvSmoothListBoxLookupBarPosition(ComboBox2.ItemIndex);
end;

procedure TForm67.FormCreate(Sender: TObject);
var
  I: Integer;
  name, surname: String;
  it: TAdvSmoothListBoxItem;
const
  contactlist: array[0..19] of string = ('John', 'Mike', 'Laura', 'Steven', 'Jenna', 'Peter',
    'Abby', 'Roger', 'Alton', 'Byron', 'Curtis', 'Brad', 'Audrey', 'April',
    'Ariana', 'Alice', 'Mandy', 'Mary', 'Melanie', 'Megan');
  contactlist2: array[0..19] of string = ('Lazares', 'Mccain', 'Cortez', 'Owen', 'Campfield', 'Hays',
    'Grooms', 'Caldwell', 'Newell', 'Meyers', 'Nixon', 'Young', 'Etcher', 'Walker',
    'Robinson', 'Powell', 'Norris', 'Cook', 'Bush', 'Chipman');
begin
  DoubleBuffered := true;
  FormatSettings.ShortDateFormat := 'dd.mm.yyyy';
  FormatSettings.DateSeparator := '.';
  //Contact list
  AdvSmoothListBox1.Items.BeginUpdate;
  AdvSmoothListBox1.Items.Clear;
  for I := 0 to 20 do
  begin
    with AdvSmoothListBox1.Items.Add do
    begin
      Randomize;
      CaptionFont.Color := clWhite;
      CaptionFont.Size := 8;
      name := contactlist[RandomRange(0, 20)];
      surname := contactlist2[RandomRange(0, 20)];
      Caption :=  name + ' ' + surname;

      InfoFont.Size := 7;
      InfoFont.Color := clWhite;
      Info := '0462/'+ inttostr(Random(99)) + '/' + inttostr(Random(99)) + '/' + inttostr(Random(99));

      Notes := '<font size="8"><b>hi!, i am ' + name + '</b></font><br/><font size="8">my </font>' +
      '<font size="8" color="clYellow">email address </font><font size="8">is </font><font size="8">' +
      '<a href="mailto:'+name+'@email.com">'+ name+'@email.com<a/></font>';
      NotesLocation := plCenterLeft;
    end;
  end;

  AdvSmoothListBox1.Items.Sort;
  AdvSmoothListBox1.Footer.Caption := inttostr(AdvSmoothListBox1.Items.Count) + ' Contacts';
  AdvSmoothListBox1.Items.EndUpdate;
  ComboBox1.ItemIndex := 7;
  AdvSmoothListBox3.SetComponentStyle(tswindows8);

  AdvSmoothListBox3.Items.BeginUpdate;
  //TODOList
  for I := 0 to 20 do
  begin
    with AdvSmoothListBox3.Items.Add do
    begin
      Caption := 'Task ' + inttostr(I + 1);
      GraphicRightType := gtCheckBox;
      Info := 'Task description';
      Notes := '<font color="clred">Task unfinished</font>';
      NotesLocation := plCenterCenter;
      GraphicLeftMargin := 15;
      ProgressVisible := true;
    end;
  end;
  AdvSmoothListBox3.Footer.Caption := 'Finished tasks : ' + '<font size="10" color="clBlack">0</font>';

  AdvSmoothListBox3.Items.EndUpdate;

  AdvSmoothListBox4.Items.BeginUpdate;
  //Custom Categories
  for I := 0 to 11 do
  begin
    with AdvSmoothListBox4.Categories.Add do
    begin
      Text :=  FormatSettings.LongMonthNames[I + 1];
      LookupText := UpperCase(FormatSettings.ShortMonthNames[I + 1]);
    end;
  end;
  //Item category
  for I := 0 to AdvSmoothListBox4.Items.Count - 1 do
  begin
    with AdvSmoothListBox4.Items[I] do
    begin
      CategoryID := random(11);
      Info := FormatDateTime('dd/mm/yyyy', EncodeDate(2008, CategoryID + 1, RandomRange(4, 25)));
    end;
  end;
  AdvSmoothListBox4.Items.Sort;
  AdvSmoothListBox4.Items.EndUpdate;


  AdvSmoothListBox5.Items.BeginUpdate;
  for I := 0 to 10 do
  begin
    with AdvSmoothListBox5.Items.Add do
    begin
      Caption := 'Mercedes';
      GraphicLeftType := gtSmoothButton;
      ButtonCaption := '-';
      ButtonBevelColor := clBlack;
      ButtonColor := clGreen;
      GraphicLeftWidth := 25;
    end;
    with AdvSmoothListBox5.Items.Add do
    begin
      Level := 1;
      Caption := 'Mercedes SLK Roadster';
      Indent := 30;
    end;
    with AdvSmoothListBox5.Items.Add do
    begin
      Level := 1;
      Caption := 'Mercedes SLR Coupé';
      Indent := 30;
    end;
    with AdvSmoothListBox5.Items.Add do
    begin
      Level := 1;
      Caption := 'Mercedes GLK 4x4';
      Indent := 30;
    end;

    with AdvSmoothListBox5.Items.Add do
    begin
      Caption := 'BMW';
      GraphicLeftType := gtSmoothButton;
      ButtonCaption := '-';
      ButtonBevelColor := clBlack;
      ButtonColor := clGreen;
      GraphicLeftWidth := 25;
    end;
    with AdvSmoothListBox5.Items.Add do
    begin
      Level := 1;
      Caption := 'BMW M3';
      Indent := 30;
    end;
    with AdvSmoothListBox5.Items.Add do
    begin
      Level := 1;
      Caption := 'BMW Z4';
      Indent := 30;
    end;
    with AdvSmoothListBox5.Items.Add do
    begin
      Level := 1;
      Caption := 'BMW X5';
      Indent := 30;
    end;

    with AdvSmoothListBox5.Items.Add do
    begin
      Caption := 'Land Rover';
      GraphicLeftType := gtSmoothButton;
      ButtonCaption := '-';
      ButtonBevelColor := clBlack;
      ButtonColor := clGreen;
      GraphicLeftWidth := 25;
    end;
    with AdvSmoothListBox5.Items.Add do
    begin
      Level := 1;
      Caption := 'Land Rover Defender 90';
      Indent := 30;
    end;
    with AdvSmoothListBox5.Items.Add do
    begin
      Level := 1;
      Caption := 'Land Rover Series III';
      Indent := 30;
    end;
    with AdvSmoothListBox5.Items.Add do
    begin
      Level := 1;
      Caption := 'Range Rover Sport V8';
      Indent := 30;
    end;
  end;
  AdvSmoothListBox5.Items.EndUpdate;

  AdvSmoothListBox6.SetComponentStyle(tsWindowsVista);
  AdvSmoothListBox6.DropDownControlClass := TMonthCalendarDropDown;

  AdvSmoothListBox10.Items.BeginUpdate;

  AdvSmoothListBox10.Header.Fill.Color := RGB(176,188,205);
  AdvSmoothListBox10.Header.Fill.ColorTo := RGB(109,132,162);
  AdvSmoothListBox10.Header.Fill.BorderColor := RGB(45,54,66);
  AdvSmoothListBox10.Fill.Color := RGB(219,226,237);
  AdvSmoothListBox10.Fill.BorderColor := RGB(45,54,66);

  AdvSmoothListBox10.Header.Caption := 'Conversion with Matt';
  AdvSmoothListBox10.Header.Font.Color := clWhite;
  AdvSmoothListBox10.Header.Font.Style := [fsBold];
  AdvSmoothListBox10.Header.Font.Size := 14;
  AdvSmoothListBox10.ItemAppearance.FillAlterNate.Color := RGB(146,216,65);
  AdvSmoothListBox10.ItemAppearance.FillAlterNate.GradientType := gtsolid;
  AdvSmoothListBox10.ItemAppearance.FillAlterNate.ColorMirror := clNone;
  AdvSmoothListBox10.ItemAppearance.FillAlterNate.BorderColor := RGB(146,216,65);

  AdvSmoothListBox10.ItemAppearance.Fill.Color := RGB(211,211,211);
  AdvSmoothListBox10.ItemAppearance.Fill.GradientType := gtsolid;
  AdvSmoothListBox10.ItemAppearance.Fill.ColorMirror := clNone;
  AdvSmoothListBox10.ItemAppearance.Fill.BorderColor := RGB(211,211,211);

  AdvSmoothListBox10.Layout := lblBubble;
  AdvSmoothListBox10.Items.Clear;
  AdvSmoothListBox10.Footer.Visible := False;
  it := AdvSmoothListBox10.Items.Add;
  it.AutoSize := True;
  it.Caption := '<b>Matt</b>';
  it.NotesLocation := plTopLeft;
  it.Notes := 'Hi John, when does the game begin?';

  it := AdvSmoothListBox10.Items.Add;
  it.AutoSize := True;
  it.Caption := '<b>John</b>';
  it.NotesLocation := plTopRight;
  it.Notes := 'Hi Matt, the game begins at 7:30 pm!';

  it := AdvSmoothListBox10.Items.Add;
  it.AutoSize := True;
  it.Caption := '<b>Matt</b>';
  it.NotesLocation := plTopLeft;
  it.Notes := 'Thanks, are you going alone there or with a friend?';

  it := AdvSmoothListBox10.Items.Add;
  it.AutoSize := True;
  it.Caption := '<b>John</b>';
  it.NotesLocation := plTopLeft;
  it.Notes := 'We are travelling with a couple of friends'+#13#10+'If you want, you may join us at 7:00 pm at the parking lot';

  it := AdvSmoothListBox10.Items.Add;
  it.AutoSize := True;
  it.Caption := '<b>Matt</b>';
  it.NotesLocation := plTopLeft;
  it.Notes := 'Ok, I will be there';

  it := AdvSmoothListBox10.Items.Add;
  it.AutoSize := True;
  it.Caption := '<b>John</b>';
  it.NotesLocation := plTopRight;
  it.Notes := 'See you at the parking lot then !';

  it := AdvSmoothListBox10.Items.Add;
  it.AutoSize := True;
  it.Alternate := lbaRight;
  it.Caption := '<b>John</b>';
  it.NotesLocation := plTopRight;
  it.Notes := 'Oh, and do not forget your tickets';


  AdvSmoothListBox10.LookupBar.Visible := False;
  AdvSmoothListBox10.ItemAppearance.HorizontalSpacing := 8;

  AdvSmoothListBox10.Items.EndUpdate;
end;

end.