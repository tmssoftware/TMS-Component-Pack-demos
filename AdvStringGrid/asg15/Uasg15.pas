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


unit Uasg15;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Buttons, ImgList, ToolWin, RichEdit,
  ExtCtrls, Grids, AdvGrid, asprev, BaseGrid, AdvObj, XPMan;

type
  TForm1 = class(TForm)
    Ok: TButton;
    Cancel: TButton;
    ToolBar1: TToolBar;
    Fontname: TComboBox;
    FontSize: TComboBox;
    BoldButton: TToolButton;
    ImageList1: TImageList;
    ItalicButton: TToolButton;
    UnderlineButton: TToolButton;
    LeftAlign: TToolButton;
    CenterAlign: TToolButton;
    RightAlign: TToolButton;
    BulletsButton: TToolButton;
    ToolButton1: TToolButton;
    ColorDialog1: TColorDialog;
    Superscript: TToolButton;
    Subscript: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton17: TToolButton;
    RTFControl: TRichEdit;
    AdvStringGrid1: TAdvStringGrid;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    procedure BoldButtonClick(Sender: TObject);
    procedure RTFControlSelectionChange(Sender: TObject);
    procedure ItalicButtonClick(Sender: TObject);
    procedure UnderlineButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FontnameChange(Sender: TObject);
    procedure FontSizeChange(Sender: TObject);
    procedure LeftAlignClick(Sender: TObject);
    procedure BulletsButtonClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure SuperscriptClick(Sender: TObject);
    procedure SubscriptClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
    procedure GetFontNames;
    function GetOffset: integer;
    procedure SetOffset(offset: integer);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.BoldButtonClick(Sender: TObject);
begin
  if BoldButton.Down then
    RTFControl.SelAttributes.Style := RTFControl.SelAttributes.Style + [fsBold]
  else
    RTFControl.SelAttributes.Style := RTFControl.SelAttributes.Style - [fsBold];
end;

procedure TForm1.RTFControlSelectionChange(Sender: TObject);
begin
  BoldButton.Down := fsBold in RTFControl.SelAttributes.Style;
  ItalicButton.Down := fsItalic in RTFControl.SelAttributes.Style;
  UnderlineButton.Down := fsUnderline in RTFControl.SelAttributes.Style;
  BulletsButton.Down := Boolean(RTFControl.Paragraph.Numbering);
  FontSize.Text := IntToStr(RTFControl.SelAttributes.Size);
  FontName.Text := RTFControl.SelAttributes.Name;

  case Ord(RTFControl.Paragraph.Alignment) of
    0: LeftAlign.Down := True;
    1: RightAlign.Down := True;
    2: CenterAlign.Down := True;
  end;
  if GetOffset < 0 then
  begin
    Superscript.Down := false;
    SubScript.Down := true;
  end;
  if GetOffset = 0 then
  begin
    Superscript.Down := false;
    SubScript.Down := false;
  end;
  if GetOffset > 0 then
  begin
    Superscript.Down := true;
    SubScript.Down := false;
  end;

end;

procedure TForm1.ItalicButtonClick(Sender: TObject);
begin
  if ItalicButton.Down then
    RTFControl.SelAttributes.Style := RTFControl.SelAttributes.Style + [fsItalic]
  else
    RTFControl.SelAttributes.Style := RTFControl.SelAttributes.Style - [fsItalic];
end;

