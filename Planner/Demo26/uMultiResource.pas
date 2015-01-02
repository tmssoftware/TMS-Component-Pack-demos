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
unit uMultiResource;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, ImgList, DBPlanner, ADODB, Planner, Grids, DBGrids,
  ComCtrls, ToolWin, XPMan;

type
  TForm1 = class(TForm)
    DBPlanner1: TDBPlanner;
    ADOTable1: TADOTable;
    ADOTable1KEYFIELD: TWideStringField;
    ADOTable1STARTTIME: TDateTimeField;
    ADOTable1ENDTIME: TDateTimeField;
    ADOTable1SUBJECT: TWideStringField;
    ADOTable1NOTES: TWideStringField;
    ADOTable1COLOR: TIntegerField;
    ADOTable1IMAGE: TIntegerField;
    ADOTable1CAPTION: TBooleanField;
    ADOTable1RESOURCE: TIntegerField;
    DataSource1: TDataSource;
    ColorDialog1: TColorDialog;
    ImageList1: TImageList;
    ItemPopup: TPopupMenu;
    Color1: TMenuItem;
    Caption1: TMenuItem;
    ADOTable2: TADOTable;
    ToolBar1: TToolBar;
    DateTimePicker1: TDateTimePicker;
    DBPeriodSource1: TDBPeriodSource;
    procedure DBTimeLineSource1ItemToFields(Sender: TObject;
      Fields: TFields; Item: TPlannerItem);
    procedure DBPlanner1ItemInsert(Sender: TObject; Position, FromSel,
      FromSelPrecise, ToSel, ToSelPrecise: Integer);
    procedure DBPlanner1ItemDelete(Sender: TObject; Item: TPlannerItem);
    procedure FormCreate(Sender: TObject);
    procedure DateTimePicker1CloseUp(Sender: TObject);
    procedure Color1Click(Sender: TObject);
    procedure DBPeriodSource1ItemToFields(Sender: TObject; Fields: TFields;
      Item: TPlannerItem);
    procedure DBPeriodSource1FieldsToItem(Sender: TObject; Fields: TFields;
      Item: TPlannerItem);
    procedure Caption1Click(Sender: TObject);
  private
    { Private declarations }
    Procedure FillPlanner;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.DBTimeLineSource1ItemToFields(Sender: TObject;
  Fields: TFields; Item: TPlannerItem);
begin
  Fields.FieldByName('COLOR').AsInteger := Integer(Item.Color);
  Fields.FieldByName('CAPTION').AsBoolean := Item.CaptionType = ctTime;
  Fields.FieldByName('IMAGE').AsInteger := Item.ImageID;
end;

procedure TForm1.DBPlanner1ItemInsert(Sender: TObject; Position, FromSel,
  FromSelPrecise, ToSel, ToSelPrecise: Integer);
begin
  with DBPlanner1.CreateItemAtSelection do
  begin
    {take the settings from the Default item - just set properties below}
    Text.Text:='New entry';
    Update;
  end;
end;

procedure TForm1.DBPlanner1ItemDelete(Sender: TObject; Item: TPlannerItem);
begin
  DBPlanner1.FreeItem(Item);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

  ADOTable1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\dbplanner.mdb;Persist Security Info=False';
  ADOTable2.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\dbplanner.mdb;Persist Security Info=False';

  ADOTable1.Active := true;
  ADOTable2.Active := true;
  DateTimePicker1.Date := Now;
  FillPlanner;
end;

procedure TForm1.DateTimePicker1CloseUp(Sender: TObject);
begin
  FillPlanner;
end;

procedure TForm1.FillPlanner;
Var
  PlannerPosition : Integer;
begin
  DBPeriodSource1.Active := false;

  DBPeriodSource1.StartDate := 0;
  DBPeriodSource1.EndDate := DBPeriodSource1.StartDate + 100000;

  DBPeriodSource1.StartDate := DateTimePicker1.Date;
  DBPeriodSource1.EndDate := DateTimePicker1.Date + 7;

  ADOTable1.Active := false;

  ADOTable2.Close;
  ADOTable2.Open;
  ADOTable2.Last;

  ADOTable2.Close;
  ADOTable2.Open;

  ADOTable2.First;
  PlannerPosition := 0;
  While NOT ADOTable2.Eof Do
  Begin
    With DBPeriodSource1.ResourceMap.Add Do
    Begin
       ResourceIndex := ADOTable2.FieldByName('ID').AsInteger;
       PositionIndex := PlannerPosition;
       DisplayName := ADOTable2.FieldByName('Name').AsString;
       inc(PlannerPosition);
    End;
    ADOTable2.Next;
  End;

  ADOTable2.Close;
  DBPeriodSource1.NumberOfResources := PlannerPosition;

  DBPeriodSource1.Active := true;

  ADOTable1.Active := true;
end;

procedure TForm1.Color1Click(Sender: TObject);
begin
  ColorDialog1.Color := dbplanner1.PopupPlannerItem.Color;
  if ColorDialog1.Execute then
  begin
    dbplanner1.PopupPlannerItem.Color := ColorDialog1.Color;
    dbplanner1.PopupPlannerItem.Update;
  end;
end;

procedure TForm1.DBPeriodSource1ItemToFields(Sender: TObject;
  Fields: TFields; Item: TPlannerItem);
begin
  Fields.FieldByName('COLOR').AsInteger := Integer(Item.Color);
  Fields.FieldByName('CAPTION').AsBoolean := Item.CaptionType = ctTime;
  Fields.FieldByName('IMAGE').AsInteger := Item.ImageID;
end;

procedure TForm1.DBPeriodSource1FieldsToItem(Sender: TObject;
  Fields: TFields; Item: TPlannerItem);
begin
  Item.Color := TColor(Fields.FieldByName('COLOR').AsInteger);

  if (Fields.FieldByName('CAPTION').AsBoolean) then
    Item.CaptionType := ctTime;
    
  Item.ImageID := Fields.FieldByName('IMAGE').AsInteger;
end;

procedure TForm1.Caption1Click(Sender: TObject);
begin
  if DBPlanner1.PopupPlannerItem.CaptionType = ctTime then
    DBPlanner1.PopupPlannerItem.CaptionType := ctNone
  else
    DBPlanner1.PopupPlannerItem.CaptionType := ctTime;
  DBPlanner1.PopupPlannerItem.Update;  
end;

end.
