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
unit Uasg43;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, StdCtrls, ComCtrls, ExtCtrls, AdvObj
  ,Variants, XPMan;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1GetCellBorder(Sender: TObject; ARow,
      ACol: Integer; APen: TPen; var Borders: TCellBorders);
    procedure AdvStringGrid1GetCellBorderProp(Sender: TObject; ARow,
      ACol: Integer; LeftPen, TopPen, RightPen, BottomPen: TPen);
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
  AdvStringGrid1.RandomFill(false, 100);
end;

procedure TForm1.AdvStringGrid1GetCellBorder(Sender: TObject; ARow,
  ACol: Integer; APen: TPen; var Borders: TCellBorders);
begin
  if not Odd(ACol) and (ARow > 0) and (ACol > 0) then
  begin
    Borders := [cbLeft];
    APen.Width := 1;
    APen.Color := clBlack;
  end;

  if not Odd(ARow) and (ARow > 0) and (ACol > 0) then
  begin
    Borders := Borders + [cbBottom];
    APen.Width := 1;
    APen.Color := clBlack;
  end;

end;

procedure TForm1.AdvStringGrid1GetCellBorderProp(Sender: TObject; ARow,
  ACol: Integer; LeftPen, TopPen, RightPen, BottomPen: TPen);
begin
  LeftPen.Color := clBlue;

  BottomPen.Color := clRed;
end;

end.
