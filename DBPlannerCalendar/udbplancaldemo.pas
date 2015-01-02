unit udbplancaldemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, PlannerCal, DBPlannerCal, Grids, DBGrids;

type
  TForm1 = class(TForm)
    DBPlannerCalendar1: TDBPlannerCalendar;
    Table1: TTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
