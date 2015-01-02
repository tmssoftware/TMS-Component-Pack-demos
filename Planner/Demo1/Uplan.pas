{*************************************************************************}
{ TPlanner demo application                                               }
{                                                                         }
{ written by TMS Software                                                 }
{            copyright © 1998-2011                                        }
{            Email : info@tmssoftware.Com                                 }
{            Web : http://www.tmssoftware.Com                             }
{                                                                         }
{ The source code is given as is. The author is not responsible           }
{ for any possible damage done due to the use of this code.               }
{ The component can be freely used in any application. The complete       }
{ source code remains property of the author and may not be distributed,  }
{ published, given or sold in any form as such. No parts of the source    }
{ code can be included in any other component or application without      }
{ written authorization of the author.                                    }
{*************************************************************************}

unit Uplan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Planner, Buttons, StdCtrls, Spin, ExtCtrls, ComCtrls, shellapi, Menus,
  Mask, PlanPeriodEdit, ImgList, AdvAppStyler, AdvStyleIF, XPMan;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DayPlanner: TPlanner;
    MonthPlanner: TPlanner;
    Panel2: TPanel;
    unitgroup: TRadioGroup;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    SpinEdit2: TSpinEdit;
    Label2: TLabel;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    SpinEdit5: TSpinEdit;
    SpinEdit6: TSpinEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    ImageList1: TImageList;
    CheckBox3: TCheckBox;
    SpeedButton1: TSpeedButton;
    ColorDialog1: TColorDialog;
    CheckBox4: TCheckBox;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    CheckBox5: TCheckBox;
    SpeedButton8: TSpeedButton;
    BoldBtn: TSpeedButton;
    ItalBtn: TSpeedButton;
    UnderBtn: TSpeedButton;
    SpeedButton12: TSpeedButton;
    FontDialog1: TFontDialog;
    SpeedButton9: TSpeedButton;
    CheckBox6: TCheckBox;
    hourformat: TCheckBox;
    ImageList2: TImageList;
    SpeedButton10: TSpeedButton;
    PrintDialog1: TPrintDialog;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    StatusBar1: TStatusBar;
    TabSheet3: TTabSheet;
    ResPlanner: TPlanner;
    EventList: TListBox;
    Label10: TLabel;
    Label11: TLabel;
    StatusBar2: TStatusBar;
    Button4: TButton;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button5: TButton;
    Button6: TButton;
    CheckBox10: TCheckBox;
    Button7: TButton;
    SpeedButton11: TSpeedButton;
    SpeedButton13: TSpeedButton;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    SpeedButton14: TSpeedButton;
    CheckBox13: TCheckBox;
    TabSheet4: TTabSheet;
    Planner1: TPlanner;
    RepeatSide: TCheckBox;
    ShowOccupied: TCheckBox;
    PopupMenu1: TPopupMenu;
    Color1: TMenuItem;
    Caption1: TMenuItem;
    Readonly1: TMenuItem;
    Rounded1: TMenuItem;
    Font1: TMenuItem;
    PosGap: TCheckBox;
    WideTrack: TCheckBox;
    SpeedButton15: TSpeedButton;
    CheckBox14: TCheckBox;
    PeriodItemEditor1: TPeriodItemEditor;
    ImageList3: TImageList;
    ComboBox1: TComboBox;
    TabSheet5: TTabSheet;
    Button8: TButton;
    TabSheet6: TTabSheet;
    Planner2: TPlanner;
    Label13: TLabel;
    Button9: TButton;
    tlplanner: TPlanner;
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure SpinEdit5Change(Sender: TObject);
    procedure SpinEdit6Change(Sender: TObject);
    procedure unitgroupClick(Sender: TObject);
    procedure DayPlannerPlannerRightClick(Sender: TObject; Position,
      fromSel, fromSelPrecis, toSel, toSelPrecis: Integer);
    procedure MonthPlannerPlannerRightClick(Sender: TObject; Position, fromSel,
      fromSelPrecis, toSel, toSelPrecis: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DayPlannerItemDelete(Sender: TObject; Item: TPlannerItem);
    procedure MonthPlannerItemDelete(Sender: TObject; Item: TPlannerItem);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DayPlannerPlannerNext(Sender: TObject);
    procedure DayPlannerPlannerPrev(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure BoldBtnClick(Sender: TObject);
    procedure DayPlannerItemSelChange(Sender: TObject; Item: TPlannerItem);
    procedure SpeedButton12Click(Sender: TObject);
    procedure ItalBtnClick(Sender: TObject);
    procedure UnderBtnClick(Sender: TObject);
    procedure FontNameChange(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure hourformatClick(Sender: TObject);
    procedure DayPlannerItemImageClick(Sender: TObject; Item: TPlannerItem;
      ImageIdx: Integer);
    procedure SpeedButton10Click(Sender: TObject);
    procedure DayPlannerItemAnchorClick(Sender: TObject;
      Item: TPlannerItem; Anchor: String);
    procedure MonthPlannerItemLeftClick(Sender: TObject;
      Item: TPlannerItem);
    procedure ResPlannerDragOverCell(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure ResPlannerDragDropCell(Sender, Source: TObject; X,
      Y: Integer);
    procedure DayPlannerItemAnchorEnter(Sender: TObject;
      Item: TPlannerItem; Anchor: String);
    procedure DayPlannerItemAnchorExit(Sender: TObject; Item: TPlannerItem;
      Anchor: String);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure ResPlannerItemAnchorClick(Sender: TObject;
      Item: TPlannerItem; Anchor: String);
    procedure DayPlannerPlannerMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox10Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure CheckBox11Click(Sender: TObject);
    procedure CheckBox12Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure CheckBox13Click(Sender: TObject);
    procedure DayPlannerPlannerHeaderDraw(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; aIndex: Integer;
      var DoDraw: Boolean);
    procedure Planner1ItemInsert(Sender: TObject; Position, fromSel,
      fromSelPrecis, toSel, toSelPrecis: Integer);
    procedure Planner1ItemDelete(Sender: TObject; Item: TPlannerItem);
    procedure Planner1PlannerKeyPress(Sender: TObject; var key: Char;
      Position, fromSel, fromSelPrecis, toSel, toSelPrecis: Integer);
    procedure RepeatSideClick(Sender: TObject);
    procedure ShowOccupiedClick(Sender: TObject);
    procedure DayPlannerItemPopupPrepare(Sender: TObject;
      PopupMenu: TPopupMenu; Item: TPlannerItem);
    procedure Caption1Click(Sender: TObject);
    procedure Readonly1Click(Sender: TObject);
    procedure Color1Click(Sender: TObject);
    procedure Rounded1Click(Sender: TObject);
    procedure Font1Click(Sender: TObject);
    procedure PosGapClick(Sender: TObject);
    procedure WideTrackClick(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure CheckBox14Click(Sender: TObject);
    procedure DayPlannerItemBalloon(Sender: TObject; APlannerItem: TPlannerItem;
      var ATitle, AText: string; var AIcon: Integer);
    procedure ComboBox1Change(Sender: TObject);
    procedure PeriodItemEditor1BeforeEditShow(Sender: TObject;
      APlannerItem: TPlannerItem);
    procedure Button8Click(Sender: TObject);
  private
    day:tdatetime;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  uhelp;

{$R *.DFM}

procedure TForm1.SpinEdit1Change(Sender: TObject);
begin
  DayPlanner.Display.Displayscale := SpinEdit1.Value;
end;

procedure TForm1.SpinEdit2Change(Sender: TObject);
begin
  DayPlanner.Positions := SpinEdit2.Value;
end;

procedure TForm1.SpinEdit3Change(Sender: TObject);
begin
  DayPlanner.Display.Displaystart := SpinEdit3.Value;
end;

procedure TForm1.SpinEdit4Change(Sender: TObject);
begin
  DayPlanner.Display.Displayend := SpinEdit4.Value;
end;

procedure TForm1.SpinEdit5Change(Sender: TObject);
begin
  DayPlanner.Display.activestart := SpinEdit5.Value;
end;

procedure TForm1.SpinEdit6Change(Sender: TObject);
begin
  DayPlanner.Display.activeend := SpinEdit6.Value;
end;

procedure TForm1.unitgroupClick(Sender: TObject);
begin
  case UnitGroup.ItemIndex of
  0:DayPlanner.Display.Displayunit := 5;
  1:DayPlanner.Display.Displayunit := 6;
  2:DayPlanner.Display.Displayunit := 10;
  3:DayPlanner.Display.Displayunit := 15;
  4:DayPlanner.Display.Displayunit := 30;
  5:DayPlanner.Display.Displayunit := 60;
  end;

  SpinEdit3.Value := DayPlanner.Display.DisplayStart;
  SpinEdit4.Value := DayPlanner.Display.DisplayEnd;
end;

procedure TForm1.DayPlannerPlannerRightClick(Sender: TObject; Position,
  fromSel, fromSelPrecis, toSel, toSelPrecis: Integer);
begin
  DayPlanner.Items.Selected:=nil;

  if DayPlanner.Items.HasItem(fromSel,toSel,Position) then
  begin
    ShowMessage('Cannot create item.'#13#10'Selected period already contains an item without overlap !');
    Exit;
  end;

  DayPlanner.Items.BeginUpdate;
  with (DayPlanner.Items.Add) do
  begin
    Text.Add('This item is created at');
    Text.Add('run-time in the planner');
    Text.Add('at '+timetostr(now));
    AllowOverlap := not CheckBox8.Checked;
    Name := 'Test';

    if CheckBox1.Checked then CaptionType := ctTime;
    if CheckBox2.Checked then IMageID := 0;

    if CheckBox4.Checked then ImageIndexList.Add(0);
    if CheckBox4.Checked then ImageIndexList.Add(1);
    if CheckBox4.Checked then ImageIndexList.Add(2);

    FixedSize := CheckBox3.Checked;
    FixedPos := CheckBox7.Checked;

    ReadOnly := CheckBox5.Checked;
    Background := CheckBox9.Checked;

    ItemPos := Position;
    ItemEnd := ToSel;
    ItemBegin := FromSel;
  end;
  DayPlanner.Items.EndUpdate;
end;

procedure TForm1.MonthPlannerPlannerRightClick(Sender: TObject; Position,
  fromSel, fromSelPrecis, toSel, toSelPrecis: Integer);
begin
  with (MonthPlanner.Items.Add) do
  begin
    Text.Add('Test');
    ItemEnd := toSel;
    ItemBegin := fromSel;
    ItemPos := Position;
    CaptionType := ctTime;
  end;
end;


procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  if Assigned(DayPlanner.Items.Selected) then
  begin
    Colordialog1.Color := DayPlanner.Items.Selected.Color;
    if Colordialog1.Execute then
      DayPlanner.Items.Selected.Color := Colordialog1.Color;
  end;
end;

procedure TForm1.DayPlannerItemDelete(Sender: TObject; Item: TPlannerItem);
begin
  Item.Free;
end;

procedure TForm1.MonthPlannerItemDelete(Sender: TObject;
  Item: TPlannerItem);
begin
  Item.Free;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  if assigned(DayPlanner.items.Selected) then
    DayPlanner.Items.Selected.Alignment := taLeftJustify;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  if assigned(DayPlanner.items.Selected) then
    DayPlanner.Items.Selected.Alignment := taCenter;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  if assigned(DayPlanner.Items.Selected) then
    DayPlanner.Items.Selected.Alignment := taRightJustify;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
  DayPlanner.SavetoHTML('test.htm');
  ShellExecute(self.handle,'open','test.htm',nil,nil,sw_normal);
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
  with DayPlanner.Items.add do
  begin
    Visible := False;
    Itempos := DayPlanner.SelPosition;
    Itembegin := DayPlanner.SelItemBegin;
    Itemend := DayPlanner.SelItemEnd;

    Text.Add('This item is created');
    Text.Add('with the new button');
    Text.Add('at '+TimeToStr(Now));
    if CheckBox1.Checked then CaptionType := ctTime;
    if CheckBox2.Checked then IMageID := 0;
    if CheckBox4.Checked then ImageIndexList.Add(1);
    if CheckBox4.Checked then ImageIndexList.Add(2);

    FixedSize := CheckBox3.Checked;
    FixedPos := CheckBox7.Checked;
    ReadOnly := CheckBox5.Checked;
    Visible := true;
  end;
end;

procedure TForm1.DayPlannerPlannerNext(Sender: TObject);
var
  ye,mo,da: word;
  s: string;
  fs: TFileStream;
begin
  DecodeDate(day,ye,mo,da);
  s := Format('%.4d%.2d%.2d',[ye,mo,da])+'.dat';
  if (DayPlanner.Items.Count>0) then
  begin
    fs := TFileStream.Create(s,fmCreate);
    DayPlanner.SaveToStream(fs);
    fs.Free;
  end
  else
  begin
    if FileExists(s) then DeleteFile(s);
  end;

  Day := Day+1;
  DayPlanner.Items.Clear;

  DecodeDate(day,ye,mo,da);
  s := Format('%.4d%.2d%.2d',[ye,mo,da])+'.dat';
  if FileExists(s) then
  begin
    fs := TFileStream.Create(s,fmOpenRead);
    DayPlanner.LoadFromStream(fs);
    fs.Free;
  end;
end;

procedure TForm1.DayPlannerPlannerPrev(Sender: TObject);
var
  ye,mo,da: word;
  s: string;
  fs: TFileStream;

begin
  DecodeDate(day,ye,mo,da);
  s := Format('%.4d%.2d%.2d',[ye,mo,da])+'.dat';
  if (DayPlanner.Items.Count>0) then
  begin
    fs := TFileStream.Create(s,fmCreate);
    DayPlanner.SaveToStream(fs);
    fs.Free;
  end
  else
  begin
    if FileExists(s) then DeleteFile(s);
  end;

  Day := Day - 1;
  DayPlanner.items.Clear;
  DecodeDate(day,ye,mo,da);
  s := Format('%.4d%.2d%.2d',[ye,mo,da])+'.dat';
  if FileExists(s) then
  begin
    fs := TFileStream.Create(s,fmOpenRead);
    DayPlanner.LoadFromStream(fs);
    fs.Free;
  end;
end;



procedure TForm1.FormCreate(Sender: TObject);
var
  par: TPlannerItemArray;
begin
  Day := Now;
  DayPlanner.StreamPersistentTime := True;

  DayPlanner.BackGroundColor[1,35] := rgb(192,255,225);
  DayPlanner.BackGroundColor[2,36] := rgb(192,255,225);
  DayPlanner.BackGroundColor[3,37] := rgb(192,252,225);

  FormatSettings.TimeAMString := 'AM';
  FormatSettings.TimePMString := 'PM';

  planner1.Mode.PeriodStartDate := Now;
  planner1.Mode.PeriodEndDate := Now + 30;
  planner1.Items.Clear;

  Planner1.ShowLinks := true;

  Planner1.DefaultItem.CaptionType := ctTime;

  with Planner1.CreateItem do
  begin
    itembegin := 2;
    itemend := 6;
    itempos := 0;
    ImageID := 0;
    Text.Text := 'Redesign user interface using <a>TMS software</a> components';
  end;

  with Planner1.CreateItem do
  begin
    itembegin := 7;
    itemend := 11;
    itempos := 1;
    ImageID := 1;
    Shape := psRounded;
    Text.Text := 'Migrate to Delphi XE and adapt to Unicode';
  end;

  with Planner1.CreateItem do
  begin
    itembegin := 12;
    itemend := 14;
    itempos := 0;
    ImageID := 2;
    Text.Text := 'Update InnoSetup installer script and release';
  end;

  SetLength(par, 3);
  par[0] := Planner1.Items[0];
  par[1] := Planner1.Items[1];
  par[2] := Planner1.Items[2];

  Planner1.MultiSelect := true;
  Planner1.LinkItems(par);
  Planner1.AutoSelectLinkedItems := true;
  Planner1.SelectLinkedItems(Planner1.Items[0]);
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
  with DayPlanner do
  begin
    RichEdit.text := 'Rich text';
    RichEdit.Selstart := 0;
    RichEdit.SelLength := 4;
    RichEdit.SelAttributes.Color := clRed;
    RichEdit.SelAttributes.Style := [fsBold];
    RichEdit.SelStart := 5;
    RichEdit.SelLength := 4;
    RichEdit.SelAttributes.Color := clBlue;
    RichEdit.SelAttributes.Style := [fsItalic];
  end;

  with DayPlanner.items.add do
  begin
    Visible := False;
    Itempos := DayPlanner.selPosition;
    Itembegin := DayPlanner.selitembegin;
    Itemend := DayPlanner.selitemend;

    Text.Text := DayPlanner.richtotext;

    if CheckBox1.Checked then CaptionType := ctTime;
    if CheckBox2.Checked then IMageID := 0;
    if CheckBox4.Checked then ImageIndexList.Add(1);
    if CheckBox4.Checked then ImageIndexList.Add(2);
    FixedSize := CheckBox3.Checked;
    Visible := true;
  end;

end;

procedure TForm1.BoldBtnClick(Sender: TObject);
begin
  if BoldBtn.Down then
    DayPlanner.RichEdit.SelAttributes.Style:= DayPlanner.RichEdit.SelAttributes.Style+[fsBold]
  else
    DayPlanner.RichEdit.SelAttributes.Style:= DayPlanner.RichEdit.SelAttributes.Style-[fsBold];
end;

procedure TForm1.DayPlannerItemSelChange(Sender: TObject;
  Item: TPlannerItem);
begin
  BoldBtn.Down := fsBold in DayPlanner.RichEdit.SelAttributes.Style;
  ItalBtn.Down := fsItalic in DayPlanner.RichEdit.SelAttributes.Style;
  UnderBtn.Down := fsUnderline in DayPlanner.RichEdit.SelAttributes.Style;
end;

procedure TForm1.SpeedButton12Click(Sender: TObject);
begin
  if ColorDialog1.Execute then
  begin
    DayPlanner.RichEdit.SelAttributes.Color := ColorDialog1.Color;
  end;
end;

procedure TForm1.ItalBtnClick(Sender: TObject);
begin
  if ItalBtn.Down then
    DayPlanner.RichEdit.SelAttributes.Style := DayPlanner.RichEdit.SelAttributes.Style+[fsItalic]
  else
    DayPlanner.RichEdit.SelAttributes.Style := DayPlanner.RichEdit.SelAttributes.Style-[fsItalic];
end;

procedure TForm1.UnderBtnClick(Sender: TObject);
begin
  if UnderBtn.Down then
    DayPlanner.RichEdit.SelAttributes.Style := DayPlanner.RichEdit.SelAttributes.Style+[fsUnderline]
  else
    DayPlanner.RichEdit.SelAttributes.Style := DayPlanner.RichEdit.SelAttributes.Style-[fsUnderline];
end;

procedure TForm1.FontNameChange(Sender: TObject);
begin
  DayPlanner.RichEdit.SelAttributes.Name := Self.Text;
  DayPlanner.RichEdit.Visible := True;
end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
begin
  if FontDialog1.Execute then
  begin
    DayPlanner.RichEdit.SelAttributes.Name := FontDialog1.Font.Name;
    DayPlanner.RichEdit.SelAttributes.Style := FontDialog1.Font.Style;
    DayPlanner.RichEdit.SelAttributes.Size := FontDialog1.Font.Size;
  end;
end;

procedure TForm1.CheckBox6Click(Sender: TObject);
begin
  DayPlanner.EditRTF := CheckBox6.Checked;
end;

procedure TForm1.hourformatClick(Sender: TObject);
begin
  if hourformat.Checked then
    DayPlanner.HourType := ht12hrs
  else
    DayPlanner.HourType := ht24hrs;
end;

procedure TForm1.DayPlannerItemImageClick(Sender: TObject;
  Item: TPlannerItem; ImageIdx: Integer);
begin
  if Item.ImageIndexList.Count > 0 then
  begin
    if ImageIdx = 0 then
    begin
      if Item.ImageIndexList.Items[0] = 5 then
        Item.ImageIndexList.Items[0] := 6
      else
        Item.ImageIndexList.Items[0] := 5;
    end;
  end
  else
  begin
    if Item.ImageID = 5 then
      Item.ImageID := 6
    else
      Item.ImageID := 5;
  end;
end;

procedure TForm1.SpeedButton10Click(Sender: TObject);
//var
//  bmp: TBitmap;
begin
  if PrintDialog1.Execute then DayPlanner.Print;

  (* code to print to bitmap
  bmp := tbitmap.Create;
  bmp.Width := 6000;
  bmp.Height := 4000;

  dayplanner.PrintTo(bmp.Canvas);

  bmp.SaveToFile('.\planner.bmp');
  bmp.Free;
  *)
end;

procedure TForm1.DayPlannerItemAnchorClick(Sender: TObject;
  Item: TPlannerItem; Anchor: String);
begin
  ShowMessage('Clicked anchor in item : '+anchor);
end;

procedure TForm1.MonthPlannerItemLeftClick(Sender: TObject;
  Item: TPlannerItem);
begin
  StatusBar1.SimpleText := 'Selected item planned time is '#13'From : '+datetostr(item.itemstarttime)+#13'To : '+datetostr(item.itemendtime);
end;

procedure TForm1.ResPlannerDragOverCell(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
var
  c1,c2,c3: Boolean;
begin
  c1 := assigned(ResPlanner.CellToItem(x,y));
  c2 := assigned(ResPlanner.CellToItem(x+1,y));
  c3 := assigned(ResPlanner.CellToItem(x+2,y));

  if Source = EventList then
  begin
    Accept := not (c1 or c2 or c3);
  end
  else
    Accept := False;
end;

procedure TForm1.ResPlannerDragDropCell(Sender, Source: TObject; X,
  Y: Integer);
var
  SelItem: string;

begin
  with Source as TListBox do
  begin
    SelItem := Items[ItemIndex];
    Items.Delete(ItemIndex);
  end;

  with ResPlanner.Items.Add do
  begin
    ItemBegin := x;
    ItemEnd := x+3;
    ItemPos := y;
    Text.Add(SelItem);
    AllowOverlap := True;
  end;
end;

procedure TForm1.DayPlannerItemAnchorEnter(Sender: TObject;
  Item: TPlannerItem; Anchor: String);
begin
  StatusBar2.SimpleText := Anchor;
end;

procedure TForm1.DayPlannerItemAnchorExit(Sender: TObject;
  Item: TPlannerItem; Anchor: String);
begin
  StatusBar2.SimpleText := '';
end;

procedure TForm1.DayPlannerItemBalloon(Sender: TObject;
  APlannerItem: TPlannerItem; var ATitle, AText: string; var AIcon: Integer);
begin
  ATitle := FormatDatetime('hh:nn',APlannerItem.ItemStartTime)+' - ' + FormatDateTime('hh:nn',APlannerItem.ItemEndTime);
  AText := APlannerItem.StrippedItemText;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ResPlanner.InsertPosition(2);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ResPlanner.DeletePosition(2);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  ResPlanner.MovePosition(5,3);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  ResPlanner.print;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  pl1,pl2:tplanneritem;
begin
  ResPlanner.InsertPosition(ResPlanner.Positions);
  ResPlanner.InsertPosition(ResPlanner.Positions);
  ResPlanner.Header.Captions[ResPlanner.Positions - 1] := 'New pos 1';
  ResPlanner.Header.Captions[ResPlanner.Positions] := 'New pos 2';
  pl1 := ResPlanner.Items.Add;
  pl2 := ResPlanner.Items.Add;
  with pl1 do
  begin
    ItemBegin := 5;
    ItemEnd := 10;
    ItemPos := ResPlanner.Positions - 2;
    Linkeditem := pl2;
    Linktype := ltLinkFull;
    Text.Add('Linked to 2');
  end;
  with pl2 do
  begin
    ItemBegin := 5;
    ItemEnd := 10;
    ItemPos := ResPlanner.Positions - 1;
    Text.Add('Linked from 1');
  end;

  ResPlanner.ScrollToPosition(ResPlanner.Positions - 1);
end;

procedure TForm1.Button6Click(Sender: TObject);
var
 pl1,pl2:tplanneritem;
begin
  ResPlanner.InsertPosition(ResPlanner.Positions);
  ResPlanner.InsertPosition(ResPlanner.Positions);
  ResPlanner.Header.Captions[ResPlanner.Positions-1] := 'New pos 1';
  ResPlanner.Header.Captions[ResPlanner.Positions] := 'New pos 2';

  pl1 := ResPlanner.Items.Add;
  pl2 := ResPlanner.Items.Add;
  with pl1 do
  begin
    ItemBegin := 1;
    ItemEnd := 5;
    ItemPos := ResPlanner.Positions - 2;
    Linkeditem := pl2;
    Linktype := ltLinkEndBegin;
    Text.Add('Linked to 2');
  end;
  with pl2 do
  begin
    ItemBegin := 5;
    ItemEnd := 10;
    ItemPos := ResPlanner.Positions - 1;
    Linkeditem := pl1;
    Linktype := ltLinkBeginEnd;
    Text.Add('Linked to 1');
  end;
end;

procedure TForm1.ResPlannerItemAnchorClick(Sender: TObject;
  Item: TPlannerItem; Anchor: String);
begin
  ShellExecute(self.handle,'open',pchar(anchor),nil,nil,SW_NORMAL);
end;

procedure TForm1.DayPlannerPlannerMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  rc: TPoint;
  i,j: Integer;
  s:string;
  plit: TPlanneritem;
begin
  rc := DayPlanner.XytoCell(x,y);
  j := DayPlanner.celltoitemnum(rc.x,rc.y);

  for i := 1 to j do
  begin
    plit := DayPlanner.celltoitemidx(rc.x,rc.y,i-1);
    if Assigned(plit) then
      s := plit.Text.Text else s:='';
  end;
end;

procedure TForm1.CheckBox10Click(Sender: TObject);
begin
  DayPlanner.EditDirect := CheckBox10.Checked;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  ResPlanner.SavetoHTML('test.htm');
  Shellexecute(self.handle,'open','test.htm',nil,nil,sw_normal);
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  with tlplanner.CreateItem do
  begin
    itemstarttime := encodedate(2002,12,14) + encodetime(20,0,0,0);
    itemendtime := encodedate(2002,12,15) + encodetime(14,0,0,0);
    text.Text := 'This event was created programmatically';
    itempos := 1;
  end;
  tlplanner.UpdateNVI;

end;

procedure TForm1.CheckBox11Click(Sender: TObject);
begin
  DayPlanner.Display.ShowCurrent:=CheckBox11.Checked;
end;

procedure TForm1.CheckBox12Click(Sender: TObject);
begin
  DayPlanner.Header.DragDrop:=CheckBox12.Checked;
end;

procedure TForm1.SpeedButton11Click(Sender: TObject);
begin
  if Assigned(DayPlanner.Items.Selected) then DayPlanner.Items.CutToClipboard;
end;

procedure TForm1.SpeedButton13Click(Sender: TObject);
begin
  if Assigned(DayPlanner.Items.Selected) then
    DayPlanner.Items.CopyToClipboard;
end;

procedure TForm1.SpeedButton14Click(Sender: TObject);
begin
  DayPlanner.Items.PasteFromClipboardAtPos;
end;

procedure TForm1.CheckBox13Click(Sender: TObject);
begin
  DayPlanner.Display.ShowCurrentItem := CheckBox13.Checked;
end;

procedure TForm1.DayPlannerPlannerHeaderDraw(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; aIndex: Integer; var DoDraw: Boolean);
//var
//  OldColor:TColor;
begin
{
  if aIndex = 2 then
  begin
    OldColor := ACanvas.brush.Color;
    ACanvas.brush.Color := clLime;
    InflateRect(ARect,-5,-5);
    ARect.Top := ARect.Top+32;
    ACanvas.Rectangle(ARect.Left,ARect.Top,ARect.Right,ARect.Bottom);
    OffsetRect(ARect,2,2);
    ACanvas.TextOut(ARect.left,ARect.top,'Custom drawing');
    ACanvas.brush.Color := OldColor;
  end;
}  
end;

procedure TForm1.Planner1ItemInsert(Sender: TObject; Position, fromSel,
  fromSelPrecis, toSel, toSelPrecis: Integer);
begin
  with Planner1.items.Add do
  begin
    ItemPos := Position;
    ItemBegin := FromSel;
    ItemEnd := ToSel;
    Captiontype := ctTime;
    Text.Text := 'Hello world';
    Edit;
  end;
end;

procedure TForm1.PeriodItemEditor1BeforeEditShow(Sender: TObject;
  APlannerItem: TPlannerItem);
begin
  PeriodItemEditor1.Caption := 'Edit item from : '+ APlannerItem.ItemSpanTimeStr;
end;

procedure TForm1.Planner1ItemDelete(Sender: TObject; Item: TPlannerItem);
begin
  Item.Free;
end;

procedure TForm1.Planner1PlannerKeyPress(Sender: TObject; var key: Char;
  Position, fromSel, fromSelPrecis, toSel, toSelPrecis: Integer);
begin
  if not CharInSet(Key, [#13,#27,#32]) then       //  if not (key in [#13,#27,#32]) then
  with Planner1.items.Add do
  begin
    ItemPos := Position;
    ItemBegin := FromSel;
    ItemEnd := ToSel;
    CaptionType := ctTime;
    Text.Add(key);
    Edit;
    Planner1.MemoEdit.SelStart := 1;
    Planner1.MemoEdit.SelLength := 0;
  end;
end;

procedure TForm1.RepeatSideClick(Sender: TObject);
begin
  if RepeatSide.Checked then
  begin
    DayPlanner.PositionGap := 40;
    DayPlanner.Sidebar.ShowInPositionGap := True;
    DayPlanner.Sidebar.Visible := False;
  end
  else
  begin
    DayPlanner.PositionGap := 0;
    DayPlanner.Sidebar.ShowInPositionGap := False;
    DayPlanner.Sidebar.Visible := True;
  end;
end;

procedure TForm1.ShowOccupiedClick(Sender: TObject);
begin
    DayPlanner.Sidebar.ShowOccupied := ShowOccupied.Checked;
end;

procedure TForm1.DayPlannerItemPopupPrepare(Sender: TObject;
  PopupMenu: TPopupMenu; Item: TPlannerItem);
begin
  PopupMenu.Items[2].Checked := Item.CaptionType <> ctNone;
  PopupMenu.Items[3].Checked := Item.ReadOnly;
  PopupMenu.Items[4].Checked := Item.Shape = psRounded;
end;

procedure TForm1.Caption1Click(Sender: TObject);
begin
  if DayPlanner.PopupPlannerItem.CaptionType = ctNone then
    DayPlanner.PopupPlannerItem.CaptionType := planner.ctTimeText
  else
    DayPlanner.PopupPlannerItem.CaptionType := ctNone;
end;

procedure TForm1.Readonly1Click(Sender: TObject);
begin
  DayPlanner.PopupPlannerItem.ReadOnly := not DayPlanner.PopupPlannerItem.ReadOnly;
end;

procedure TForm1.Color1Click(Sender: TObject);
begin
  ColorDialog1.Color := DayPlanner.PopupPlannerItem.Color;

  if ColorDialog1.Execute then
     DayPlanner.PopupPlannerItem.Color := ColorDialog1.Color;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
  1: MonthPlanner.SetComponentStyle(tsOffice2003Blue);
  2: MonthPlanner.SetComponentStyle(tsOffice2003Olive);
  3: MonthPlanner.SetComponentStyle(tsOffice2003Silver);

  4: MonthPlanner.SetComponentStyle(tsOffice2007Luna);
  5: MonthPlanner.SetComponentStyle(tsOffice2007Silver);
  6: MonthPlanner.SetComponentStyle(tsOffice2007Obsidian);

  7: MonthPlanner.SetComponentStyle(tsOffice2010Blue);
  8: MonthPlanner.SetComponentStyle(tsOffice2010Silver);
  9: MonthPlanner.SetComponentStyle(tsOffice2010Black);

  10: MonthPlanner.SetComponentStyle(tsWindowsVista);
  11: MonthPlanner.SetComponentStyle(tsWindows7);
  end;

  MonthPlanner.AdaptItemsStyle;
end;

procedure TForm1.Rounded1Click(Sender: TObject);
begin
  if DayPlanner.PopupPlannerItem.Shape = psRounded then
    DayPlanner.PopupPlannerItem.Shape := psRect
  else
    DayPlanner.PopupPlannerItem.Shape := psRounded;
end;

procedure TForm1.Font1Click(Sender: TObject);
begin
  FontDialog1.Font.Assign(DayPlanner.PopupPlannerItem.Font);

  if FontDialog1.Execute then
    DayPlanner.PopupPlannerItem.Font.Assign(FontDialog1.Font);
end;

procedure TForm1.PosGapClick(Sender: TObject);
begin
  if not RepeatSide.Checked then
  begin
    if DayPlanner.PositionGap = 0 then
      DayPlanner.PositionGap := 8
    else
      DayPlanner.PositionGap := 0;
  end;
end;

procedure TForm1.WideTrackClick(Sender: TObject);
begin
  if WideTrack.Checked then
    DayPlanner.TrackWidth := 16
  else
    DayPlanner.TrackWidth := 4;

end;



procedure TForm1.SpeedButton15Click(Sender: TObject);
var
  s:string;
begin
  s := '';
  if inputquery('Text to find','Text',s) then
  begin
    DayPlanner.Items.UnSelectAll;
    if DayPlanner.Items.FindText(nil,'*'+s+'*',[fnAutoGoto,fnMatchRegular,fnIgnoreHTMLTags,fnText]) = nil then
      ShowMessage('Text '+s+' not found in items');
  end;
end;

procedure TForm1.CheckBox14Click(Sender: TObject);
begin
  DayPlanner.Display.ScaleToFit := CheckBox14.Checked;
  if DayPlanner.Items.Count > 0 then
    DayPlanner.Items[0].ScrollInView;
end;

end.


