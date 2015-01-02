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
unit Uasg52;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, Grids, BaseGrid, AdvGrid, StdCtrls, asgprev, AdvObj, XPMan;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    AdvPreviewDialog1: TAdvPreviewDialog;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure AdvStringGrid1CustomCellDraw(Sender: TObject;
      Canvas: TCanvas; ACol, ARow: Integer; AState: TGridDrawState;
      ARect: TRect; Printing: Boolean);
    procedure AdvStringGrid1CustomCellSize(Sender: TObject;
      Canvas: TCanvas; ACol, ARow: Integer; var ASize: TPoint;
      Printing: Boolean);
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
begin
  advpreviewdialog1.Execute;
end;

procedure TForm1.AdvStringGrid1CustomCellDraw(Sender: TObject;
  Canvas: TCanvas; ACol, ARow: Integer; AState: TGridDrawState;
  ARect: TRect; Printing: Boolean);
begin
  if (arow > 0) and (acol > 0) then
  begin
    InflateRect(arect, -5, -5);
    Canvas.Pen.Color := clBlack;

    case (arow + acol + 2) mod 3 of
      0: Canvas.Brush.Color := clRed;
      1: Canvas.Brush.Color := clBlue;
      2: Canvas.Brush.Color := clGreen;
    end;

    case (arow + acol) mod 3 of
      0: begin
          Canvas.Ellipse(ARect.Left, ARect.Top, ARect.Right, ARect.Bottom);
        end;
      1: begin
          Canvas.Rectangle(ARect.Left, ARect.Top, ARect.Right, ARect.Bottom);
        end;
      2: begin
          Canvas.Polygon([Point(ARect.Left + (ARect.Right - ARect.Left) shr 1, ARect.Top), Point(ARect.Left, ARect.Bottom), Point(ARect.Right, ARect.Bottom)]);
        end;
    end;

    Canvas.Font.Size := 12;
    Canvas.TextOut(ARect.Left + (ARect.Right - ARect.Left) shr 1, ARect.Top + (ARect.Bottom - ARect.Top) shr 1, IntToStr(ACol));
  end;
end;


procedure TForm1.AdvStringGrid1CustomCellSize(Sender: TObject;
  Canvas: TCanvas; ACol, ARow: Integer; var ASize: TPoint;
  Printing: Boolean);
begin
  ASize := Point(100, 100);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  AdvStringGrid1.Print;
end;

end.
