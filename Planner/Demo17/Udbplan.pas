{*******************************************************************}
{ TDBPLANNER, DBTODOLIST, DBPlannerCalendar                         }
{ with Apollo DBE demo application                                  }
{ version 1.0, 2002                                                 }
{                                                                   }
{ written by Alex Zanello                                           }
{ released to the public for the benefit of other TMS users         }
{ june 2002                                                         } 
{ Email : alexza@mail.nauta.it                                      }
{ Web site : http://www.zring.it                                    }
{*******************************************************************}

unit Udbplan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBPlanner, Planner, Db, DBTables, Grids, DBGrids, ComObj, StdCtrls, ActiveX,
  ExtCtrls, DBCtrls, Menus, ImgList, Mask, ComCtrls, PlannerCal, IniFiles,
  DBPlannerCal, ApoDSet, ApoEnv, PlanSoundAlarm, TodoList,
  DBTodoList, FormSize, XPMan;

type
  TMainForm = class(TForm)
    DBDaySource1: TDBDaySource;
    ItemPopup: TPopupMenu;
    Color1: TMenuItem;
    Caption1: TMenuItem;
    ColorDialog1: TColorDialog;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    DBPlanner1: TDBPlanner;
    Splitter1: TSplitter;
    CalPanel: TPanel;
    AlarmSound1: TAlarmSound;
    Splitter2: TSplitter;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBTodoList1: TDBTodoList;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit3: TDBEdit;
    Splitter3: TSplitter;
    Label1: TLabel;
    Label6: TLabel;
    Edit1: TMenuItem;
    PlannerPopup: TPopupMenu;
    New1: TMenuItem;
    N1: TMenuItem;
    Today1: TMenuItem;
    N2: TMenuItem;
    View1: TMenuItem;
    ChangetimeUnit1: TMenuItem;
    N3: TMenuItem;
    Weekdays1: TMenuItem;
    FullWeek7days1: TMenuItem;
    N1day1: TMenuItem;
    N4: TMenuItem;
    Show24hours1: TMenuItem;
    Showonlyworkinghours1: TMenuItem;
    Shape1: TMenuItem;
    N5: TMenuItem;
    TodoPopup: TPopupMenu;
    Add1: TMenuItem;
    Edit3: TMenuItem;
    StatusBar1: TStatusBar;
    Shownotespreview1: TMenuItem;
    Activeperiod1: TMenuItem;
    Colors1: TMenuItem;
    Panel4: TPanel;
    DBPlannerCalendar1: TDBPlannerCalendar;
    Alarm1: TMenuItem;
    N6: TMenuItem;
    AlarmMessage1: TAlarmMessage;
    FormSize1: TFormSize;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    DBMemo2: TDBMemo;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Panel5: TPanel;
    Label11: TLabel;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    Splitter4: TSplitter;
    DBCheckBox2: TDBCheckBox;
    DBEdit7: TDBEdit;
    Label12: TLabel;
    Forcescalingtofit1: TMenuItem;
    DBMonthSource1: TDBMonthSource;
    Mode1: TMenuItem;
    Day1: TMenuItem;
    Month1: TMenuItem;
    procedure DBPlanner1ItemInsert(Sender: TObject; Position, FromSel,
      FromSelPrecise, ToSel, ToSelPrecise: Integer);
    procedure DBPlanner1ItemDelete(Sender: TObject; Item: TPlannerItem);
    procedure PlannerTableAfterDelete(DataSet: TDataSet);
    procedure DBDaySource1FieldsToItem(Sender: TObject; Fields: TFields;
      Item: TPlannerItem);
    procedure Color1Click(Sender: TObject);
    procedure DBDaySource1ItemToFields(Sender: TObject; Fields: TFields;
      Item: TPlannerItem);
    procedure FormCreate(Sender: TObject);
    procedure DBPlannerCalendar1DaySelect(Sender: TObject;
      SelDate: TDateTime);
    procedure DBPlanner1ItemImageClick(Sender: TObject; Item: TPlannerItem;
      ImageIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure DBTodoList1ItemInsert(Sender: TObject; ATodoItem: TTodoItem;
      var Allow: Boolean);
    procedure Shape1Click(Sender: TObject);
    procedure DBTodoList1HeaderClick(Sender: TObject; Column: Integer);
    procedure DBTodoList1ItemDelete(Sender: TObject; ATodoItem: TTodoItem;
      var Allow: Boolean);
    procedure Label1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N1day1Click(Sender: TObject);
    procedure Weekdays1Click(Sender: TObject);
    procedure FullWeek7days1Click(Sender: TObject);
    procedure Shownotespreview1Click(Sender: TObject);
    procedure Today1Click(Sender: TObject);
    procedure Showonlyworkinghours1Click(Sender: TObject);
    procedure Show24hours1Click(Sender: TObject);
    procedure ChangetimeUnit1Click(Sender: TObject);
    procedure Activeperiod1Click(Sender: TObject);
    procedure Colors1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Click(Sender: TObject);
    procedure DBPlanner1ItemPopupPrepare(Sender: TObject;
      PopupMenu: TPopupMenu; Item: TPlannerItem);
    procedure Alarm1Click(Sender: TObject);
    procedure New1Click(Sender: TObject);
    procedure DBPlanner1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure DBPlanner1DragDropCell(Sender, Source: TObject; X,
      Y: Integer);
    procedure DBTodoList1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure DBTodoList1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Edit3Click(Sender: TObject);
    procedure Splitter1Moved(Sender: TObject);
    procedure Add1Click(Sender: TObject);
    procedure Forcescalingtofit1Click(Sender: TObject);
    procedure Day1Click(Sender: TObject);
    procedure Month1Click(Sender: TObject);
    procedure PlannerPopupPopup(Sender: TObject);
  private
    { Private declarations }
    nActiveFrom, nActiveTo : integer;
    function IntToShape(Index: Integer) : TPlannerShape;
    function IntToCalShape(Index: Integer) : TEventShape;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses DispUnit, ActUnit, ColUnit, DM, AppUnit, Alarm, TodoUnit;

{$R *.DFM}

procedure TMainForm.Color1Click(Sender: TObject);
begin
  { Sets the planner item color }
  ColorDialog1.Color := DBPlanner1.PopupPlannerItem.Color;
  if ColorDialog1.Execute then
  begin
    DBPlanner1.PopupPlannerItem.Color := ColorDialog1.Color;
    DBPlanner1.PopupPlannerItem.CaptionBkg := ColorDialog1.Color;
    DBPlanner1.PopupPlannerItem.Update;
  end;
end;

procedure TMainForm.DBPlanner1ItemInsert(Sender: TObject; Position, FromSel,
  FromSelPrecise, ToSel, ToSelPrecise: Integer);
begin
  { creates an item in the planner at the selected cells which is automatically
    propagated to the database
    All planner item settings are taken from the Planner.DefaultItem properties.
    After changing properties of the planner item, it is necessary to call the
    item's Update method to make sure that changes are propagated to the database
  }
  with DBPlanner1.CreateItemAtSelection do
  begin
    Text.Text:='Item created at runtime on '+Formatdatetime('hh:mm dd/mm/yyyy',Now);
    Update;
  end;
end;

procedure TMainForm.DBPlanner1ItemDelete(Sender: TObject; Item: TPlannerItem);
begin
  { the Planner.FreeItem call removes the item from the planner and deletes
    its entry from the database
  }
  if (MessageDlg('Delete this item ?', mtConfirmation, [mbYes,mbNo], 0) = mrYes) then
    DBPlanner1.FreeItem(Item);
end;

procedure TMainForm.PlannerTableAfterDelete(DataSet: TDataSet);
begin
  { When a record is deleted from the database from another place than the
    planner itself, the planner must be notified and the items must be
    re-synchronized to reflect the changes. This is achieved through the
    SynchDBItems method
    Note that changes to records from other DB-aware controls are automatically
    reflected in the Planner Items.
   }
  DBDaySource1.SynchDBItems;
  DBPlannerCalendar1.UpdateCalendar;
  Application.ProcessMessages;
  DBPlannerCalendar1.Update;
end;

procedure TMainForm.DBDaySource1FieldsToItem(Sender: TObject; Fields: TFields;
  Item: TPlannerItem);
var
  nShape : integer;
begin
   { The FieldsToItem event is called when records are read from the database
     and extra properties are set from database fields. With this code, any
     field from the database can be connected in a custom way to planner item
     properties.
   }
  Item.Color      := TColor(Fields.FieldByName('COLOR').AsInteger);
  Item.CaptionBkg := Item.Color;
  Item.ImageID    := Fields.FieldByName('IMAGE').AsInteger;
  nShape          := Fields.FieldByName('SHAPE').AsInteger;

  // three possible shapes: psRect, psRounded, psHexagon
  Item.Shape := IntToShape(nShape);

  if Fields.FieldByName('CAPTION').AsBoolean then
    Item.CaptionType := ctTime
  else
    Item.CaptionType := ctNone;
end;

procedure TMainForm.DBDaySource1ItemToFields(Sender: TObject; Fields: TFields;
  Item: TPlannerItem);
begin
  { The ItemToFields event is called when items are written to the database
    and extra properties are stored in database fields. With this code, any
    property of the item can be saved into any field of the database in
    a custom way to be retrieved later with the inverse event FieldsToItem
  }

  Fields.FieldByName('COLOR').AsInteger   := Integer(Item.Color);
  Fields.FieldByName('CAPTION').AsBoolean := Item.CaptionType = ctTime;
  Fields.FieldByName('IMAGE').AsInteger   := Item.ImageID;

  // three possible shapes: 1-psRect, 2-psRounded, 3-psHexagon
  Fields.FieldByName('SHAPE').AsInteger   := Ord(Item.Shape);
end;

procedure TMainForm.FormCreate(Sender: TObject);
var
  IniFile: TIniFile;
  Year, Month, Day : Word;
begin
  FormSize1.SaveName := GetCurrentDir + '\demo.ini';
  FormSize1.LoadFormSettings;
  
  IniFile := TIniFile.Create(FormSize1.SaveName);
  try
    with DBPlanner1, IniFile do
    begin
      TrackColor               := ReadInteger('Demo', 'TrackColor', clBlue);
      TrackBump                := ReadBool('Demo', 'TrackBump', False);
      Positions                := ReadInteger('Demo', 'Positions', 3);
      PositionWidth            := ReadInteger('Demo', 'PositionWidth', 100);
      Display.DisplayUnit      := ReadInteger('Demo', 'TimeUnit', 15);
      Display.ColorNonActive   := ReadInteger('Demo', 'NonActive', clSilver);
      Display.ColorActive      := ReadInteger('Demo', 'Active', clWhite);
      Display.ColorCurrent     := ReadInteger('Demo', 'Current', clYellow);
      Display.ColorCurrentItem := ReadInteger('Demo', 'CurrentItem', clLime);
      Sidebar.Background       := ReadInteger('Demo', 'Sidebar', clBtnFace);
      Sidebar.Occupied         := ReadInteger('Demo', 'Occupied', clBlue);
      DefaultItem.Color        := ReadInteger('Demo', 'Color', clWhite);
      DefaultItem.SelectColor  := ReadInteger('Demo', 'SelectColor', clInfoBk);
      DefaultItem.CaptionBkg   := ReadInteger('Demo', 'CaptionBkg', clWhite);
      DefaultItem.TrackColor   := ReadInteger('Demo', 'DITrackColor', clBlue);

      with DBPlannerCalendar1 do
      begin
        SelectColor      := ReadInteger('Demo', 'ActiveDayColor', clLime);
        EventMarkerColor := ReadInteger('Demo', 'EventColor', clYellow);
        ShowWeeks        := ReadBool('Demo', 'ShowWeeks', True);
        EventMarkerShape := IntToCalShape(ReadInteger('Demo', 'EventMarkerShape', 1));
      end;
    end;
    DBDaySource1.NumberOfDays := IniFile.ReadInteger('Demo', 'NumberOfDays', 3);
    nActiveFrom           := IniFile.ReadInteger('Demo', 'ActiveFrom', 8);
    nActiveTo             := IniFile.ReadInteger('Demo', 'ActiveTo', 20);
    DBPlanner1.Width      := IniFile.ReadInteger('Demo', 'DBPLannerWidth', 410);
  finally
    IniFile.Free;
  end;

  with DM1.PlannerAP do
    if not FileExists(GetCurrentDir + '\PLANNER.DBF') then
    begin
      // remember to indicate number of fields-----------------|
      if not CreateNew(GetCurrentDir + '\PLANNER.DBF', SDEFOX, 9) then
      begin
        ShowMessage('Unable to create PLANNER.DBF !');
        Close;
      end;
      CreateField('PLANNERKEY', 'C', 40, 0);
      CreateField('STARTTIME',  'C', 20, 0);
      CreateField('ENDTIME',    'C', 20, 0);
      CreateField('NOTES',      'M', 10, 0);
      CreateField('SUBJECT',    'C', 50, 0);
      CreateField('COLOR',      'N', 10, 0);
      CreateField('IMAGE',      'N',  2, 0);
      CreateField('SHAPE',      'N',  1, 0);
      CreateField('CAPTION',    'L',  1, 0);

      if not CreateExec then
      begin
        ShowMessage('Unable to create PLANNER.DBF in ' + GetCurrentDir);
        Close;
      end;
    end;

  with DM1.ToDoAP do
    if not FileExists(GetCurrentDir + '\TODO.DBF') then
    begin
      // remember to indicate number of fields---------------|
      if not CreateNew(GetCurrentDir + '\TODO.DBF', SDEFOX, 12) then
      begin
        ShowMessage('Unable to create TODO.DBF !');
        Close;
      end;
      CreateField('TODOKEY',    'C', 40, 0);
      CreateField('SUBJECT',    'C', 50, 0);
      CreateField('RESOURCE',   'C', 40, 0);
      CreateField('COMPDATE',   'D',  8, 0);
      CreateField('COMPLETION', 'N',  3, 0);
      CreateField('CREATION',   'D',  8, 0);
      CreateField('DUE',        'D',  8, 0);
      CreateField('PRIORITY',   'N',  2, 0);
      CreateField('STATUS',     'N',  3, 0);
      CreateField('COMPLETE',   'L',  1, 0);
      CreateField('IMAGE',      'N',  2, 0);
      CreateField('NOTES',      'M', 10, 0);
      if not CreateExec then
      begin
        ShowMessage('Unable to create TODO.DBF in ' + GetCurrentDir);
        Close;
      end;
    end;

  // recreate all tags at start (demo) - ApolloTables are opened exclusive
  DM1.PlannerAP.DatabaseName := GetCurrentDir;
  DM1.PlannerAP.TableName := 'planner.dbf';
  DeleteFile('PLANNER.CDX');
  DM1.PlannerAP.Active := true;
  DM1.PlannerAP.IndexTag('', 'KEY', 'PLANNERKEY', IDX_NONE, False, '');

  DM1.TodoAP.DatabaseName := GetCurrentDir;
  DM1.TodoAP.TableName := 'todo.dbf';
  DeleteFile('TODO.CDX');
  DM1.TodoAP.Active := true;
  DM1.TodoAP.IndexTag('', 'KEY', 'TODOKEY', IDX_NONE, False, '');

  // avoid Windows rechanging setted locales
  Application.UpdateFormatSettings := False;

  // be sure of the format used when transforming a time in a string
  // with TimeToStr !
  SysUtils.LongTimeFormat := 'hh.mm.ss';
  SysUtils.ShortTimeFormat := 'hh.mm';

  {
  Also very important to remember that there are many formats
  for dates so to avoid mistakes you HAVE to add code like this
  to your form (OnCreate is a right place):
  }
  SysUtils.DateSeparator := '/';
  SysUtils.ShortDateFormat := 'dd/mm/yyyy';

  DBDaySource1.Day := Date;
  DBDaySource1.Active := True;
  with DBPlanner1.Display do
  begin
    ActiveStart  := nActiveFrom * 60 div DisplayUnit;
    ActiveEnd    := nActiveTo * 60 div DisplayUnit;
  end;

  DecodeDate(Date, Year, Month, Day);
//  DBPlannerCalendar1.Width := Panel4.ClientWidth div 2;
  DBPlannerCalendar1.Date := Date;
  DBPlannerCalendar1.Day := Day;
  DBPlannerCalendar1.Month := Month;
  DBPlannerCalendar1.Year := Year;
  DBPlannerCalendar1.EventHints := True;
  DBPlannerCalendar1.Active := True;
//  DBPlannerCalendar2.Width := Panel4.ClientWidth - DBPlannerCalendar1.Width - 2;
//  if Month = 12 then
//    DBPlannerCalendar2.Month := 1
//  else
//    DBPlannerCalendar2.Month := Month + 1;
//  DBPlannerCalendar2.Active := True;

  // let the first appointment be in view
  DBPlanner1.Update;
end;

procedure TMainForm.DBPlannerCalendar1DaySelect(Sender: TObject; SelDate: TDateTime);
var
  Year, Month, Day : word;
begin
  DBDaySource1.Day := DBPlannerCalendar1.Date;
  DecodeDate(DBPlannerCalendar1.Date, Year, Month, Day);
  DBMonthSource1.Month := Month;
  DBMonthSource1.Year  := Year;
  // let the first appointment be in view
  DBPlanner1.Update;
end;

procedure TMainForm.DBPlanner1ItemImageClick(Sender: TObject;
  Item: TPlannerItem; ImageIndex: Integer);
begin
  if Item.ImageID < 5 then
    Item.ImageID := Item.ImageID + 1
  else
    Item.ImageID := 0;

  Item.Update;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
var
  IniFile: TIniFile;
begin
  IniFile := TIniFile.Create(GetCurrentDir + '\demo.ini');
  try
    with DBPlanner1 do
    begin
      IniFile.WriteInteger('Demo', 'TimeUnit', Display.DisplayUnit);
      IniFile.WriteInteger('Demo', 'Positions', Positions);
      IniFile.WriteInteger('Demo', 'PositionWidth', PositionWidth);
      IniFile.WriteInteger('Demo', 'NonActive', Display.ColorNonActive);
      IniFile.WriteInteger('Demo', 'Active', Display.ColorActive);
      IniFile.WriteInteger('Demo', 'Current', Display.ColorCurrent);
      IniFile.WriteInteger('Demo', 'CurrentItem', Display.ColorCurrentItem);
      IniFile.WriteInteger('Demo', 'Sidebar', Sidebar.Background);
      IniFile.WriteInteger('Demo', 'Occupied', Sidebar.Occupied);
      IniFile.WriteInteger('Demo', 'Color', DefaultItem.Color);
      IniFile.WriteInteger('Demo', 'SelectColor', DefaultItem.SelectColor);
      IniFile.WriteInteger('Demo', 'CaptionBkg', DefaultItem.CaptionBkg);
      IniFile.WriteInteger('Demo', 'DITrackColor', DefaultItem.TrackColor);
      IniFile.WriteInteger('Demo', 'TrackColor', TrackColor);
      IniFile.WriteBool('Demo', 'TrackBump', TrackBump);
      IniFile.WriteInteger('Demo', 'DBPLannerWidth', DBPlanner1.Width);
      with DBPlannerCalendar1 do
      begin
        IniFile.WriteInteger('Demo', 'ActiveDayColor', SelectColor);
        IniFile.WriteInteger('Demo', 'EventColor', EventMarkerColor);
        IniFile.WriteBool('Demo', 'ShowWeeks', ShowWeeks);
        IniFile.WriteInteger('Demo', 'EventMarkerShape', Ord(EventMarkerShape) + 1);
      end;
    end;
    IniFile.WriteInteger('Demo', 'NumberOfDays', DBDaySource1.NumberOfDays);
    IniFile.WriteInteger('Demo', 'ActiveFrom', nActiveFrom);
    IniFile.WriteInteger('Demo', 'ActiveTo', nActiveTo);
  finally
    IniFile.Free;
  end;
  FormSize1.SaveFormSettings;
end;

procedure TMainForm.DBTodoList1ItemInsert(Sender: TObject;
  ATodoItem: TTodoItem; var Allow: Boolean);
begin
  AToDoItem.ImageIndex := 0;
  Allow := True;
end;

procedure TMainForm.Shape1Click(Sender: TObject);
begin
  // cycle among the three possible shapes: 1-psRect, 2-psRounded, 3-psHexagon
  with DBPlanner1.PopupPlannerItem do
    if Shape = psHexagon then
      Shape:= psRect
    else
      Shape := Succ(Shape);
end;

procedure TMainForm.DBTodoList1HeaderClick(Sender: TObject; Column: Integer);
begin
  // we can here change the active tag to view rows in desired order

end;

procedure TMainForm.DBTodoList1ItemDelete(Sender: TObject;
  ATodoItem: TTodoItem; var Allow: Boolean);
begin
  Allow := (MessageDlg('Delete this item ?', mtConfirmation, [mbYes,mbNo], 0) = mrYes);
end;

procedure TMainForm.Label1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  // popup the todo items menu
  TodoPopup.Popup(Label1.ClientOrigin.X + X,
                  Label1.ClientOrigin.Y + Y);
end;

procedure TMainForm.N1day1Click(Sender: TObject);
begin
  with DBPlanner1 do
  begin
    Positions := 1;
    PositionWidth := Width - SideBar.Width - 20;
  end;
  DBDaySource1.NumberOfDays := 1;
end;

procedure TMainForm.Weekdays1Click(Sender: TObject);
begin
  with DBPlanner1 do
  begin
    Positions := 5;
    PositionWidth := (Width - Sidebar.Width - 20) div 5;
  end;
  DBDaySource1.NumberOfDays := 5;
end;

procedure TMainForm.FullWeek7days1Click(Sender: TObject);
begin
  with DBPlanner1 do
  begin
    Positions := 7;
    PositionWidth := (Width - Sidebar.Width - 20) div 7;
  end;
  DBDaySource1.NumberOfDays := 7;
end;

procedure TMainForm.Shownotespreview1Click(Sender: TObject);
begin
  DBTodoList1.Preview := not DBTodoList1.Preview;
  if DBTodoList1.Preview then
    DBTodoList1.Columns.Items[DBTodoList1.Columns.Count -1].Free
  else
    with DBTodoList1.Columns.Add do
    begin
      TodoData := tdNotes;
      Width := 250;
    end;
end;

procedure TMainForm.Today1Click(Sender: TObject);
begin
  DBDaySource1.Day := Date;
end;

procedure TMainForm.Showonlyworkinghours1Click(Sender: TObject);
begin
  with DBPlanner1.Display do
  begin
    DisplayStart := ActiveStart;
    DisplayEnd   := ActiveEnd;
    ActiveStart  := 0;
    ActiveEnd    := DisplayEnd;
  end;
end;

procedure TMainForm.Show24hours1Click(Sender: TObject);
begin
  with DBPlanner1.Display do
  begin
    DisplayStart := 0;
    DisplayEnd   := 24 * 60 div DisplayUnit;
    ActiveStart  := nActiveFrom * 60 div DisplayUnit;
    ActiveEnd    := nActiveTo * 60 div DisplayUnit;
  end;
end;

procedure TMainForm.ChangetimeUnit1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TUnitForm, UnitForm);
    UnitForm.ComboBox1.ItemIndex := 0;
    if UnitForm.ShowModal = mrOK then
      DBPlanner1.Display.DisplayUnit := StrToIntDef(UnitForm.ComboBox1.Text, 15);
  finally
    FreeAndNil(UnitForm);
  end;
end;

procedure TMainForm.Activeperiod1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TActPeriodForm, ActPeriodForm);
    with ActPeriodForm do
    begin
      ComboBox1.ItemIndex := 0;
      ComboBox2.ItemIndex := 0;
      if ShowModal = mrOK then
      begin
        nActiveFrom := StrToIntDef(ComboBox1.Text, 8);
        nActiveTo   := StrToIntDef(ComboBox2.Text, 20);
        with DBPlanner1.Display do
        begin
          ActiveStart  := nActiveFrom * 60 div DisplayUnit;
          ActiveEnd    := nActiveTo * 60 div DisplayUnit;
        end;
      end;
    end;
  finally
    FreeAndNil(ActPeriodForm);
  end;
