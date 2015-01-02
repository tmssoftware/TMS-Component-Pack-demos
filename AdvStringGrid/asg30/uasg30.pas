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
unit uasg30;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, AdvGrid, StdCtrls, Buttons, asgprev, asgprint, BaseGrid, AdvObj, XPMan;

type
  TForm1 = class(TForm)
    Grid: TAdvStringGrid;
    Button2: TButton;
    FontName: TComboBox;
    Button3: TButton;
    prev: TAdvPreviewDialog;
    Button4: TButton;
    ItalBtn: TSpeedButton;
    BoldBtn: TSpeedButton;
    UnderBtn: TSpeedButton;
    Button1: TButton;
    Button5: TButton;
    FontSize: TComboBox;
    ColorBtn: TSpeedButton;
    FontBtn: TSpeedButton;
    LeftBtn: TSpeedButton;
    CenterBtn: TSpeedButton;
    RightBtn: TSpeedButton;
    ColorDialog1: TColorDialog;
    FontDialog1: TFontDialog;
    Settings: TAdvGridPrintSettingsDialog;
    Button6: TButton;
    PrinterSetupDialog1: TPrinterSetupDialog;
    procedure GridGetEditorType(Sender: TObject; ACol,
      ARow: Integer; var aEditor: TEditorType);
    procedure BoldBtnClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FontNameChange(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure GridInplaceRichEditSelectionChange(Sender: TObject);
    procedure ItalBtnClick(Sender: TObject);
    procedure UnderBtnClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ColorBtnClick(Sender: TObject);
    procedure FontBtnClick(Sender: TObject);
    procedure FontSizeChange(Sender: TObject);
    procedure LeftBtnClick(Sender: TObject);
    procedure CenterBtnClick(Sender: TObject);
    procedure RightBtnClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure GridEditCellDone(Sender: TObject; ACol, ARow: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.GridEditCellDone(Sender: TObject; ACol, ARow: Integer);
begin
  LeftBtn.Enabled := false;
  CenterBtn.Enabled := false;
  RightBtn.Enabled := false;
  BoldBtn.Enabled := false;
  ItalBtn.Enabled := false;
  UnderBtn.Enabled := false;
  ColorBtn.Enabled := false;
  FontBtn.Enabled := false;


end;

procedure TForm1.GridGetEditorType(Sender: TObject; ACol,
  ARow: Integer; var aEditor: TEditorType);
begin
  aEditor := edRichEdit;
  Grid.InplaceRichEdit.Font.Name := FontName.Items[FontName.ItemIndex];
  Grid.InplaceRichEdit.Font.Size := StrToInt(FontSize.Items[FontSize.ItemIndex]);
  Grid.InplaceRichEdit.SelAttributes.Name := Grid.InplaceRichEdit.Font.Name;
  Grid.InplaceRichEdit.SelAttributes.Size := Grid.InplaceRichEdit.Font.Size;

  LeftBtn.Enabled := true;
  CenterBtn.Enabled := true;
  RightBtn.Enabled := true;
  BoldBtn.Enabled := true;
  ItalBtn.Enabled := true;
  UnderBtn.Enabled := true;
  ColorBtn.Enabled := true;
  FontBtn.Enabled := true;
end;

procedure TForm1.BoldBtnClick(Sender: TObject);
begin
  if Grid.InplaceRichEdit.Visible then
    if fsBold in Grid.InplaceRichEdit.SelAttributes.Style then
      Grid.InplaceRichEdit.SelAttributes.Style := Grid.InplaceRichEdit.SelAttributes.Style - [fsBold]
    else
      Grid.InplaceRichEdit.SelAttributes.Style := Grid.InplaceRichEdit.SelAttributes.Style + [fsBold]
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  grid.HideInplaceEdit;
  if PrinterSetupDialog1.Execute then
    grid.Print;
end;

function EnumFontsProc(var LogFont: TLogFont; var TextMetric: TTextMetric;
  FontType: Integer; Data: Pointer): Integer; stdcall;
begin
  TStrings(Data).Add(LogFont.lfFaceName);
  Result := 1;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  DC: HDC;
begin
  DC := GetDC(0);
  EnumFonts(DC, nil, @EnumFontsProc, Pointer(FontName.Items));
  ReleaseDC(0, DC);
  FontName.Sorted := True;
  FontName.ItemIndex := 0;
  FontSize.ItemIndex := 0;
end;

procedure TForm1.FontNameChange(Sender: TObject);
begin
  if Grid.InplaceRichEdit.Visible then
    Grid.InplaceRichEdit.SelAttributes.Name := FontName.Items[FontName.ItemIndex];
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Grid.DefaultRowHeight := 22;
  Grid.AutoSizeCells(False, 10, 10);
  Grid.SetFocus;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Grid.HideInplaceEdit;
  Prev.Execute;
end;

procedure TForm1.GridInplaceRichEditSelectionChange(Sender: TObject);
begin
  BoldBtn.Down := fsBold in Grid.InplaceRichEdit.SelAttributes.Style;
  ItalBtn.Down := fsItalic in Grid.InplaceRichEdit.SelAttributes.Style;
  UnderBtn.Down := fsUnderline in Grid.InplaceRichEdit.SelAttributes.Style;

  LeftBtn.Down := Grid.InplaceRichEdit.Paragraph.Alignment = taLeftJustify;
  CenterBtn.Down := Grid.InplaceRichEdit.Paragraph.Alignment = taCenter;
  RightBtn.Down := Grid.InplaceRichEdit.Paragraph.Alignment = taRightJustify;

  FontName.ItemIndex := FontName.Items.IndexOf(Grid.InplaceRichEdit.SelAttributes.Name);
  FontSize.ItemIndex := FontSize.Items.IndexOf(IntToStr(Grid.InplaceRichEdit.SelAttributes.Size));
end;

procedure TForm1.ItalBtnClick(Sender: TObject);
begin
  if Grid.InplaceRichEdit.Visible then
    if fsItalic in Grid.InplaceRichEdit.SelAttributes.Style then
      Grid.InplaceRichEdit.SelAttributes.Style := Grid.InplaceRichEdit.SelAttributes.Style - [fsItalic]
    else
      Grid.InplaceRichEdit.SelAttributes.Style := Grid.InplaceRichEdit.SelAttributes.Style + [fsItalic]
end;

procedure TForm1.UnderBtnClick(Sender: TObject);
begin
  if Grid.InplaceRichEdit.Visible then
    if fsUnderline in Grid.InplaceRichEdit.SelAttributes.Style then
      Grid.InplaceRichEdit.SelAttributes.Style := Grid.InplaceRichEdit.SelAttributes.Style - [fsUnderline]
    else
      Grid.InplaceRichEdit.SelAttributes.Style := Grid.InplaceRichEdit.SelAttributes.Style + [fsUnderline]
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Grid.HideInplaceEdit;
  Grid.SaveToFile('rtf.dat');
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Grid.HideInplaceEdit;
  Grid.LoadFromFile('rtf.dat');
  Grid.AutoSizeCells(False, 10, 10);
end;

procedure TForm1.ColorBtnClick(Sender: TObject);
begin
  if not Grid.InplaceRichEdit.Visible then Exit;

  ColorDialog1.Color := Grid.InplaceRichEdit.SelAttributes.Color;
  if ColorDialog1.Execute then
  begin
    Grid.InplaceRichEdit.SelAttributes.Color := ColorDialog1.Color;
  end;
end;

procedure TForm1.FontBtnClick(Sender: TObject);
begin
  if not Grid.InplaceRichEdit.Visible then
    Exit;

  FontDialog1.Font.Name := Grid.InplaceRichEdit.SelAttributes.Name;
  FontDialog1.Font.Style := Grid.InplaceRichEdit.SelAttributes.Style;
  FontDialog1.Font.Size := Grid.InplaceRichEdit.SelAttributes.Size;

  if FontDialog1.Execute then
  begin
    Grid.InplaceRichEdit.SelAttributes.Name := FontDialog1.Font.Name;
    Grid.InplaceRichEdit.SelAttributes.Style := FontDialog1.Font.Style;
    Grid.InplaceRichEdit.SelAttributes.Size := FontDialog1.Font.Size;
  end;

end;

procedure TForm1.FontSizeChange(Sender: TObject);
begin
  if Grid.InplaceRichEdit.Visible then
    Grid.InplaceRichEdit.SelAttributes.Size := StrToInt(FontSize.Items[FontSize.ItemIndex]);
end;

procedure TForm1.LeftBtnClick(Sender: TObject);
begin
  if Grid.InplaceRichEdit.Visible then
    Grid.InplaceRichEdit.Paragraph.Alignment := taLeftJustify;
end;

procedure TForm1.CenterBtnClick(Sender: TObject);
begin
  if Grid.InplaceRichEdit.Visible then
    Grid.InplaceRichEdit.Paragraph.Alignment := taCenter;
end;

procedure TForm1.RightBtnClick(Sender: TObject);
begin
  if Grid.InplaceRichEdit.Visible then
    Grid.InplaceRichEdit.Paragraph.Alignment := taRightJustify;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Settings.Execute;
end;

end.
