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

unit uasg31;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Series, TeEngine, ExtCtrls, TeeProcs, Chart, Grids, AdvGrid,
  ChartLink, ComCtrls, BaseGrid, AdvObj, xpman;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    SaveBtn: TButton;
    LoadBtn: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Chart1: TChart;
    Series1: TBarSeries;
    Series2: TBarSeries;
    Chart2: TChart;
    Chart3: TChart;
    Series3: TPieSeries;
    Series4: TPieSeries;
    Label1: TLabel;
    ChartLink1: TChartLink;
    ChartLink2: TChartLink;
    ChartLink3: TChartLink;
    ChartLink4: TChartLink;
    procedure SaveBtnClick(Sender: TObject);
    procedure LoadBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadChart;
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.SaveBtnClick(Sender: TObject);
begin
  AdvStringGrid1.SaveFixedCells := False;
  AdvStringGrid1.SaveToCSV('carsales.csv');
end;

procedure TForm1.LoadChart;
begin
  AdvStringGrid1.SaveFixedCells := False;
  AdvStringGrid1.LoadFromCSV('carsales.csv');
  AdvStringGrid1.AutoSizeColumns(true, 10);
end;

procedure TForm1.LoadBtnClick(Sender: TObject);
begin
  LoadChart;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  LoadChart;
end;

end.