end;

procedure TMainForm.Colors1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TColorsForm, ColorsForm);
    with ColorsForm, DBPlanner1 do
    begin
      // Planner
      PanelInactive.Color    := Display.ColorNonActive;
      PanelActive.Color      := Display.ColorActive;
      PanelCurrent.Color     := Display.ColorCurrent;
      PanelCurrentItem.Color := Display.ColorCurrentItem;
      PanelSideBar.Color     := Sidebar.Background;
      PanelOccupied.Color    := Sidebar.Occupied;
      PanelIColor.Color      := DefaultItem.Color;
      PanelISelected.Color   := DefaultItem.SelectColor;
      PanelICaption.Color    := DefaultItem.CaptionBkg;
      PanelITrack.Color      := DefaultItem.TrackColor;
      PanelTrack.Color       := TrackColor;
      CBBump.Checked         := TrackBump;
      // calendar
      ActiveDayPanel.Color   := DBPlannerCalendar1.SelectColor;
      EventColPanel.Color    := DBPlannerCalendar1.EventMarkerColor;
      CBWeek.Checked         := DBPlannerCalendar1.ShowWeeks;
      CBShape.ItemIndex      := Ord(DBPlannerCalendar1.EventMarkerShape);

      if ShowModal = mrOK then
        with ColorsForm, DBPLanner1 do
        begin
          // PLanner
          Display.ColorNonActive   := PanelInactive.Color;
          Display.ColorActive      := PanelActive.Color;
          Display.ColorCurrent     := PanelCurrent.Color;
          Display.ColorCurrentItem := PanelCurrentItem.Color;
          Sidebar.Background       := PanelSideBar.Color;
          Sidebar.Occupied         := PanelOccupied.Color;
          DefaultItem.Color        := PanelIColor.Color;
          DefaultItem.SelectColor  := PanelISelected.Color;
          DefaultItem.CaptionBkg   := PanelICaption.Color;
          DefaultItem.TrackColor   := PanelITrack.Color;
          TrackColor               := PanelTrack.Color;
          TrackBump                := CBBump.Checked;
          // calendar
          with DBPlannerCalendar1 do
          begin
            SelectColor      := ActiveDayPanel.Color;
            EventMarkerColor := EventColPanel.Color;
            ShowWeeks        := CBWeek.Checked;
            EventMarkerShape := IntToCalShape(CBShape.ItemIndex + 1);
            UpdateCalendar;
          end;
        end;
    end;
  finally
    FreeAndNil(ColorsForm);
  end;
