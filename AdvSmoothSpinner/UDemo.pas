{********************************************************************}
{ TMS TAdvSmoothSpinner Demo                                         }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2014                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit UDemo;

interface

uses
  Forms, Windows, Controls, StdCtrls, ExtCtrls, AdvSmoothSpinner, ComCtrls, ImgList,
  Classes, GDIPPictureContainer, AdvStyleIF, SysUtils, Math;

type
  TForm148 = class(TForm)
    GDIPPictureContainer1: TGDIPPictureContainer;
    Timer1: TTimer;
    ImageList1: TImageList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label4: TLabel;
    Button1: TButton;
    AdvSmoothSpinner2: TAdvSmoothSpinner;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    AdvSmoothSpinner1: TAdvSmoothSpinner;
    Panel1: TPanel;
    AdvSmoothSpinner3: TAdvSmoothSpinner;
    Panel2: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    Label2: TLabel;
    ListBox1: TListBox;
    Button2: TButton;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    CheckBox2: TCheckBox;
    Label7: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure AdvSmoothSpinner1SelectedValueChanged(Sender: TObject; Column,
      SelectedCustomIndex: Integer; SelectedValue: Double;
      RangeType: TAdvSmoothSpinnerRangeType);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure AdvSmoothSpinner2SelectedValueChanged(Sender: TObject; Column,
      SelectedCustomIndex: Integer; SelectedValue: Double;
      RangeType: TAdvSmoothSpinnerRangeType);
    procedure ComboBox1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);

  private
    { Private declarations }
    procedure SetJackPot;
    procedure SetSelectedTimeStamp;
  public
    { Public declarations }
  end;

var
  Form148: TForm148;
  time1, time2, time3: integer;
  dotime1, dotime2, doTime3: Boolean;
  sel1, sel2, sel3: integer;
  AnimateTimeStamp: Boolean;

implementation

{$R *.dfm}

procedure TForm148.AdvSmoothSpinner1SelectedValueChanged(Sender: TObject;
  Column, SelectedCustomIndex: Integer; SelectedValue: Double;
  RangeType: TAdvSmoothSpinnerRangeType);
begin
  SetSelectedTimeStamp;
end;

procedure TForm148.AdvSmoothSpinner2SelectedValueChanged(Sender: TObject;
  Column, SelectedCustomIndex: Integer; SelectedValue: Double;
  RangeType: TAdvSmoothSpinnerRangeType);
begin
  if Column = 0 then
    sel1 := SelectedcustomIndex;

  if Column = 1 then
    sel2 := SelectedCustomIndex;

  if Column = 2 then
    sel3 := SelectedCustomIndex;
    
  SetJackPot;
end;

procedure TForm148.Button1Click(Sender: TObject);
begin
  Timer1.Enabled := true;
  dotime1 := true;
  dotime2 := false;
  dotime3 := false;
  time1 := 0;
  time2 := 0;
  time3 := 0;
  Label3.Caption := '';
  Label4.Caption := '';
  Label5.Caption := '';
  Label6.Caption := '';  
  sel1 := -1;
  sel2 := -1;
  sel3 := -1;
  Image1.Picture.Assign(nil);
  Image2.Picture.Assign(nil);
  Image3.Picture.Assign(nil);
end;

procedure TForm148.Button2Click(Sender: TObject);
begin
  ListBox1.Items.Add(FormatDateTime('dd.mm.yyyy hh:nn', Round(AdvSmoothSpinner1.Columns[0].SelectedDateTime)
    + EncodeTime(Round(AdvSmoothSpinner1.Columns[1].SelectedValue) ,Round(AdvSmoothSpinner1.Columns[2].Selectedvalue), 0, 0)));
end;

