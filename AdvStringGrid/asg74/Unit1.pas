{*************************************************************************}
{ TAdvStringGrid demo unit                                                }
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
  Dialogs, Grids, BaseGrid, AdvGrid, StdCtrls, ExtCtrls, AdvPanel, AdvStyleIF,
  AdvNavBar, AdvGDIP, GDIPicture, AdvChart, AdvChartViewGDIP, AdvObj;

type
  TChartCell = class(TInterfacedPersistent, ICellGraphic)
  private
    FChart: TAdvGDIPChart;
    procedure SetChart(const Value: TAdvGDIPChart);
  public
    { Interface }
    procedure Draw(Canvas: TCanvas; R: TRect; Col, Row: integer; Selected: boolean; Grid: TAdvStringGrid);
    function CellWidth: integer;
    function CellHeight: integer;
    function IsBackground: boolean;

    constructor Create;
    destructor Destroy; override;
    property Chart: TAdvGDIPChart read FChart write SetChart;
  end;

  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    st: integer;

    procedure Test(par1: integer; par2: boolean = false);
  end;


var
  Form1: TForm1;



implementation

{$R *.dfm}


{ TChartCell }

function TChartCell.CellHeight: integer;
begin
  Result := 0;
end;

function TChartCell.CellWidth: integer;
begin
  Result := 0;
end;

constructor TChartCell.Create;
begin
  inherited Create;
  FChart := TAdvGDIPChart.Create(self);
end;

destructor TChartCell.Destroy;
begin
  FChart.Free;
  inherited;
end;

procedure TChartCell.Draw(Canvas: TCanvas; R: TRect; Col, Row: integer;
  Selected: boolean; Grid: TAdvStringGrid);
var
  dr: trect;
begin
  dr := r;
  dr.Left := dr.Left + 2;
  FChart.Draw(Canvas, dr, 1, 1, true);
end;

function TChartCell.IsBackground: boolean;
begin
  Result := false;
end;

procedure TChartCell.SetChart(const Value: TAdvGDIPChart);
begin
  FChart.Assign(Value);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i: integer;
  v: double;
begin
  with (advstringgrid1.GetInterfacedCell(2, 2) as TChartCell) do
  begin
    Chart.Series[0].ClearPoints;

    Randomize;

    inc(st);

    if odd(st) then
      Chart.Series[0].ChartType := ctLine
    else
      Chart.Series[0].ChartType := ctArea;

    Chart.Series[0].LineColor := clGreen;

    // fill with random data
    for i := 1 to 100 do
    begin
      if odd(st) then
        v := 20 * sin(i / PI)
      else
        v := 20 * cos(i / PI);
      Chart.Series[0].AddSinglePoint(v);

    end;

  end;
  AdvStringGrid1.RepaintCell(2, 2);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AdvStringGrid1.GetInterfacedCell(2, 2).Free;
  AdvStringGrid1.GetInterfacedCell(2, 5).Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  cc: TChartCell;
  i: integer;

begin
  st := 0;
  AdvStringgrid1.DefaultRowHeight := 48;
  AdvStringgrid1.DefaultColWidth := 96;

  AdvStringGrid1.MergeCells(2, 2, 3, 3);
  AdvStringGrid1.MergeCells(2, 5, 3, 3);

  AdvStringGrid1.Cells[2, 1] := 'Chart in grid';


  cc := TChartCell.Create;
  AdvStringGrid1.AddInterfacedCell(2, 2, cc);

  with cc.Chart.Series.Add do
  begin
    // choose chart type
    ChartType := ctArea;

    // fill with sinusoidal data
    for i := 1 to 100 do
      AddSinglePoint(20 * sin(i / PI));

    // select range of data to display
    cc.Chart.Range.RangeFrom := 0;
    cc.Chart.Range.RangeTo := 99;

    // hide default legend
    cc.Chart.Legend.Visible := false;

    // set chart x-axis size & fontsize
    cc.Chart.XAxis.Size := 12;
    cc.Chart.XAxis.Font.Size := 7;

    // set serie x-axis
    XAxis.MajorFont.Size := 7;
    XAxis.MajorUnitSpacing := 0;
    XAxis.MajorUnit := 1;

    // set x-axis tickmark
    Xaxis.TickMarkSize := 2;
    XAxis.TickMarkWidth := 1;
    XAxis.TickMarkColor := clBlack;

    // set chart y-axis size & position
    cc.Chart.YAxis.Position := yRight;
    cc.Chart.YAxis.Size := 20;

    // enable auto units on y-axis
    cc.Chart.YAxis.AutoUnits := true;

    // set serie y-axis
    YAxis.Position := yRight;
    YAxis.MajorUnitSpacing := 8;
    YAxis.MajorFont.Size := 6;
    YAxis.MajorUnit := 1;

    // set y-axis tickmark
    YAxis.TickMarkColor := clRed;
    YAxis.TickMarkSize := 2;
    YAxis.TickMarkWidth := 1;

    // enable auto ranging
    AutoRange := arEnabled;
  end;

  cc := TChartCell.Create;
  AdvStringGrid1.AddInterfacedCell(2, 5, cc);

  with cc.Chart.Series.Add do
  begin
    // choose chart type

    ChartType := ctLine;
    LineColor := clBlue;

    // fill with sinusoidal data
    for i := 1 to 100 do
      AddSinglePoint(random(100));

    // select range of data to display
    cc.Chart.Range.RangeFrom := 0;
    cc.Chart.Range.RangeTo := 99;

    // hide default legend
    cc.Chart.Legend.Visible := false;

    // set chart x-axis size & fontsize
    cc.Chart.XAxis.Size := 12;
    cc.Chart.XAxis.Font.Size := 7;

    // set serie x-axis
    XAxis.MajorFont.Size := 7;
    XAxis.MajorUnitSpacing := 0;
    XAxis.MajorUnit := 1;

    // set x-axis tickmark
    Xaxis.TickMarkSize := 2;
    XAxis.TickMarkWidth := 1;
    XAxis.TickMarkColor := clBlack;

    // set chart y-axis size & position
    cc.Chart.YAxis.Position := yRight;
    cc.Chart.YAxis.Size := 20;

    // enable auto units on y-axis
    cc.Chart.YAxis.AutoUnits := true;

    // set serie y-axis
    YAxis.Position := yRight;
    YAxis.MajorUnitSpacing := 8;
    YAxis.MajorFont.Size := 6;
    YAxis.MajorUnit := 1;

    // set y-axis tickmark
    YAxis.TickMarkColor := clBlue;
    YAxis.TickMarkSize := 2;
    YAxis.TickMarkWidth := 1;

    // enable auto ranging
    AutoRange := arEnabled;

  end;

  test(1);
end;

procedure TForm1.Test(par1: integer; par2: boolean);
begin

  if par2 then
    showmessage('par 2= true');
end;

end.