procedure TForm1.UnderlineButtonClick(Sender: TObject);
begin
  if UnderlineButton.Down then
    RTFControl.SelAttributes.Style := RTFControl.SelAttributes.Style + [fsUnderline]
  else
    RTFControl.SelAttributes.Style := RTFControl.SelAttributes.Style - [fsUnderline];

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  GetFontNames;
  RTFControl.SelStart := 0;
  RTFControl.SelLength := 0;

  with advstringgrid1 do
  begin
    richedit.text := 'Rich text';
    richedit.selstart := 0;
    richedit.sellength := 4;
    richedit.selattributes.color := clRed;
    richedit.selattributes.style := [fsBold];
    richedit.selstart := 5;
    richedit.sellength := 4;
    richedit.selattributes.color := clBlue;
    richedit.selattributes.style := [fsItalic];
    richtocell(0, 1, richedit);

    richedit.Clear;
    richedit.selattributes.style := [];
    richedit.selattributes.color := clBlack;

    richedit.text := 'Superscript';

    richedit.selstart := 0;
    richedit.sellength := 5;
    richedit.selsuperscript;
    richedit.selattributes.color := clBlue;

    richtocell(0, 2, richedit);

    richedit.Clear;
    richedit.selattributes.style := [];
    richedit.selattributes.color := clBlack;

    richedit.text := 'Subscript';
    richedit.selstart := 0;
    richedit.sellength := 3;
    richedit.selsubscript;
    richedit.selattributes.color := clBlue;

    richtocell(0, 3, richedit);

    richedit.Clear;
    richedit.selattributes.style := [];
    richedit.selattributes.color := clBlack;
    richedit.selnormal;

    richedit.text := 'One'#13'Two'#13'Three';
    richedit.paragraph.Numbering := nsBullet;

    richtocell(0, 4, richedit);

    autosizerows(false, 4);
    arrowcolor := clRed;
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


procedure TForm1.FontnameChange(Sender: TObject);
begin
  RTFControl.SelAttributes.Name := FontName.Items[FontName.ItemIndex];
end;

procedure TForm1.FontSizeChange(Sender: TObject);
var
  i, c: integer;
begin
  val(FontSize.text, i, c);
  if (c <> 0) then
    FontSize.Text := IntToStr(RTFControl.SelAttributes.Size)
  else
    RTFControl.SelAttributes.Size := i;

end;

procedure TForm1.LeftAlignClick(Sender: TObject);
begin
  RTFControl.Paragraph.Alignment := TAlignment(TControl(Sender).Tag);
end;

procedure TForm1.BulletsButtonClick(Sender: TObject);
begin
  RTFControl.Paragraph.LeftIndent := 10;
  RTFControl.Paragraph.Numbering := TNumberingStyle(BulletsButton.Down);
end;

procedure TForm1.ToolButton1Click(Sender: TObject);
begin
  ColorDialog1.Color := RTFControl.SelAttributes.Color;
  if ColorDialog1.Execute then
    RTFControl.SelAttributes.Color := ColorDialog1.Color;
end;

function TForm1.GetOffset: integer;
var
  format: TCharFormat; { defined in Unit RichEdit }
begin
  with format do begin
    cbSize := Sizeof(format);
    dwMask := CFM_OFFSET;
  end;
  SendMessage(RTFControl.handle, EM_GETCHARFORMAT, SCF_SELECTION, LongInt(@format));
  Result := format.yoffset;
end;

procedure TForm1.SetOffset(offset: integer);
var
  format: TCharFormat; { defined in Unit RichEdit }
begin
  FillChar(format, sizeof(format), 0);
  with format do begin
    cbSize := Sizeof(format);
    dwMask := CFM_OFFSET;
    yOffset := offset; { superscript by 40 twips, negative values give subscripts}
  end;
  SendMessage(RTFControl.handle, EM_SETCHARFORMAT, SCF_SELECTION, LongInt(@format));
end;


procedure TForm1.SuperscriptClick(Sender: TObject);
begin
  if Superscript.Down then
    SetOffset(40)
  else
    SetOffset(0);
  SubScript.Down := false;
end;

procedure TForm1.SubscriptClick(Sender: TObject);
begin
  if Subscript.Down then
    SetOffset(-40)
  else
    SetOffset(0);
  SuperScript.Down := false;
end;

procedure TForm1.ToolButton2Click(Sender: TObject);
begin
  if RTFControl.Paragraph.FirstIndent >= 10 then
    RTFControl.Paragraph.FirstIndent := RTFControl.Paragraph.FirstIndent - 10;
end;

procedure TForm1.ToolButton3Click(Sender: TObject);
begin
  RTFControl.Paragraph.FirstIndent := RTFControl.Paragraph.FirstIndent + 10;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  pagepreview: tpagepreview;
begin
  pagepreview := tpagepreview.Create(self, advstringgrid1);
  try
    pagepreview.showmodal;
  finally
    pagepreview.free;
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  advstringgrid1.print;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  advstringgrid1.dragdropsettings.oledroprtf := checkbox1.checked;
end;

end.