procedure TForm148.CheckBox1Click(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to AdvSmoothSpinner3.Columns.Count - 1 do
    AdvSmoothSpinner3.Columns[I].Cyclic := CheckBox1.Checked;
end;

procedure TForm148.CheckBox2Click(Sender: TObject);
begin
  AnimateTimeStamp := CheckBox2.Checked;
end;

procedure TForm148.ComboBox1Change(Sender: TObject);
var
  AStyle: TTMSStyle;
begin
  Astyle := tsOffice2003Blue;
  case ComboBox1.ItemIndex of
  0: AStyle := tsOffice2003Blue;
  1: AStyle := tsOffice2003Olive;
  2: AStyle := tsOffice2003Silver;
  3: AStyle := tsOffice2007Luna;
  4: AStyle := tsOffice2007Obsidian;
  5: AStyle := tsOffice2007Silver;
  6: AStyle := tsWindows8;
  end;
  AdvSmoothSpinner3.SetComponentStyle(Astyle);
end;

procedure TForm148.FormCreate(Sender: TObject);
begin
  with AdvSmoothSpinner2.Columns do
  begin
    Add.Assign(AdvSmoothSpinner2.Columns[0]);
    Add.Assign(AdvSmoothSpinner2.Columns[0]);
  end;

  AdvSmoothSpinner1.Columns[0].DateRangeFrom := Now;
  AdvSmoothSpinner1.Columns[0].DateRangeTo := Now + 100;
  AdvSmoothSpinner1.Columns[0].SelectedDateTime := int(Now);
  SetSelectedTimeStamp;

  ComboBox1.ItemIndex := 6;
  AdvSmoothSpinner3.SetComponentStyle(tswindows8);
  AdvSmoothSpinner1.SetComponentStyle(tsOffice2007Luna);
  AdvSmoothSpinner2.SetComponentStyle(tsOffice2010Blue);
end;

procedure TForm148.ListBox1Click(Sender: TObject);
var
  item: String;
  timestamp: TDateTime;
  h, m, s, ms: Word;
begin
  if ListBox1.ItemIndex <> -1 then
  begin
    item := ListBox1.Items[ListBox1.ItemIndex];
    timestamp := StrToDateTime(item);
    DecodeTime(timestamp, h, m, s, ms);
    AdvSmoothSpinner1.Columns[0].ScrollToValue(int(timestamp), AnimateTimeStamp);
    AdvSmoothSpinner1.Columns[1].ScrollToValue(h, AnimateTimeStamp);
    AdvSmoothSpinner1.Columns[2].ScrollToValue(m, AnimateTimeStamp);    
  end;
end;



procedure TForm148.SetJackPot;
begin
  if sel1 > -1 then
    Image1.Picture.Assign(GDIPPictureContainer1.Items.Items[sel1].Picture);
  if sel2 > -1 then
    Image2.Picture.Assign(GDIPPictureContainer1.Items.Items[sel2].Picture);
  if sel3 > -1 then
    Image3.Picture.Assign(GDIPPictureContainer1.Items.Items[sel3].Picture);

  if (sel1 > -1) and (sel2 > -1) and (sel3 > -1) then
  begin
    Label4.Caption := AdvSmoothSpinner2.Columns[0].CustomItems[sel1].PictureName;
    Label3.Caption := AdvSmoothSpinner2.Columns[1].CustomItems[sel2].PictureName;
    Label5.Caption := AdvSmoothSpinner2.Columns[2].CustomItems[sel3].PictureName;
    if (sel1 = sel2) and (sel1 = sel3) and (sel2 = sel3) then
      Label6.Caption := 'You won, congratulations!'
    else
      Label6.Caption := 'You lost, try again...';
  end;
end;

procedure TForm148.SetSelectedTimeStamp;
begin
  Label2.Caption := 'Selected Timestamp: ' + FormatDateTime('dddd', AdvSmoothSpinner1.Columns[0].SelectedValue) + ' '
    + FormatDateTime('dd mmmm yyyy', AdvSmoothSpinner1.Columns[0].SelectedValue) + ' '
    + FormatDateTime('hh:mm', EncodeTime(Round(AdvSmoothSpinner1.Columns[1].SelectedValue), Round(AdvSmoothSpinner1.Columns[2].SelectedValue), 0, 0));
end;

procedure TForm148.Timer1Timer(Sender: TObject);
begin
  if doTime1 then
  begin
    Inc(time1);
    with AdvSmoothSpinner2.Columns[0] do
    begin
      if time1 = 40 then
      begin
        DoTime2 := true;
      end;
      Randomize;
      if (SelectedValue = RandomRange(Round(GetRangeFrom), Round(GetRangeTo))) and (time1 >= 100) then
      begin
        DoTime1 := false;
      end;
      Previous;
    end;
  end;

  if DoTime2 then
  begin
    Inc(time2);
    with AdvSmoothSpinner2.Columns[1] do
    begin
      if time2 = 40 then
      begin
        DoTime3 := true;
      end;
      Randomize;      
      if (SelectedValue = RandomRange(Round(GetRangeFrom), Round(GetRangeTo))) and (time2 >= 100) then
      begin
        DoTime2 := false;
      end;
      Previous;
    end;
  end;

  if DoTime3 then
  begin
    Inc(time3);
    with AdvSmoothSpinner2.Columns[2] do
    begin
      Randomize;    
      if (SelectedValue = RandomRange(Round(GetRangeFrom), Round(GetRangeTo))) and (time3 >= 100) then
      begin
        DoTime3 := false;
      end;
      Previous;
    end;
  end;
end;

end.
