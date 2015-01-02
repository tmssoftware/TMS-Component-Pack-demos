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
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Planner, PlanExOutlook, StdCtrls, XPMan;

type
  TForm1 = class(TForm)
    PlannerOutlookExchange1: TPlannerOutlookExchange;
    Planner1: TPlanner;
    Button1: TButton;
    Label1: TLabel;
    lblApptCount: TLabel;
    ListBox1: TListBox;
    Label2: TLabel;
    Button2: TButton;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure PlannerOutlookExchange1AcceptAppointment(Sender: TObject;
      Appointment: Variant; var Accept: Boolean);
    procedure PlannerOutlookExchange1AppointmentToItem(Sender: TObject;
      Appointment: Variant; Item: TPlannerItem);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
  planner1.Items.BeginUpdate;
  PlannerOutlookExchange1.DoImport;
  planner1.Items.EndUpdate;
end;

procedure TForm1.PlannerOutlookExchange1AcceptAppointment(Sender: TObject;
  Appointment: Variant; var Accept: Boolean);
begin
  listbox1.items.Add(appointment.subject+' : ' + appointment.body);
  lblApptCount.Caption := IntToStr(StrToInt(lblApptCount.Caption) + 1);
  application.ProcessMessages;
end;

procedure TForm1.PlannerOutlookExchange1AppointmentToItem(Sender: TObject;
  Appointment: Variant; Item: TPlannerItem);
begin
  item.CaptionType := ctText;
  item.Alignment := taCenter;
  item.CaptionAlign := taCenter;
  item.CaptionBkg := clRed;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i:integer;
begin
  if Assigned(Planner1.Items.Selected) then
  begin
    for i := 1 to planner1.Items.Count do
      planner1.Items[i - 1].DoExport := false;

    planner1.Items.Selected.DoExport := true;

    PlannerOutlookExchange1.DoExport;

  end
  else
    ShowMessage('Sorry, no items selected');
end;

end.
