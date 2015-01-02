{*************************************************************************}
{ TWebData demo application                                               }
{ for Delphi 4.0,5.0,6.0 & C++Builder 4.0,5.0                             }
{                                                                         }
{ written by TMS Software                                                 }
{           copyright © 2001 - 2002                                       }
{           Email : info@tmssoftware.com                                  }
{           Web : http://www.tmssoftware.com                              }
{*************************************************************************}

unit uwddemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WebData, StdCtrls, Grids;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Button1: TButton;
    WebData1: TWebData;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  quotes:string;
  i: integer;
begin
  webdata1.Data.Clear;

  for i := 1 to stringgrid1.RowCount - 1 do
  begin
    quotes := stringgrid1.Cells[1,i];
    with webdata1.Data.Add do
    begin
      scanfirst := '<span id="yfs_l10';
      scanfrom := '">';
      scanto := '</';
      url := 'http://finance.yahoo.com/q?s='+quotes+'&d=v1';
    end;
  end;

  webdata1.Execute;


  for i := 1 to stringgrid1.RowCount - 1 do
  begin
    stringgrid1.Cells[2,i] := webdata1.Data.Items[i - 1].Data;
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  stringgrid1.Cells[1,0] := 'Symbol';
  stringgrid1.Cells[2,0] := 'Quote';
  stringgrid1.Cells[1,1] := 'GOOG';
  stringgrid1.Cells[1,2] := 'MSFT';
  stringgrid1.Cells[1,3] := 'INTC';
  stringgrid1.Cells[1,4] := 'AMZN';
  stringgrid1.Cells[1,5] := 'NOK';
  stringgrid1.ColWidths[0] := 20;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  stringgrid1.RowCount := stringgrid1.RowCount + 1;
end;

end.
