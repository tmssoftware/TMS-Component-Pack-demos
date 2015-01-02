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
  Dialogs, StdCtrls, Planner, XPMan;

type
  TForm1 = class(TForm)
    Planner1: TPlanner;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  // programmatically create 2 items
  with planner1.CreateItem do
  begin
   ItemBegin := 8;
   ItemEnd := 12;
   ItemPos := 0;
   Text.Text := 'Item 1';
  end;
  with planner1.CreateItem do
  begin
   ItemBegin := 8;
   ItemEnd := 12;
   ItemPos := 1;
   Text.Text := 'Item 2';
  end;

  // create link from item 1 to item 2
  planner1.Items[0].LinkedItem :=  planner1.Items[1];
  planner1.Items[0].LinkType := ltLinkFull;   // begin & end time of items will simultanously change

  // create link from item 2 to item 1
  planner1.Items[1].LinkedItem :=  planner1.Items[0];
  planner1.Items[1].LinkType := ltLinkFull;
end;

end.
