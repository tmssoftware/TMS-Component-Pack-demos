{*************************************************************************}
{ TPlanner demo application                                                     }
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

unit Udbplan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBPlanner, Planner, Db, DBTables, Grids, DBGrids, ComObj, StdCtrls, ActiveX,
  ExtCtrls, DBCtrls, Menus, ImgList, Mask, ComCtrls, ADODB, XPMan;

type
  TForm1 = class(TForm)
    DBPlanner1: TDBPlanner;
    DBDaySource1: TDBDaySource;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBDaySource2: TDBDaySource;
    DBPlanner2: TDBPlanner;
    ItemPopup: TPopupMenu;
    Color1: TMenuItem;
    Caption1: TMenuItem;
    ColorDialog1: TColorDialog;
    ImageList1: TImageList;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    MonthCalendar1: TMonthCalendar;
    Label5: TLabel;
    ADOTable1: TADOTable;
    ADOTable1KEYFIELD: TWideStringField;
    ADOTable1STARTTIME: TDateTimeField;
    ADOTable1ENDTIME: TDateTimeField;
    ADOTable1SUBJECT: TWideStringField;
    ADOTable1NOTES: TWideStringField;
    ADOTable1COLOR: TIntegerField;
    ADOTable1IMAGE: TIntegerField;
    ADOTable1CAPTION: TBooleanField;
    Button1: TButton;
    procedure DBPlanner1ItemInsert(Sender: TObject; Position, FromSel,
      FromSelPrecise, ToSel, ToSelPrecise: Integer);
    procedure DBPlanner1ItemDelete(Sender: TObject; Item: TPlannerItem);
    procedure Table1AfterDelete(DataSet: TDataSet);
    procedure DBDaySource1FieldsToItem(Sender: TObject; Fields: TFields;
      Item: TPlannerItem);
    procedure Color1Click(Sender: TObject);
    procedure DBDaySource1ItemToFields(Sender: TObject; Fields: TFields;
      Item: TPlannerItem);
    procedure DBPlanner1ItemPopupPrepare(Sender: TObject;
      PopupMenu: TPopupMenu; Item: TPlannerItem);
    procedure Caption1Click(Sender: TObject);
    procedure DBPlanner1ItemImageClick(Sender: TObject; Item: TPlannerItem;
      ImageIndex: Integer);
    procedure DBPlanner1PlannerNext(Sender: TObject);
    procedure DBPlanner1PlannerPrev(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MonthCalendar1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure UpdateHeaders(Offset: Integer);
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.DBPlanner1ItemInsert(Sender: TObject; Position, FromSel,
  FromSelPrecise, ToSel, ToSelPrecise: Integer);
begin
  with DBPlanner1.CreateItem do
  begin
    {take the settings from the Default item - just set properties below}
    ItemBegin:=FromSel;
    ItemEnd:=ToSel;
    ItemPos:=Position;
    Text.Text:='Item created at runtime on '+Formatdatetime('hh:nn dd/mm/yyyy',Now);
    Update;
  end;
end;

procedure TForm1.DBPlanner1ItemDelete(Sender: TObject; Item: TPlannerItem);
begin
  DBPlanner1.FreeItem(Item);
end;

procedure TForm1.Table1AfterDelete(DataSet: TDataSet);
begin
 dbdaysource1.SynchDBItems;
 dbdaysource2.SynchDBItems; 
end;

procedure TForm1.DBDaySource1FieldsToItem(Sender: TObject; Fields: TFields;
  Item: TPlannerItem);
begin
   Item.Color := TColor(Fields.FieldByName('COLOR').AsInteger);
   Item.CaptionBkg := Item.Color;
   Item.ImageID := Fields.FieldByName('IMAGE').AsInteger;
   if Fields.FieldByName('CAPTION').AsBoolean then
     Item.CaptionType := ctTime
   else
     Item.CaptionType := ctNone;
end;

procedure TForm1.Color1Click(Sender: TObject);
begin
  ColorDialog1.Color := DBPlanner1.PopupPlannerItem.Color;
  if ColorDialog1.Execute then
  begin
    DBPlanner1.PopupPlannerItem.Color := ColorDialog1.Color;
    DBPlanner1.PopupPlannerItem.CaptionBkg := ColorDialog1.Color;
    DBPlanner1.PopupPlannerItem.Update;
  end;
end;

procedure TForm1.DBDaySource1ItemToFields(Sender: TObject; Fields: TFields;
  Item: TPlannerItem);
begin
  Fields.FieldByName('COLOR').AsInteger := Integer(Item.Color);
  Fields.FieldByName('CAPTION').AsBoolean := Item.CaptionType = ctTime;
  Fields.FieldByName('IMAGE').AsInteger := Item.ImageID;
end;

procedure TForm1.DBPlanner1ItemPopupPrepare(Sender: TObject;
  PopupMenu: TPopupMenu; Item: TPlannerItem);
begin
  ItemPopup.Items[1].Checked := Item.CaptionType = ctTime;
end;

procedure TForm1.Caption1Click(Sender: TObject);
begin
  if DBPlanner1.PopupPlannerItem.CaptionType = ctTime then
    DBPlanner1.PopupPlannerItem.CaptionType := ctNone
  else
    DBPlanner1.PopupPlannerItem.CaptionType := ctTime;

  DBPlanner1.PopupPlannerItem.Update;
end;

procedure TForm1.DBPlanner1ItemImageClick(Sender: TObject;
  Item: TPlannerItem; ImageIndex: Integer);
begin
  if Item.ImageID < 5 then
    Item.ImageID := Item.ImageID + 1
  else
    Item.ImageID := 0;

  Item.Update;
end;

procedure TForm1.DBPlanner1PlannerNext(Sender: TObject);
begin
  UpdateHeaders(0);
end;

procedure TForm1.DBPlanner1PlannerPrev(Sender: TObject);
begin
  UpdateHeaders(-2);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  DBDaySource1.Day := Now - 3;
  DBDaySource1.NumberOfDays := 7;
  ADOTable1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\dbplanner.mdb;Persist Security Info=False';
  ADOTable1.Active := true;
  UpdateHeaders(-1);
end;

procedure TForm1.UpdateHeaders(Offset: Integer);
var
  i:integer;
begin
  DBPlanner1.Header.Captions.Clear;
  DBPlanner1.Header.Captions.Add('');
  for i := 1 to 3 do
  begin
    DBPlanner1.Header.Captions.Add(FormatDateTime('DDD dd/mm/yyyy',DBDaySource1.Day + i + Offset ));
  end;

end;

procedure TForm1.MonthCalendar1Click(Sender: TObject);
begin
  DBDaySource1.Day := MonthCalendar1.Date;
  UpdateHeaders(-1);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  DBDaySource1.Day := Now;
  with DBPlanner1.CreateItem do
  begin
    ItemStartTime := Now;
    ItemEndTime := ItemStartTime + EncodeTime(1,0,0,0);
    CaptionText := 'Auto created';
    Text.Text := 'This item is auto created';
    Update;
  end;
end;

end.
