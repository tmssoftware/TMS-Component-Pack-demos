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
unit UDBpmvdemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvAlertWindow, StdCtrls, Menus, ExtCtrls,
  PlannerMonthView, Grids, DB, DBGrids,
  ADODB, DBPlannerMonthView, Planner, DBPlanner, PlanDraw, ComCtrls, XPMan;

type
  TForm1 = class(TForm)
    DBPlannerMonthView1: TDBPlannerMonthView;
    ADOTable1: TADOTable;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    PopupMenu2: TPopupMenu;
    Skin1: TMenuItem;
    Rectangle1: TMenuItem;
    Rounded1: TMenuItem;
    Hexagon1: TMenuItem;
    Attachement1: TMenuItem;
    Shadow1: TMenuItem;
    Color1: TMenuItem;
    Shadow2: TMenuItem;
    ColorDialog1: TColorDialog;
    Drawtool1: TMenuItem;
    ShapeDrawTool1: TShapeDrawTool;
    Caption1: TMenuItem;
    ime1: TMenuItem;
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Button2: TButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Skin1Click(Sender: TObject);
    procedure Rectangle1Click(Sender: TObject);
    procedure Rounded1Click(Sender: TObject);
    procedure Hexagon1Click(Sender: TObject);
    procedure Attachement1Click(Sender: TObject);
    procedure Shadow1Click(Sender: TObject);
    procedure Color1Click(Sender: TObject);
    procedure Drawtool1Click(Sender: TObject);
    procedure Shadow2Click(Sender: TObject);
    procedure Caption1Click(Sender: TObject);
    procedure ime1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBPlannerMonthView1FieldsToItem(Sender: TObject;
      Fields: TFields; Item: TPlannerItem);
    procedure DBPlannerMonthView1ItemToFields(Sender: TObject;
      Fields: TFields; Item: TPlannerItem);
    procedure DBPlannerMonthView1ItemSelect(Sender: TObject;
      Item: TPlannerItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
  if datetimepicker1.Date <= datetimepicker2.date then
  begin
    with DBPlannerMonthView1.CreateItem do
    begin
      ItemStartTime := DateTimePicker1.Date;
      ItemEndTime := DateTimePicker2.Date;
      Text.Text := 'Programmatically created';
      Update;
    end;
  end
  else
    ShowMessage('Start time must be before end time');
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  dbplannermonthview1.StartDay := combobox1.ItemIndex+ 1;
end;

procedure TForm1.Skin1Click(Sender: TObject);
begin
  if Assigned(dbplannermonthview1.items.Selected) then
   dbplannermonthview1.items.Selected.Shape := psSkin;
end;

procedure TForm1.Rectangle1Click(Sender: TObject);
begin
  if Assigned(dbplannermonthview1.items.Selected) then
   dbplannermonthview1.items.Selected.Shape := psRect;
end;

procedure TForm1.Rounded1Click(Sender: TObject);
begin
  if Assigned(dbplannermonthview1.items.Selected) then
   dbplannermonthview1.items.Selected.Shape := psRounded;
end;

procedure TForm1.Hexagon1Click(Sender: TObject);
begin
  if Assigned(dbplannermonthview1.items.Selected) then
   dbplannermonthview1.items.Selected.Shape := psHexagon;
end;

procedure TForm1.Attachement1Click(Sender: TObject);
begin
  if Assigned(dbplannermonthview1.items.Selected) then
  begin
    if dbplannermonthview1.items.Selected.Attachement = 'Attachement' then
      dbplannermonthview1.items.Selected.Attachement := ''
    else
      dbplannermonthview1.items.Selected.Attachement := 'Attachement';
  end;
end;

procedure TForm1.Shadow1Click(Sender: TObject);
begin
  if Assigned(dbplannermonthview1.items.Selected) then
  begin
    if dbplannermonthview1.items.Selected.URL = 'URL' then
      dbplannermonthview1.items.Selected.URL := ''
    else
      dbplannermonthview1.items.Selected.URL := 'URL';
  end;
end;

procedure TForm1.Color1Click(Sender: TObject);
begin
  if Assigned(dbplannermonthview1.items.Selected) then
    if colordialog1.Execute then
    begin
      dbplannermonthview1.items.Selected.Color := colordialog1.Color;
      dbplannermonthview1.items.Selected.Update;
    end;
end;

procedure TForm1.Drawtool1Click(Sender: TObject);
begin
  if Assigned(dbplannermonthview1.items.Selected) then
    dbplannermonthview1.items.Selected.Shape := psTool;
end;

procedure TForm1.Shadow2Click(Sender: TObject);
begin
  if Assigned(dbplannermonthview1.items.Selected) then
    dbplannermonthview1.items.Selected.Shadow := not dbplannermonthview1.items.Selected.Shadow;
end;

procedure TForm1.Caption1Click(Sender: TObject);
begin
  if Assigned(dbplannermonthview1.items.Selected) then
  begin
    if dbplannermonthview1.items.Selected.CaptionType = ctTime then
      dbplannermonthview1.items.Selected.CaptionType := ctNone
    else
      dbplannermonthview1.items.Selected.CaptionType := ctTime;
  end;
end;

procedure TForm1.ime1Click(Sender: TObject);
begin
  showmessage(formatdatetime('dd/mm/yyyy hh:nn',dbplannermonthview1.items.Selected.ItemRealStartTime));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  AdoTable1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\dbplanner.mdb;Persist Security Info=False';
  AdoTable1.Active := true;
end;

procedure TForm1.DBPlannerMonthView1FieldsToItem(Sender: TObject;
  Fields: TFields; Item: TPlannerItem);
begin
  Item.Color := TColor(Fields.FieldByName('COLOR').AsInteger);
end;

procedure TForm1.DBPlannerMonthView1ItemToFields(Sender: TObject;
  Fields: TFields; Item: TPlannerItem);
begin
  FIelds.FieldByName('COLOR').AsInteger := Integer(Item.Color);
end;

procedure TForm1.DBPlannerMonthView1ItemSelect(Sender: TObject;
  Item: TPlannerItem);
begin
  ShowMessage('Item selected:'+item.CaptionText);
end;

end.