end;

procedure TMainForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE: Close;
  end;
end;

function TMainForm.IntToShape(Index: Integer) : TPlannerShape;
begin
  // psRect, psRounded, psHexagon
  case Index of
    3: Result := psHexagon;
    2: Result := psRounded;
  else
    Result := psRect;
  end;
end;

function TMainForm.IntToCalShape(Index: Integer) : TEventShape;
begin
  // evsRectangle, evsCircle, evsSquare, evsTriangle, evsNone
  case Index of
    1: Result := evsRectangle;
    2: Result := evsCircle;
    3: Result := evsSquare;
    4: Result := evsTriangle;
  else
    Result := evsNone;
  end;
end;

procedure TMainForm.Edit1Click(Sender: TObject);
begin
  // just to make sure
  if DBPlanner1.Items.Selected = nil then
  begin
    MessageDlg('Must select an item to edit it!', mtWarning, [mbOK], 0);
    Exit;
  end;

  try
    Application.CreateForm(TAppointForm, AppointForm);
    with AppointForm, DBPlanner1 do
    begin
      AppointForm.Tag        := 1;  // signal edit instead of new
      EdSubject.Text         := Items.Selected.CaptionText;
      PlanDate.Date          := Items.Selected.ItemStartTime;
      StartTime.Time         := Items.Selected.ItemStartTime;
      EndTime.Time           := Items.Selected.ItemEndTime;
      Notes.Lines            := Items.Selected.Text;

      ImagePicker.ItemIndex  := Items.Selected.ImageID;
      PanelColor.Color       := Items.Selected.Color;
      // three possible shapes: 1-psRect, 2-psRounded, 3-psHexagon
      CBShape.ItemIndex      := Ord(Items.Selected.Shape);
      if (ShowModal = mrOK) then
      begin
        Items.Selected.CaptionText       := EdSubject.Text;
        Items.Selected.ItemStartTime     := StrToDateTime(DateToStr(PlanDate.Date) + ' ' + TimeToStr(StartTime.Time));
        Items.Selected.ItemEndTime       := StrToDateTime(DateToStr(PlanDate.Date) + ' ' + TimeToStr(EndTime.Time));
        Items.Selected.Text              := TStringList(Notes.Lines);

        Items.Selected.ImageID           := ImagePicker.ItemIndex;
        Items.Selected.Color             := PanelColor.Color;
        // three possible shapes: 1-psRect, 2-psRounded, 3-psHexagon
        Items.Selected.Shape             := IntToShape(CBShape.ItemIndex + 1);

        Items.Selected.Update;
        DBPlannerCalendar1.UpdateCalendar;
        Application.ProcessMessages;
        DBPlannerCalendar1.Update;
      end;
    end;
  finally
    FreeAndNil(AppointForm);
  end;
