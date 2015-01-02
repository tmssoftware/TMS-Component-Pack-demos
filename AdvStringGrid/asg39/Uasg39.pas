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
unit Uasg39;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, StdCtrls, AsgPrev, ShellApi, XPMan, Variants,
  AdvObj;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    Button2: TButton;
    Button3: TButton;
    AdvPreviewDialog1: TAdvPreviewDialog;
    Button4: TButton;
    Button5: TButton;
    ColorDialog1: TColorDialog;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure AdvStringGrid1ButtonClick(Sender: TObject; ACol,
      ARow: Integer);
    procedure Button3Click(Sender: TObject);
    procedure AdvStringGrid1GetCellColor(Sender: TObject; ARow,
      ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{$R demo4.res}

procedure TForm1.FormCreate(Sender: TObject);
begin
  AdvStringGrid1.RandomFill(true, 1000);
  AdvStringGrid1.MergeCells(0, 5, 15, 1);
  AdvStringGrid1.Cells[0, 5] := ' This is a long text to show what is possible with TAdvStringGrid v2';

  AdvStringGrid1.MergeCells(1, 6, 10, 1);
  AdvStringGrid1.Cells[1, 6] := ' This another one that is long too';

  AdvStringGrid1.CreateBitButton(2, 2, 50, 20, 'Test', haBeforeText, vaTop).LoadFromResourceName(hinstance, 'OKBTN');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  AdvStringGrid1.cells[1, 6] := 'Updated merged cell content at : ' + TimeToStr(Now);
end;

procedure TForm1.AdvStringGrid1ButtonClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  showmessage('The BitBtn inplace editor was clicked');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if ColorDialog1.Execute then
    AdvStringGrid1.Colors[1, 6] := ColorDialog1.Color;
end;

procedure TForm1.AdvStringGrid1GetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  if ACol = 1 then
  begin
    AFont.Color := clBlue;
    AFont.Style := [fsBold];
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  AdvPreviewDialog1.Execute;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  AdvStringGrid1.SaveToHTML('asg2.htm');
  ShellExecute(0, 'open', 'asg2.htm', nil, nil, SW_NORMAL);
end;

end.
