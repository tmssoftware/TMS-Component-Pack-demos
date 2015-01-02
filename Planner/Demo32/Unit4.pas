unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Planner, CloudBase, CloudLive, CloudLiveCalendar,
  PlanExLiveCalendar, CloudGoogle, CloudGCalendar, PlanExGCalendar, Menus;

type
  TCloudCalendar = (ccWinLive, ccGoogle);


  TForm4 = class(TForm)
    PlannerLiveCalendarExchange1: TPlannerLiveCalendarExchange;
    AdvLiveCalendar1: TAdvLiveCalendar;
    Planner1: TPlanner;
    Button1: TButton;
    ListBox1: TListBox;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button4: TButton;
    AdvGCalendar1: TAdvGCalendar;

    PlannerGCalendarExchange1: TPlannerGCalendarExchange;
    PopupMenu1: TPopupMenu;
    Createnewitem1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure AdvLiveCalendar1ReceivedAccessToken(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure AdvGCalendar1ReceivedAccessToken(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Createnewitem1Click(Sender: TObject);
  private
    { Private declarations }
    FCloudCalendar: TCloudCalendar;
  public
    { Public declarations }
    procedure GetGCalendarList;
    procedure GetLiveCalendarList;
    property CloudCalendar: TCloudCalendar read FCloudCalendar write FCloudCalendar;
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}
{$I APPIDS.INC}


procedure TForm4.AdvGCalendar1ReceivedAccessToken(Sender: TObject);
begin
  AdvGCalendar1.SaveTokens;
  GetGCalendarList;
end;

procedure TForm4.AdvLiveCalendar1ReceivedAccessToken(Sender: TObject);
begin
  advlivecalendar1.SaveTokens;
  GetLiveCalendarList;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
  if not AdvliveCalendar1.TestTokens then
  begin
    AdvLiveCalendar1.RefreshAccess;
    if not AdvliveCalendar1.TestTokens then
      advlivecalendar1.DoAuth
    else
      GetLiveCalendarList;
  end
  else
    GetLiveCalendarList;
end;

procedure TForm4.Button2Click(Sender: TObject);
var
  id: string;
  i: integer;
begin
  // mark all for export

  for i := 0 to planner1.Items.Count - 1 do
    planner1.Items[i].DoExport := true;

  if CloudCalendar = ccWinLive then
  begin
    id := PlannerLiveCalendarExchange1.GetCalendarID(listbox1.Items[listbox1.ItemIndex]);
    PlannerLiveCalendarExchange1.LiveCalendarID := id;
    PlannerLiveCalendarExchange1.DoExport;
  end
  else
  begin
    id := PlannerGCalendarExchange1.GetCalendarID(listbox1.Items[listbox1.ItemIndex]);
    PlannerGCalendarExchange1.GCalendarID := id;
    PlannerGCalendarExchange1.DoExport;
  end;

end;

procedure TForm4.Button3Click(Sender: TObject);
var
  id: string;
begin
  if CloudCalendar = ccWinLive then
  begin
    id := PlannerLiveCalendarExchange1.GetCalendarID(listbox1.Items[listbox1.ItemIndex]);
    PlannerLiveCalendarExchange1.LiveCalendarID := id;
    PlannerLiveCalendarExchange1.DoImport;
  end
  else
  begin
    id := PlannerGCalendarExchange1.GetCalendarID(listbox1.Items[listbox1.ItemIndex]);
    PlannerGCalendarExchange1.GCalendarID := id;
    PlannerGCalendarExchange1.DoImport;
  end;
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
  if not AdvGCalendar1.TestTokens then
  begin
    AdvGCalendar1.RefreshAccess;
    if not AdvGCalendar1.TestTokens then
    begin
      AdvGcalendar1.DoAuth
    end
    else
      GetGCalendarList;
  end
  else
    GetGCalendarList;
end;

procedure TForm4.Createnewitem1Click(Sender: TObject);
begin
  Planner1.CreateItemAtSelection;
end;

procedure TForm4.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  advlivecalendar1.App.Key := LiveAppKey;
  advlivecalendar1.App.Secret := LiveAppSecret;

  advgcalendar1.App.Key := GAppKey;
  advgcalendar1.App.Secret := GAppSecret;

  advlivecalendar1.PersistTokens.Key := '.\livecal.ini';
  advlivecalendar1.PersistTokens.Section := 'winlive';
  advlivecalendar1.PersistTokens.Location := plIniFile;

  AdvGCalendar1.PersistTokens.Key := '.\livecal.ini';
  advGcalendar1.PersistTokens.Section := 'google';
  advGcalendar1.PersistTokens.Location := plIniFile;

  advlivecalendar1.LoadTokens;
  AdvGCalendar1.LoadTokens;

  planner1.Positions := 7;
  planner1.Header.Captions.Clear;
  planner1.Header.Captions.Add('');
  for i := 0 to 6 do
    planner1.Header.Captions.Add(datetostr(Now + i));
end;

procedure TForm4.GetGCalendarList;
var
  i: integer;
begin
  CloudCalendar := ccGoogle;
  advgcalendar1.GetCalendars;
  listbox1.Items.Clear;
  for i := 0 to advgcalendar1.Calendars.Count - 1 do
    begin
      listbox1.Items.Add(advgcalendar1.Calendars[i].Summary);
    end;
  listbox1.ItemIndex := 0;
end;

procedure TForm4.GetLiveCalendarList;
var
  i: integer;
begin
  CloudCalendar := ccWinLive;
  advlivecalendar1.GetCalendars;
  listbox1.Items.Clear;
  for i := 0 to advlivecalendar1.Calendars.Count - 1 do
    begin
      listbox1.Items.Add(advlivecalendar1.Calendars[i].Summary);
    end;

  listbox1.ItemIndex := 0;
end;

end.