end;

procedure TMainForm.DBPlanner1ItemPopupPrepare(Sender: TObject;
  PopupMenu: TPopupMenu; Item: TPlannerItem);
begin
  // edit/alarm is not allowed when an item is hovered on but not selected
  Edit1.Enabled  := (DBPlanner1.Items.Selected <> nil);
  Alarm1.Enabled := (DBPlanner1.Items.Selected <> nil);
end;

procedure TMainForm.Alarm1Click(Sender: TObject);
var
  Hour, Min, Sec, MSec: Word;
begin
  // just to make sure
  if DBPlanner1.Items.Selected = nil then
  begin
    MessageDlg('Must select an item to set its alarm!', mtWarning, [mbOK], 0);
    Exit;
  end;

  // must allow for selecting alarm active or not and time before expiry
  DecodeTime(DBPlanner1.Items.Selected.Alarm.TimeBefore, Hour, Min, Sec, MSec);

  try
    Application.CreateForm(TAlarmForm, AlarmForm);
    with AlarmForm, DBPlanner1 do
    begin
      CBActive.Checked := Items.Selected.Alarm.Active;
      EdMins.Text      := IntToStr(Hour * 60 + Min);
      if ShowModal = mrOK then
      begin
        Items.Selected.Alarm.Handler := AlarmSound1;
        Items.Selected.Alarm.Active := CBActive.Checked;
        Items.Selected.Alarm.TimeBefore := EncodeTime(0, StrToIntDef(EdMins.Text, 5), 0, 0);
      end;
    end;
  finally
    FreeAndNil(AlarmForm);
  end;
