{********************************************************************}
{ TMS TDBAdvSmoothTimeLine Demo                                      }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2014                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit UDemo3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvSmoothTimeLine, DB, ADODB, DBAdvSmoothTimeLine, Grids, DBGrids,
  ExtCtrls, DBCtrls, IniFiles;

type
  TForm447 = class(TForm)
    DBAdvSmoothTimeLine1: TDBAdvSmoothTimeLine;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form447: TForm447;

implementation

{$R *.dfm}

procedure TForm447.FormCreate(Sender: TObject);
var
  i: integer;
begin
  ADOTable1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=DatabaseTimeLine.mdb;Persist Security Info=False';
  ADOTable1.Active := true;
  for I := 0 to DBGrid1.Columns.Count - 1 do
  begin
    DBGrid1.Columns[I].Width := 100;
  end;
end;

end.
