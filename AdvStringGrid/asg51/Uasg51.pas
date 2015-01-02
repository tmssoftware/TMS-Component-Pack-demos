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
unit Uasg51;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, ExtCtrls, Buttons, StdCtrls, ComCtrls,
  ToolWin, ImgList, asgprev, AdvObj, XPMan;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    ToolbarImages: TImageList;
    StandardToolBar: TToolBar;
    ToolButton1: TToolButton;
    OpenButton: TToolButton;
    SaveButton: TToolButton;
    PrintButton: TToolButton;
    ToolButton5: TToolButton;
    CopyButton: TToolButton;
    PasteButton: TToolButton;
    UndoButton: TToolButton;
    ToolButton10: TToolButton;
    FontName: TComboBox;
    ToolButton11: TToolButton;
    FontSize: TEdit;
    UpDown1: TUpDown;
    ToolButton2: TToolButton;
    BoldButton: TToolButton;
    ItalicButton: TToolButton;
    UnderlineButton: TToolButton;
    ToolButton16: TToolButton;
    LeftAlign: TToolButton;
    CenterAlign: TToolButton;
    RightAlign: TToolButton;
    ToolButton20: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton6: TToolButton;
    ColorDialog1: TColorDialog;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    AdvPreviewDialog1: TAdvPreviewDialog;
    ToolButton7: TToolButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure LeftAlignClick(Sender: TObject);
    procedure CenterAlignClick(Sender: TObject);
    procedure RightAlignClick(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure CopyButtonClick(Sender: TObject);
    procedure PasteButtonClick(Sender: TObject);
    procedure UndoButtonClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure OpenButtonClick(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1SelectCell(Sender: TObject; ACol,
      ARow: Integer; var CanSelect: Boolean);
    procedure FontNameChange(Sender: TObject);
    procedure FontSizeChange(Sender: TObject);
    procedure BoldButtonClick(Sender: TObject);
    procedure ItalicButtonClick(Sender: TObject);
    procedure UnderlineButtonClick(Sender: TObject);
    procedure PrintButtonClick(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IsUpdating: Boolean;
    procedure GetFontNames;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  with AdvStringGrid1 do
    Alignments[Col, Row] := taLeftJustify;
end;

procedure TForm1.LeftAlignClick(Sender: TObject);
begin
  with AdvStringGrid1 do
    Alignments[Col, Row] := taLeftJustify;
end;

procedure TForm1.CenterAlignClick(Sender: TObject);
begin
  with AdvStringGrid1 do
    Alignments[Col, Row] := taCenter;

end;

procedure TForm1.RightAlignClick(Sender: TObject);
begin
  with AdvStringGrid1 do
    Alignments[Col, Row] := taRightJustify;

end;

procedure TForm1.ToolButton3Click(Sender: TObject);
begin
  if ColorDialog1.Execute then
    with AdvStringGrid1 do
      Colors[Col, Row] := ColorDialog1.Color;
end;

procedure TForm1.ToolButton4Click(Sender: TObject);
begin
  if ColorDialog1.Execute then
    with AdvStringGrid1 do
      FontColors[Col, Row] := ColorDialog1.Color;
end;

procedure TForm1.CopyButtonClick(Sender: TObject);
begin
  AdvStringGrid1.CutSelectionToClipboard;
end;

procedure TForm1.PasteButtonClick(Sender: TObject);
begin
  AdvStringGrid1.CopySelectionToClipboard;
end;

procedure TForm1.UndoButtonClick(Sender: TObject);
begin
  AdvStringGrid1.PasteSelectionFromClipboard;
end;

procedure TForm1.ToolButton1Click(Sender: TObject);
begin
  AdvStringGrid1.Clear;
end;

procedure TForm1.OpenButtonClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    if pos('.GRD', Uppercase(OpenDialog1.Filename)) > 0 then
      AdvStringGrid1.LoadFromBinFile(OpenDialog1.Filename)
    else
      AdvStringGrid1.LoadFromCSV(OpenDialog1.Filename)
  end;
end;

procedure TForm1.SaveButtonClick(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    if pos('.GRD', Uppercase(SaveDialog1.Filename)) > 0 then
      AdvStringGrid1.SaveToBinFile(SaveDialog1.Filename)
    else
      AdvStringGrid1.SaveToCSV(SaveDialog1.Filename)
  end;

end;

function EnumFontsProc(var LogFont: TLogFont; var TextMetric: TTextMetric;
  FontType: Integer; Data: Pointer): Integer; stdcall;
begin
  TStrings(Data).Add(LogFont.lfFaceName);
  Result := 1;
end;

procedure TForm1.GetFontNames;
var
  DC: HDC;
begin
  DC := GetDC(0);
  EnumFonts(DC, nil, @EnumFontsProc, Pointer(FontName.Items));
  ReleaseDC(0, DC);
  FontName.Sorted := True;
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
  GetFontNames;
end;

procedure TForm1.AdvStringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
  FontStr: string;
  FontSz: Integer;
begin
  IsUpdating := True;
  with AdvStringGrid1 do
  begin
    FontStr := FontNames[ACol, ARow];
    if FontStr = '' then
      FOntStr := Font.Name;
    FontSz := FontSizes[ACol, ARow];
    if FontSz = 0 then
      FontSz := Font.Size;

    BoldButton.Down := fsBold in FontStyles[ACol, ARow];
    ItalicButton.Down := fsItalic in FontStyles[ACol, ARow];
    UnderlineButton.Down := fsUnderline in FontStyles[ACol, ARow];

    LeftAlign.Down := Alignments[ACol, Row] = taLeftJustify;
    RightAlign.Down := Alignments[ACol, ARow] = taRightJustify;
    CenterAlign.Down := Alignments[ACol, ARow] = taCenter;
  end;

  FontName.ItemIndex := FontName.Items.IndexOf(FontStr);
  FontSize.Text := IntToStr(FontSz);


  IsUpdating := False;
end;

procedure TForm1.FontNameChange(Sender: TObject);
begin
  if IsUpdating then
    Exit;
  with AdvStringGrid1 do
    FontNames[col, Row] := FontName.Items[FontName.ItemIndex];
end;

procedure TForm1.FontSizeChange(Sender: TObject);
begin
  if IsUpdating then
    Exit;
  with AdvStringGrid1 do
    FontSizes[col, Row] := StrToInt(FontSize.Text);
end;

procedure TForm1.BoldButtonClick(Sender: TObject);
begin
  if not BoldButton.Down then
  begin
    with AdvstringGrid1 do
      FontStyles[Col, Row] := FontStyles[Col, Row] - [fsBold];
  end
  else
  begin
    with AdvstringGrid1 do
      FontStyles[Col, Row] := FontStyles[Col, Row] + [fsBold];
  end;

end;

procedure TForm1.ItalicButtonClick(Sender: TObject);
begin
  if not ItalicButton.Down then
  begin
    with AdvstringGrid1 do
      FontStyles[Col, Row] := FontStyles[Col, Row] - [fsItalic];
  end
  else
  begin
    with AdvstringGrid1 do
      FontStyles[Col, Row] := FontStyles[Col, Row] + [fsItalic];
  end;

end;

procedure TForm1.UnderlineButtonClick(Sender: TObject);
begin
  if not UnderlineButton.Down then
  begin
    with AdvstringGrid1 do
      FontStyles[Col, Row] := FontStyles[Col, Row] - [fsUnderline];
  end
  else
  begin
    with AdvstringGrid1 do
      FontStyles[Col, Row] := FontStyles[Col, Row] + [fsUnderline];
  end;

end;

procedure TForm1.PrintButtonClick(Sender: TObject);
begin
  AdvPreviewdialog1.Execute;
end;

procedure TForm1.ToolButton6Click(Sender: TObject);
begin
  with AdvStringGrid1 do
    AddImageIdx(Col, Row, Random(15), haBeforeText, vaTop)
end;

procedure TForm1.ToolButton7Click(Sender: TObject);
var
  s: string;
begin
  s := '';
  if InputQuery('Comment for cell', 'Comment', s) then
    with AdvstringGrid1 do
      AddComment(Col, Row, s);
end;

end.
