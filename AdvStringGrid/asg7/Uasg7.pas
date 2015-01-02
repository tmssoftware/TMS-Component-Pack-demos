{*************************************************************************}
{ TAdvStringGrid demo application                                         }
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

unit Uasg7;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, AdvGrid, BaseGrid, AdvObj, XPMan;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1GetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: string);
    procedure AdvStringGrid1GridHint(Sender: TObject; ARow, ACol: Integer;
      var hintstr: string);
    procedure AdvStringGrid1GetCellColor(Sender: TObject; ARow,
      ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure AdvStringGrid1GetAlignment(Sender: TObject; ARow,
      ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
  AdvStringGrid1.SaveFixedCells := FALSE;
  AdvStringGrid1.LoadFromCSV('sample.csv');
  AdvStringGrid1.AutoSizeColumns(FALSE, 8);
  AdvStringGrid1.AutoSizeRows(FALSE, 8);

end;

procedure TForm1.AdvStringGrid1GetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
  case ACol of
    0: AStyle := ssAlphaNoCase;
    1: AStyle := ssAlphaNoCase;
    2: AStyle := ssNumeric;
    3: AStyle := ssDate;
    4: begin
        AStyle := ssNumeric;
        ASuffix := 'pk';
      end;
    5: begin
        AStyle := ssFinancial;
        APrefix := '$';
      end;
  end;
end;

procedure TForm1.AdvStringGrid1GridHint(Sender: TObject; ARow,
  ACol: Integer; var hintstr: string);
begin
  case Acol of
    0: hintstr := 'Car manufacturer';
    1: hintstr := 'Car model';
    2: hintstr := 'Nr. of cylinders in model';
    3: hintstr := 'Introduction date';
    4: hintstr := 'Engine horse power';
    5: hintstr := 'Date of production start';
    6: hintstr := 'Link to manufacturer website';
  end;

end;

procedure TForm1.AdvStringGrid1GetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  if ((ACol = 0) and (ARow > 0)) then
  begin
    ABrush.Color := clYellow;
    AFont.Color := clRed;
    AFont.Style := [fsBold];
  end;

  if ((ACol = 2) and (ARow > 0)) then
  begin
    if (AdvStringGrid1.Cells[ACol, ARow] = '4') then AFont.Color := clGreen;
    if (AdvStringGrid1.Cells[ACol, ARow] = '6') then AFont.Color := clBlue;
    if (AdvStringGrid1.Cells[ACol, ARow] = '8') then AFont.Color := clBlack;
    if (AdvStringGrid1.Cells[ACol, ARow] = '12') then AFont.Color := clRed;
  end;

end;

procedure TForm1.AdvStringGrid1GetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  case ACol of
    1: HAlign := taCenter;
    2, 4: HAlign := taRightJustify;
  end;
end;


end.
