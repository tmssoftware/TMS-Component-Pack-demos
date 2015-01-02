{*************************************************************************}
{ TAdvMemo, TDBAdvMemo demo application                                   }
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
unit UAdvMemoDemo02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvMemo, Grids, ImgList, XPMan;

type
  TFAdvMemoDemo02 = class(TForm)
    InputGrid1: TStringGrid;
    AdvMemo1: TAdvMemo;
    AdvMemoCapitalChecker1: TAdvMemoCapitalChecker;
    ImageList1: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure InputGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAdvMemoDemo02: TFAdvMemoDemo02;

implementation

{$R *.dfm}

procedure TFAdvMemoDemo02.FormActivate(Sender: TObject);
begin
  advmemo1.SetFocus;
end;

procedure TFAdvMemoDemo02.FormCreate(Sender: TObject);
var
  ridx:integer;
begin
  with AdvMemo1.AutoCorrect do
  begin
     OldValue.Clear;
     NewValue.Clear;

     AdvMemo1.Lines.Add('Correct text: ');
     AdvMemo1.Lines.Add('The quick brown fox jumps over the lazy dog.');
     AdvMemo1.Lines.Add('');
     AdvMemo1.Lines.Add('Try to type this version: ');
     AdvMemo1.Lines.Add('teh qiuck brovn ox jumbs ovr eth lazie frog. ');
     AdvMemo1.Lines.Add('');
     AdvMemo1.Lines.Add('Auto torrecting text: ');
     AdvMemo1.Lines.Add('');
     AdvMemo1.Lines.Add('');
     InputGrid1.Cells[0,0] := 'Old Value';
     InputGrid1.cells[1,0] := 'New Value';

     OldValue.Add('teh');   NewValue.Add('the');
     OldValue.Add('qiuck'); NewValue.Add('quick');
     OldValue.Add('brovn'); NewValue.Add('brown');
     OldValue.Add('ox');    NewValue.Add('fox');
     OldValue.Add('jumbs'); NewValue.Add('jumps');
     OldValue.Add('ovr');   NewValue.Add('over');
     OldValue.Add('eth');   NewValue.Add('the');
     OldValue.Add('lazie'); NewValue.Add('lazy');
     OldValue.Add('frog');  NewValue.Add('dog');

     for ridx := 0 to OldValue.Count - 1 do
       begin
         InputGrid1.Cells[0,ridx+1] := OldValue[ridx];
         InputGrid1.Cells[1,ridx+1] := NewValue[ridx];
       end;
     AdvMemo1.AddMarker(9, 0);
     AdvMemo1.GoToMarker(0);
  end;
end;

procedure TFAdvMemoDemo02.InputGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  if InputGrid1.Col < 1 then
    InputGrid1.Col := InputGrid1.Col + 1
  else
    begin
    if (InputGrid1.Cells[0, InputGrid1.Row] <> '') and (InputGrid1.Cells[1, InputGrid1.Row] <> '') then

    AdvMemo1.AutoCorrect.OldValue.Add(InputGrid1.Cells[0, InputGrid1.Row]);
    AdvMemo1.AutoCorrect.NewValue.Add(InputGrid1.Cells[1, InputGrid1.Row]);

    InputGrid1.Row := InputGrid1.Row + 1;
    InputGrid1.Col := 0;
    end;
end;

end.