end;

procedure TMainForm.New1Click(Sender: TObject);
var
  NewItem : TPlannerItem;
begin
  NewItem := DBPlanner1.CreateItemAtSelection;
  try
    Application.CreateForm(TAppointForm, AppointForm);
    with AppointForm, DBPlanner1 do
    begin
      AppointForm.Tag        := 0;  // signal new
      EdSubject.Text         := NewItem.CaptionText;
      PlanDate.Date          := NewItem.ItemStartTime;
      StartTime.Time         := NewItem.ItemStartTime;
      EndTime.Time           := NewItem.ItemEndTime;
      Notes.Lines            := NewItem.Text;

      ImagePicker.ItemIndex  := NewItem.ImageID;
      PanelColor.Color       := NewItem.Color;
      // three possible shapes: 1-psRect, 2-psRounded, 3-psHexagon
      CBShape.ItemIndex      := Ord(NewItem.Shape);
      
      if (ShowModal = mrOK) then
      begin
        NewItem.CaptionText       := EdSubject.Text;
        NewItem.ItemStartTime     := StrToDateTime(DateToStr(PlanDate.Date) + ' ' + TimeToStr(StartTime.Time));
        NewItem.ItemEndTime       := StrToDateTime(DateToStr(PlanDate.Date) + ' ' + TimeToStr(EndTime.Time));
        NewItem.Text              := TStringList(Notes.Lines);

        NewItem.ImageID           := ImagePicker.ItemIndex;
        NewItem.Color             := PanelColor.Color;
        // three possible shapes: 1-psRect, 2-psRounded, 3-psHexagon
        NewItem.Shape             := IntToShape(CBShape.ItemIndex + 1);

        NewItem.Update;
        DBPlannerCalendar1.UpdateCalendar;
        Application.ProcessMessages;
        DBPlannerCalendar1.Update;
      end
      else
        FreeItem(NewItem);
    end;
  finally
    FreeAndNil(AppointForm);
  end;
