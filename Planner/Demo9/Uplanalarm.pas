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
unit Uplanalarm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Planner, StdCtrls, XPMan;

type
  TForm1 = class(TForm)
    Planner1: TPlanner;
    AlarmMessage1: TAlarmMessage;
    Label1: TLabel;
    ListBox1: TListBox;
    procedure Planner1ItemInsert(Sender: TObject; Position, FromSel,
      FromSelPrecise, ToSel, ToSelPrecise: Integer);
    procedure Planner1ItemAlarm(Sender: TObject; Item: TPlannerItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Planner1ItemInsert(Sender: TObject; Position, FromSel,
  FromSelPrecise, ToSel, ToSelPrecise: Integer);
begin
  with planner1.CreateItemAtSelection do
  begin
     text.text := 'New created item';
     alarm.active := true;

     alarm.handler := alarmmessage1;
     alarm.message := 'Hello world';
     alarm.NotifyType := anMessage;
     alarm.timebefore := encodetime(0,30,0,0);
  end;
end;

procedure TForm1.Planner1ItemAlarm(Sender: TObject; Item: TPlannerItem);
begin
  listbox1.items.Add('alarm triggered from '+item.Name);
end;

end.
