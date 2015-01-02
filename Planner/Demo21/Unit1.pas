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
  Dialogs, DB, ADODB, Planner, DBPlanner, StdCtrls, XPMan;

type
  TForm1 = class(TForm)
    DBDaySource1: TDBDaySource;
    DBPlanner1: TDBPlanner;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    Label1: TLabel;
    procedure DBPlanner1ItemInsert(Sender: TObject; Position, FromSel,
      FromSelPrecise, ToSel, ToSelPrecise: Integer);
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

procedure TForm1.DBPlanner1ItemInsert(Sender: TObject; Position, FromSel,
  FromSelPrecise, ToSel, ToSelPrecise: Integer);
begin
  if DBPlanner1.Items.HasItem(FromSel,ToSel,Position) then
    ShowMessage('Sorry, the selected timeslot already has an event')
  else
    DBPlanner1.CreateItemAtSelection;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  DBPlanner1.Overlap := False;
  DBPlanner1.DefaultItem.AllowOverlap := False;
  ADOTable1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\dbplanner.mdb;Persist Security Info=False';
  ADOTable1.Active := true;
end;

end.
