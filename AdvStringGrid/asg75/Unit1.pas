{***************************************************************************}
{ TAdvStringGrid demo application                                           }
{ for Delphi & C++Builder                                                   }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2009                                               }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{                                                                           }
{***************************************************************************}

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, AdvChartView, AdvChartLink, DB, DBTables,
  DBAdvGrid, AdvChartViewGDIP, StdCtrls, ImgList, AdvObj;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    AdvGDIPChartView1: TAdvGDIPChartView;
    ImageList1: TImageList;
    AdvChartLink1: TAdvChartLink;
    AdvChartLink2: TAdvChartLink;
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
  advstringgrid1.Cells[1, 0] := 'Serie 0';
  advstringgrid1.Cells[2, 0] := 'Serie 1';
  advstringgrid1.RowCount := 20;
  advstringgrid1.RandomFill(false, 100);

  advstringgrid1.AddImageIdx(1, 0, 0, haBeforeText, vaTop);
  advstringgrid1.AddImageIdx(2, 0, 1, haBeforeText, vaTop);

  advchartlink1.Active := true;
  advchartlink2.Active := true;
end;

end.