end;

procedure TMainForm.DBPlanner1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source = DBTodoList1.List);
end;

procedure TMainForm.DBPlanner1DragDropCell(Sender, Source: TObject; X,
  Y: Integer);
begin
  (Sender as TDBPlanner).SelPosition := x;
  (Sender as TDBPlanner).SelItemend := y + 1;
  (Sender as TDBPlanner).SelItemBegin := y;

  with (Sender as TDBPlanner).CreateItemAtSelection do
  begin
    CaptionText := DBTodoList1.Selected.Subject;
    Text.Assign(DBTodoList1.Selected.Notes);
  end;
  DBTodoList1.FreeItem(DBTodoList1.Selected);
end;

procedure TMainForm.DBTodoList1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  ATodoItem: TTodoItem;
begin
  ATodoItem := DBTodolist1.CreateItem;
  with ATodoItem do
  begin
    Subject := (Source as TDBPlanner).Items.Selected.CaptionText;
    Notes.Assign((Source as TDBPlanner).Items.Selected.Text);
  end;
  DBTodoList1.UpdateItem(ATodoItem);
  with (Source as TDBPlanner) do
    if DragMove then
      FreeItem(Items.Selected);
end;

procedure TMainForm.DBTodoList1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source = DBPlanner1);
end;

procedure TMainForm.Edit3Click(Sender: TObject);
begin
  if DBTodoList1.Selected = nil then
  begin
    MessageDlg('No item selected !', mtWarning, [mbOK], 0);
    Exit;
  end;
  Application.CreateForm(TTodoItemForm, TodoItemForm);
  try
    with TodoItemForm, DBTodoList1 do
    begin
      TodoItemForm.Tag      := 1;     // Signal edit
      EdSubject.Text        := Selected.Subject;
      CreateDate.Date       := Selected.CreationDate;
      DueDate.Date          := Selected.DueDate;
      Notes.Lines           := Selected.Notes;
      SpinComplete.Value    := Selected.Completion;
      CompBar.Position      := Selected.Completion;
      CBComplete.Checked    := Selected.Complete;
      ImagePicker.ItemIndex := Selected.ImageIndex;
      CBPriority.ItemIndex  := Ord(Selected.Priority);
      CBStatus.ItemIndex    := Ord(Selected.Status);
      if (Selected.CompletionDate > 0) then
        CompDate.Text       := DateToStr(Selected.CompletionDate);
      if ShowModal = mrOK then
      begin
        // update
        Selected.Subject        := EdSubject.Text;
        Selected.CreationDate   := CreateDate.Date;
        Selected.DueDate        := DueDate.Date;
        try
          if StrToDate(CompDate.Text) > 0 then
            Selected.CompletionDate := StrToDate(CompDate.Text);
        except
          Selected.CompletionDate := 0;
        end;
        Selected.Notes          := TStringList(Notes.Lines);
        Selected.Completion     := SpinComplete.Value;
        Selected.Complete       := CBComplete.Checked;
        Selected.ImageIndex     := ImagePicker.ItemIndex;
        Selected.Priority       := StringToPriority(CBPriority.Text);
        Selected.Status         := StringToStatus(CBStatus.Text);
        UpdateItem(Selected);
      end;
    end;
  finally
    FreeAndNil(TodoItemForm);
  end;
