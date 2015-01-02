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
unit UAdvDemo03;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvMemo, AdvmPS, StdCtrls, AdvCodeList, XPMan, ExtCtrls;

const
  crlf : string = #13 + #10;

type
  TForm1 = class(TForm)
    AdvMemo1: TAdvMemo;
    AdvMemo2: TAdvMemo;
    AdvPascalMemoStyler1: TAdvPascalMemoStyler;
    AdvCodeList1: TAdvCodeList;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure AdvCodeList1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure AdvCodeList1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure AdvMemo1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure AdvMemo1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure AdvMemo2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AdvCodeList1DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  Advcodelist1.CodeBlocks.Add(advmemo1.Selection);
  AdvCodeList1.CodeBlocks[AdvCodeList1.CodeBlocks.Count - 1].ImageIndex := 0;
end;

procedure TForm1.AdvCodeList1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := (source is TAdvMemo);
end;

procedure TForm1.AdvMemo1DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
if (source is tadvcodelist) then
  begin
    AdvMemo1.DropText(x,y,advcodelist1.CodeBlocks.Items[advcodelist1.itemindex].Code.Text);
  end;
end;

procedure TForm1.AdvMemo1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := true;
end;

procedure TForm1.AdvMemo2KeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) and (AdvMemo2.Lines[AdvMemo2.ActiveLine] <> '') then
     begin
     AdvPascalMemoStyler1.AllStyles[0].KeyWords.Add(AdvMemo2.Lines[AdvMemo2.ActiveLine]);
     end;
end;
procedure TForm1.FormCreate(Sender: TObject);
var
  ridx: integer;
begin
  AdvMemo1.Lines.LoadFromFile('.\UAdvDemo03.pas');
  with AdvPascalMemoStyler1.AutoCompletion do
  begin
     for ridx := 0 to AdvPascalMemoStyler1.AllStyles[0].KeyWords.Count-1 do
       Add(AdvPascalMemoStyler1.AllStyles[0].KeyWords[ridx]);
     for ridx := 0 to Count-1 do
       AdvMemo2.Lines.add(AdvPascalMemoStyler1.AutoCompletion.Strings[ridx]);

     AdvCodeList1.Codeblocks.Add('for idx := min to max do' + crlf + '  begin' + crlf + '  end;');
     AdvCodeList1.Codeblocks.Add('if = then' + crlf + '  begin' + crlf + '  end;');
     AdvCodeList1.Codeblocks.Add('if = then' + crlf + '  begin' + crlf + '  end'+ crlf + 'else' + crlf + '  begin' + crlf + '  end;');
     AdvCodeList1.Codeblocks.Add('case   of ' + crlf + 'end;');
     AdvCodeList1.Codeblocks.Add('while () do' + crlf + 'begin' + crlf + 'end;');
     AdvCodeList1.Codeblocks.Add('repeat' + crlf +  crlf + 'until ();');
     AdvCodeList1.Codeblocks.Add('try' + crlf + 'finally' + crlf + 'end;');
     AdvCodeList1.Codeblocks.Add('try' + crlf + 'exept' + crlf + 'end;');
     AdvCodeList1.Codeblocks.Add('procedure ();' + crlf + '  begin' + crlf + '  end;');
     AdvCodeList1.Codeblocks.Add('function();'+ crlf + '  begin' + crlf + '  end;');
  end;
end;

end.

