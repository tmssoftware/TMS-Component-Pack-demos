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
unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, RichEdit, ComCtrls, ImgList, StdCtrls,
  AdvGridRTF, XPMan, AdvObj;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    ImageList1: TImageList;
    AdvGridRTFIO1: TAdvGridRTFIO;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{$R Icons.Res}

procedure TForm1.FormCreate(Sender: TObject);
begin
  with AdvStringGrid1 do
  begin
    with CreateIcon(1, 1, AdvGrid.haCenter, vaUnderText) do handle := LoadIcon(hinstance, 'ICON_1');
    with CreateIcon(1, 2, AdvGrid.haCenter, vaAboveText) do handle := LoadIcon(hinstance, 'ICON_2');
    with CreateIcon(1, 3, AdvGrid.haCenter, vaAboveText) do handle := LoadIcon(hinstance, 'ICON_3');
    with CreateIcon(1, 4, AdvGrid.haCenter, vaAboveText) do handle := LoadIcon(hinstance, 'ICON_4');
    with CreateIcon(1, 5, AdvGrid.haCenter, vaAboveText) do handle := LoadIcon(hinstance, 'ICON_5');

    Cells[1, 0] := 'Icons';

    Cells[1, 1] := 'cpu';
    Cells[1, 2] := 'trashcan';
    Cells[1, 3] := 'icon';
    Cells[1, 4] := 'floppy';
    Cells[1, 5] := 'audio';

    addimageidx(2, 1, 0, habeforetext, AdvGrid.vaCenter);
    addimageidx(2, 2, 1, haBeforeText, AdvGrid.vaCenter);
    addimageidx(2, 3, 2, haBeforeText, AdvGrid.vaCenter);
    addimageidx(2, 4, 3, haBeforeText, AdvGrid.vaCenter);
    addimageidx(2, 5, 4, haBeforeText, AdvGrid.vaCenter);

    Cells[2, 0] := 'Imagelist';

    Cells[2, 1] := 'mail';
    Cells[2, 2] := 'note';
    Cells[2, 3] := 'cancel';
    Cells[2, 4] := 'home';
    Cells[2, 5] := 'web';

    with CreateBitmap(3, 1, false, AdvGrid.haLeft, AdvGrid.vabottom) do LoadFromResourceName(hinstance, 'BITMAP_1');
    with CreateBitmap(3, 2, false, AdvGrid.haLeft, AdvGrid.vabottom) do LoadFromResourceName(hinstance, 'BITMAP_2');
    with CreateBitmap(3, 3, false, AdvGrid.haLeft, AdvGrid.vabottom) do LoadFromResourceName(hinstance, 'BITMAP_3');
    with CreateBitmap(3, 4, false, AdvGrid.haLeft, AdvGrid.vabottom) do LoadFromResourceName(hinstance, 'BITMAP_4');
    with CreateBitmap(3, 5, false, AdvGrid.haLeft, AdvGrid.vabottom) do LoadFromResourceName(hinstance, 'BITMAP_5');

    Cells[3, 1] := '';
    Cells[3, 2] := '';
    Cells[3, 3] := '';
    Cells[3, 4] := '';
    Cells[3, 5] := '';

    Cells[3, 0] := 'Bitmaps';

    autonumbercol(0);

    Cells[4, 0] := 'Multi image';
    Cells[5, 0] := 'Rich Text';

    addmultiimage(4, 1, 0, haBeforeText, AdvGrid.vaCenter);

    with CellImages[4, 1] do
    begin
      Add(0);
      Add(1);
    end;

    addmultiimage(4, 2, 0, haBeforeText, AdvGrid.vaCenter);

    with CellImages[4, 2] do
    begin
      Add(2);
      Add(3);
      Add(4);
    end;

    addmultiimage(4, 3, 0, haBeforeText, AdvGrid.vaCenter);

    with CellImages[4, 3] do
    begin
      Add(0);
    end;

    addmultiimage(4, 4, 0, haBeforeText, AdvGrid.vaCenter);

    with CellImages[4, 4] do
    begin
      Add(1);
      Add(3);
      Add(4);
      Add(2);
    end;

    addmultiimage(4, 5, 0, haBeforeText, AdvGrid.vaCenter);

    with CellImages[4, 5] do
    begin
      Add(4);
      Add(1);
    end;

    richedit.text := 'Rich text';
    richedit.Selstart := 0;
    richedit.Sellength := 4;
    richedit.Selattributes.Color := clRed;
    richedit.Selattributes.Style := [fsBold];
    richedit.Selstart := 5;
    richedit.Sellength := 4;
    richedit.Selattributes.Color := clBlue;
    richedit.Selattributes.Style := [fsItalic];
    richtocell(5, 1, richedit);


    richedit.Clear;
    richedit.Selattributes.Style := [];
    richedit.Selattributes.Color := clBlack;

    richedit.text := 'Superscript';

    richedit.Selstart := 0;
    richedit.Sellength := 5;
    richedit.Selsuperscript;
    richedit.Selattributes.Color := clBlue;

    richtocell(5, 2, richedit);

    richedit.Clear;
    richedit.Selattributes.Style := [];
    richedit.Selattributes.Color := clBlack;

    richedit.text := 'Subscript';
    richedit.Selstart := 0;
    richedit.Sellength := 3;
    richedit.Selsubscript;
    richedit.Selattributes.Color := clBlue;

    richtocell(5, 3, richedit);

    richedit.Clear;
    richedit.Selattributes.Style := [];
    richedit.Selattributes.Color := clBlack;
    richedit.Selnormal;

    richedit.paragraph.Numbering := nsBullet;
    richedit.Lines.Add('One'#10'Two'#10#13);
    richedit.paragraph.Numbering := nsNone;

    richtocell(5, 4, richedit);

    Cells[6, 0] := 'HTML';

    Cells[6, 1] := 'Easy <B>HTML</B><BR><I>formatting</I>';
    Cells[6, 2] := 'Including <IMG src="idx:0"><FONT color="clred">everywhere</FONT>';
    Cells[6, 3] := 'Enjoy<BR><B>miniHTML</B>';
    Cells[6, 4] := '<A href="http://www.tmssoftware.com/minihtml.htm">Click here</A><BR>for more';

    MergeCells(5, 5, 2, 1);
    Cells[6, 5] := 'This is a <b><font color="clgreen">merged cell</font></b> with image: <img src="idx:0">';

    Cells[7, 0] := 'Various';

    AddCheckBox(7, 1, false, false);
    AddCheckBox(7, 2, true, false);

    Cells[7, 3] := 'http://www.tmssoftware.com';
    Cells[7, 4] := '<A href="http://www.tmssoftware.com">Link to web</A>';
    Cells[7, 5] := '<A href="mailto:info@tmssoftware.com">Link email</A>';
  end;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  advgridrtfio1.ExportRTF('grid.rtf');
end;

end.
