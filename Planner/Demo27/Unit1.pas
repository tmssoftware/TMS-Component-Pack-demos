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
unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, Planner, DBPlanner, PlanRecurrEdit,
  StdCtrls, ExtCtrls, XPMan, ImgList
  {$IFDEF VER150}
  , ComCtrls, ImgList, PlanItemEdit
  {$ENDIF}
  ;

type
  TForm1 = class(TForm)
    DBPlanner1: TDBPlanner;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBDaySource1: TDBDaySource;
    RecurrEdit: TButton;
    RE: TPlannerRecurrencyEditor;
    Label1: TLabel;
    DBDaySource2: TDBDaySource;
    DBPeriodSource1: TDBPeriodSource;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ImageList1: TImageList;
    DBMonthSource1: TDBMonthSource;
    procedure FormCreate(Sender: TObject);
    procedure RecurrEditClick(Sender: TObject);
    procedure DBDaySource1GetResourceName(Sender: TObject;
      ResourceIndex: Integer; var ResourceName: String);
    procedure DBPlanner1PlannerPrev(Sender: TObject);
    procedure DBPlanner1PlannerNext(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBPeriodSource1GetResourceName(Sender: TObject;
      ResourceIndex: Integer; var ResourceName: String);
    procedure DBDaySource2FieldsToItem(Sender: TObject; Fields: TFields;
      Item: TPlannerItem);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure UpdateLabel;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin


  adotable1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\dbplanner.mdb;Persist Security Info=False';
  adotable1.Active := true;
  dbdaysource1.Day := now;

  label1.Caption := datetostr(now);

  combobox1.ItemIndex := 1;
  ComboBox1Change(Self);
end;

var
  RE: TPlannerRecurrencyEditor;

procedure TForm1.RecurrEditClick(Sender: TObject);
begin
  if Assigned(DBPlanner1.Items.Selected) then
  begin
    RE.Recurrency := DBPlanner1.Items.Selected.Recurrency;
    if RE.Execute then
    begin
      DBPlanner1.Items.Selected.Recurrency := RE.Recurrency;
      DBPlanner1.Items.Selected.Update;
    end;
  end
  else
   ShowMessage('No item selected');
end;

procedure TForm1.DBDaySource1GetResourceName(Sender: TObject;
  ResourceIndex: Integer; var ResourceName: String);
begin
  ResourceName := 'Resource ' + IntToStr(ResourceIndex);
end;

procedure TForm1.DBPlanner1PlannerPrev(Sender: TObject);
var
  dt: TDateTime;
begin
  UpdateLabel;
  if ComboBox1.ItemIndex = 2 then
  begin
    dbperiodsource1.Active := false;
    dt := dbperiodsource1.StartDate;
    dt := incmonth(dt,-1);
    dbperiodsource1.StartDate := dt;
    dt := incmonth(dt) - 1;
    dbperiodsource1.EndDate := dt;
    dbperiodsource1.Active := true;
  end;
end;

//RRULE:FREQ=WEEKLY;COUNT=9;BYDAY=TU,TH

//RRULE:FREQ=DAILY;COUNT=3

procedure TForm1.DBPlanner1PlannerNext(Sender: TObject);
var
  dt: tdatetime;
begin
  UpdateLabel;

  if ComboBox1.ItemIndex = 2 then
  begin
    dbperiodsource1.Active := false;
    dt := dbperiodsource1.StartDate;
    dt := incmonth(dt);
    dbperiodsource1.StartDate := dt;
    dt := incmonth(dt) - 1;
    dbperiodsource1.EndDate := dt;
    dbperiodsource1.Active := true;
  end;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  case combobox1.itemindex of
  0: dbplanner1.ItemSource := dbdaysource1;
  1: dbplanner1.ItemSource := dbdaysource2;
  2: dbplanner1.ItemSource := dbperiodsource1;
  3: dbplanner1.ItemSource := dbmonthsource1;
  end;
  UpdateLabel;
end;

procedure TForm1.UpdateLabel;
begin
  case combobox1.itemindex of
  0: label1.Caption := DateToStr(dbdaysource1.Day);
  1: label1.Caption := DateToStr(dbdaysource2.Day) + ' to ' + DateToStr(dbdaysource2.Day + dbdaysource2.NumberOfDays);
  2: label1.Caption := DateToStr(dbperiodsource1.StartDate) + ' to '+ DateToStr(dbperiodsource1.EndDate);
  end;
end;

procedure TForm1.DBPeriodSource1GetResourceName(Sender: TObject;
  ResourceIndex: Integer; var ResourceName: String);
begin
  ResourceName := 'Resource ' + IntToStr(ResourceIndex);
end;

procedure TForm1.DBDaySource2FieldsToItem(Sender: TObject; Fields: TFields;
  Item: TPlannerItem);
begin
  if Item.Recurrent then
    Item.ImageID := 0
  else
    Item.ImageID := -1;
end;

end.



