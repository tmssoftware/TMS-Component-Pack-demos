{*************************************************************************}
{ TAdvMemo, TDBAdvMemo demo application                                   }
{                                                                         }
{ written by TMS Software                                                 }
{            copyright © 1998-2012                                        }
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
unit UAdvMemoDemo04;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, AdvMemo, AdvmPS, XPMan, StdCtrls, ExtCtrls;

const
  rtText: array [0..3] of string = ('rtOpen', 'rtClosed', 'rtFile', 'rtIgnore');


type
  TFAdvMemoDemo04 = class(TForm)
    AdvMemo1: TAdvMemo;
    AdvPascalMemoStyler1: TAdvPascalMemoStyler;
    Panel1: TPanel;
    Panel2: TPanel;
    BExpand: TButton;
    BCollapse: TButton;
    BRemove: TButton;
    BAutoFold: TButton;
    SGRegions1: TStringGrid;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure SGRegions1Click(Sender: TObject);
    procedure SGRegions1KeyPress(Sender: TObject; var Key: Char);
    procedure ShowGridRow(Grid: TStringGrid; ridx : integer);
    procedure BExpandClick(Sender: TObject);
    procedure BCollapseClick(Sender: TObject);
    procedure BRemoveClick(Sender: TObject);
    procedure BAutoFoldClick(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  FAdvMemoDemo04: TFAdvMemoDemo04;

implementation

uses UInputType;

{$R *.dfm}

procedure TFAdvMemoDemo04.BAutoFoldClick(Sender: TObject);
begin
  AdvMemo1.AutoCodeFold;
end;

procedure TFAdvMemoDemo04.BCollapseClick(Sender: TObject);
begin
  AdvMemo1.CollapseAllNodes;
end;

procedure TFAdvMemoDemo04.BExpandClick(Sender: TObject);
begin
  AdvMemo1.ExpandAllNodes;
end;

procedure TFAdvMemoDemo04.BRemoveClick(Sender: TObject);
begin
  AdvMemo1.RemoveAllCodeFolding;
end;

procedure TFAdvMemoDemo04.FormCreate(Sender: TObject);
var
  ridx: integer;
begin
  AdvMemo1.Lines.LoadFromFile('.\uadvmemodemo04.pas');
  AdvMemo1.CodeFolding.Enabled := True;
  with SGRegions1 do
  begin
     Cells[0,0] := 'Identifier';
     Cells[1,0] := 'RegionStart';
     Cells[2,0] := 'RegionEnd';
     Cells[3,0] := 'RegionType';
     Cells[4,0] := 'ShowComments';

     for ridx := 0 to AdvPascalMemoStyler1.RegionDefinitions.Count - 1 do
       ShowGridRow(SGRegions1, ridx);

     Col := 0;
     Row := ridx + 1;
  end;
end;

procedure TFAdvMemoDemo04.SGRegions1Click(Sender: TObject);
begin
if (SGRegions1.Col = 3) and (SGRegions1.Row > 0) then
  begin
    FInputType.ShowModal;
  end;
end;

procedure TFAdvMemoDemo04.ShowGridRow(Grid: TStringGrid; ridx : integer);
begin
  Grid.Cells[0, ridx + 1] := AdvPascalMemoStyler1.RegionDefinitions[ridx].Identifier;
  Grid.Cells[1, ridx + 1] := AdvPascalMemoStyler1.RegionDefinitions[ridx].RegionStart;
  Grid.Cells[2, ridx + 1] := AdvPascalMemoStyler1.RegionDefinitions[ridx].RegionEnd;
  case AdvPascalMemoStyler1.RegionDefinitions[ridx].RegionType of
  rtOpen:   Grid.Cells[3, ridx + 1] := rtText[0];
  rtClosed: Grid.Cells[3, ridx + 1] := rtText[1];
  rtFile:   Grid.Cells[3, ridx + 1] := rtText[2];
  rtIgnore: Grid.Cells[3, ridx + 1] := rtText[3];
  end;
  Grid.Cells[4, ridx + 1] := BoolToStr(AdvPascalMemoStyler1.RegionDefinitions[ridx].ShowComments);
end;

procedure TFAdvMemoDemo04.SGRegions1KeyPress(Sender: TObject; var Key: Char);
const
  crlf: string = #13 + #10;
begin
if (key = #13) then
  begin
    if (sgRegions1.Row>AdvPascalMemoStyler1.RegionDefinitions.Count)  then
      begin
      with AdvPascalMemoStyler1.RegionDefinitions.Add do
        begin
        Identifier := 'new';
        RegionStart := 'begin';
        RegionEnd := 'end';
        RegionType := rtClosed;
        ShowComments := False;
        ShowGridRow(SGRegions1, AdvPascalMemoStyler1.RegionDefinitions.Count-1);

        AdvMemo1.Lines.Insert(18,'new' + crlf + 'begin' + crlf + '//this is a codefolding test' + crlf + 'end' + crlf);
        end;
      end
    else
      case sgRegions1.Col of
      0 : AdvPascalMemoStyler1.RegionDefinitions[SGRegions1.Row-1].Identifier := SGRegions1.Cells[0,SGRegions1.Row];
      1 : AdvPascalMemoStyler1.RegionDefinitions[SGRegions1.Row-1].RegionStart := SGRegions1.Cells[0,SGRegions1.Row];
      2 : AdvPascalMemoStyler1.RegionDefinitions[SGRegions1.Row-1].RegionEnd := SGRegions1.Cells[0,SGRegions1.Row];
      4 : AdvPascalMemoStyler1.RegionDefinitions[SGRegions1.Row-1].ShowComments := StrToBool(SGRegions1.Cells[0,SGRegions1.Row]);
    end;
  AdvMemo1.CodeFolding.Enabled := False;
  AdvMemo1.CodeFolding.Enabled := True;
  end;
end;

end.


