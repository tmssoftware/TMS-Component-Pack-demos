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
  Dialogs, Planner, DB, ADODB, DBPlanner, ComCtrls, Grids, DBGrids,
  StdCtrls, XPMan;

type
  TForm1 = class(TForm)
    DBPlanner1: TDBPlanner;
    DBDaySource1: TDBDaySource;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    MonthCalendar1: TMonthCalendar;
    ADOQuery2: TADOQuery;
    ADOConnection1: TADOConnection;
    procedure MonthCalendar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBDaySource1UpdateItem(Sender: TObject;
      APlannerItem: TPlannerItem);
    procedure DBDaySource1DeleteItem(Sender: TObject;
      APlannerItem: TPlannerItem);
    procedure DBDaySource1InsertItem(Sender: TObject;
      APlannerItem: TPlannerItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.MonthCalendar1Click(Sender: TObject);
begin
  dbdaysource1.Day := MonthCalendar1.Date;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  adoconnection1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=dbplanner.mdb;Mode=Share Deny None;';
  adoconnection1.Connected := true;
  adoquery1.Active := true;
  dbdaysource1.Day := now;
end;

procedure TForm1.DBDaySource1UpdateItem(Sender: TObject;
  APlannerItem: TPlannerItem);
begin
  adoquery2.SQL.Text := 'UPDATE Schedules '
    + 'SET STARTTIME = '''+ FormatDateTime('yyyy-mm-dd hh:nn',APlannerItem.ItemStartTime)+''' '
    + ', ENDTIME = ''' + FormatDateTime('yyyy-mm-dd hh:nn',APlannerItem.ItemEndTime)+''' '
    + ', NOTES = ''' + APlannerItem.NotesText + ''' '
    + ', SUBJECT = ''' + APlannerItem.CaptionText + ''' '
    + 'WHERE KEYFIELD = '''+ APlannerItem.DBKey + '''';
  adoquery2.ExecSQL;
end;

procedure TForm1.DBDaySource1DeleteItem(Sender: TObject;
  APlannerItem: TPlannerItem);
begin
  adoquery2.SQL.Text := 'DELETE FROM Schedules WHERE KEYFIELD = '''+ APlannerItem.DBKey + '''';
  adoquery2.ExecSQL;
end;

procedure TForm1.DBDaySource1InsertItem(Sender: TObject;
  APlannerItem: TPlannerItem);
begin
  adoquery2.SQL.Text := 'INSERT INTO SCHEDULES (KEYFIELD, STARTTIME, ENDTIME, NOTES, SUBJECT) VALUES('
    + '''' + APlannerItem.DBKey + ''','
    + '''' + FormatDateTime('yyyy-mm-dd hh:nn',APlannerItem.ItemStartTime)+''','
    + '''' + FormatDateTime('yyyy-mm-dd hh:nn',APlannerItem.ItemEndTime)+''','
    + '''' + APlannerItem.NotesText + ''','
    + '''' + APlannerItem.CaptionText + ''')';
  adoquery2.ExecSQL;
end;

end.