end;

procedure TMainForm.Splitter1Moved(Sender: TObject);
begin
  // resize planner based on new CalPanel dim
  with DBPlanner1 do
    PositionWidth := (Width - Sidebar.Width - 20) div Positions;
end;

procedure TMainForm.Add1Click(Sender: TObject);
var
  ATodoItem: TTodoItem;
begin
  ATodoItem := DBTodoList1.CreateItem;
  Application.CreateForm(TTodoItemForm, TodoItemForm);
  try
    with TodoItemForm do
    begin
      ATodoItem.CreationDate := Date;
      ATodoItem.Subject      := 'New todo item';
      ATodoItem.CreationDate := Date;
      ATodoItem.DueDate      := Date + 5;

      TodoItemForm.Tag       := 0;     // Signal insert
      SpinComplete.Value     := 0;
      CompBar.Position       := 0;
      CBComplete.Checked     := False;
      ImagePicker.ItemIndex  := 1;
      CBPriority.ItemIndex   := 2;
      CBStatus.ItemIndex     := 0;
      EdSubject.Text         := ATodoItem.Subject;
      CreateDate.Date        := ATodoItem.CreationDate;
      DueDate.Date           := ATodoItem.DueDate;

      if ShowModal = mrOK then
      begin
        ATodoItem.Subject        := EdSubject.Text;
        ATodoItem.CreationDate   := CreateDate.Date;
        ATodoItem.DueDate        := DueDate.Date;
        try
          if StrToDate(CompDate.Text) > 0 then
            ATodoItem.CompletionDate := StrToDate(CompDate.Text);
        except
          ATodoItem.CompletionDate := 0;
        end;
        ATodoItem.Notes          := TStringList(Notes.Lines);
        ATodoItem.Completion     := SpinComplete.Value;
        ATodoItem.Complete       := CBComplete.Checked;
        ATodoItem.ImageIndex     := ImagePicker.ItemIndex;
        ATodoItem.Priority       := DBTodoList1.StringToPriority(CBPriority.Text);
        ATodoItem.Status         := DBTodoList1.StringToStatus(CBStatus.Text);
        DBTodoList1.UpdateItem(ATodoItem)
      end
      else
        DBTodoList1.FreeItem(ATodoItem);
    end;
  finally
    FreeAndNil(TodoItemForm);
  end;
