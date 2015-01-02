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
  Dialogs, StdCtrls, PlannerWaitList, ExtCtrls, PlannerMonthView, Planner,
  ComCtrls, XPMan;

type
  TForm1 = class(TForm)
    PlannerMonthView1: TPlannerMonthView;
    PlannerWaitList1: TPlannerWaitList;
    Panel1: TPanel;
    Button1: TButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure PlannerMonthView1DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure PlannerMonthView1DragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure PlannerWaitList1DragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure PlannerWaitList1DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.PlannerMonthView1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  dt: TDateTime;
  plIt: TPlannerItem;
  plmIt: TPlannerItem;
begin
  if (Source is TPlannerWaitList) then
  begin
    PlannerMonthView1.DateAtXY(X,Y,dt);
    if (PlannerWaitList1.ItemIndex >= 0) then
    begin
      plIt := PlannerWaitList1.Items[PlannerWaitList1.ItemIndex];
      plmIt := PlannerMonthView1.CreateItem;
      plmIt.Assign(plIt);
      plmIt.ItemStartTime := dt;
      plmIt.ItemEndTime := dt;
      PlannerWaitList1.Items.Delete(PlannerWaitList1.ItemIndex);
    end;
  end;
end;

procedure TForm1.PlannerMonthView1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TPlannerWaitList);
end;

procedure TForm1.PlannerWaitList1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TPlannerMonthView);
end;

procedure TForm1.PlannerWaitList1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  if Assigned(PlannerMonthView1.Items.Selected) then
  begin
    PlannerWaitList1.Items.Add.Assign(PlannerMonthView1.Items.Selected);
    PlannerMonthView1.FreeItem(PlannerMonthView1.Items.Selected);
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if datetimepicker1.Date <= datetimepicker2.date then
  begin
    with plannermonthview1.CreateItem do
    begin
      ItemStartTime :=  datetimepicker1.Date;
      ItemEndTime := datetimepicker2.Date;
      Text.Text := 'Programmatically created';
    end;
  end
  else
    ShowMessage('Start time must be before end time!');  
end;

end.
