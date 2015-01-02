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
  Dialogs, Buttons, Planner, MyPlanner, XPMan;

type
  TForm1 = class(TForm)
    MyPlanner1: TMyPlanner;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure MyPlanner1ItemCreated(Sender: TObject; Item: TPlannerItem);
    procedure MyPlanner1ItemRightClick(Sender: TObject;
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

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  myplanner1.Items.CopyToClipboard;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  myplanner1.Items.CutToClipboard;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  myplanner1.Items.PasteFromClipboardAtPos;
end;

procedure TForm1.MyPlanner1ItemCreated(Sender: TObject;
  Item: TPlannerItem);
begin
  // initialises the property of the newly created item
  TMyPlannerItem(Item).MyProperty := 'myprop';
end;

procedure TForm1.MyPlanner1ItemRightClick(Sender: TObject;
  Item: TPlannerItem);
begin
  // shows the extra property of the new class
  ShowMessage(TMyPlannerItem(Item).MyProperty);
end;

end.