end;

procedure TMainForm.Forcescalingtofit1Click(Sender: TObject);
begin
  with DBPlanner1.Display do
    ScaleToFit := not ScaleToFit;
end;

procedure TMainForm.Day1Click(Sender: TObject);
begin
  DBDaySource1.Active := False;
  DBMonthSource1.Active := False;
  with DBPlanner1 do
  begin
    Mode.PlannerType := plDay;
    ItemSource := DBDaySource1;
    Positions  := DBDaySource1.NumberOfDays;
    PositionWidth := (Width - Sidebar.Width - 20) div Positions;
    SideBar.DateTimeFormat := 'dd/mm/yyyy';
    Caption.Title := 'Day Planner (INS insert, DEL delete, CTRL/ALT-drag copy/move)';
    DBDaySource1.Active := True;
  end;
  DBPlanner1.Update;
end;

procedure TMainForm.Month1Click(Sender: TObject);
begin
  DBDaySource1.Active := False;
  DBMonthSource1.Active := False;
  with DBPlanner1 do
  begin
    Mode.PlannerType := plMonth;
    ItemSource := DBMonthSource1;
    Positions := 1;
    PositionWidth := Width - SideBar.Width - 20;
    SideBar.DateTimeFormat := 'dd/mm';
    Caption.Title := 'Month Planner (INS insert, DEL delete, CTRL/ALT-drag copy/move)';
  end;
  DBMonthSource1.Active := True;
  with DBPlanner1 do
  begin
    Header.Captions.Clear;
    // first item is a spacer !
    Header.Captions.Add('');
    Header.Captions.Add(FormatDateTime('mmmm yyyy',
          EncodeDate(DBMonthSource1.Year, DBMonthSource1.Month, 1)));
  end;
end;

procedure TMainForm.PlannerPopupPopup(Sender: TObject);
begin
  // if the itemsource is not day then view menu items are disabled
  View1.Enabled := (DBPlanner1.ItemSource = DBDaySource1);
end;

initialization
  timeseparator := '.';
  dateseparator := '/';

end.

