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
unit uasg8;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Grids, AdvGrid, Buttons, Menus, BaseGrid, AdvObj, XPMan;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    RichEdit1: TRichEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    FontName: TComboBox;
    SpeedButton8: TSpeedButton;
    ColorDialog1: TColorDialog;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    SavetoCSV1: TMenuItem;
    LoadfromCSV1: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    FontSize: TComboBox;
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FontNameChange(Sender: TObject);
    procedure SavetoCSV1Click(Sender: TObject);
    procedure LoadfromCSV1Click(Sender: TObject);
    procedure AdvStringGrid1SelectCell(Sender: TObject; ACol,
      ARow: Integer; var CanSelect: Boolean);
    procedure FontSizeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ToggleStyles(FontStyle: TFontStyle; FontStyles: TFontStyles): TFontStyles;
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
  AdvStringGrid1.RichToCell(AdvStringGrid1.Col, AdvStringGrid1.Row, richedit1);
end;

function TForm1.ToggleStyles(FontStyle: TFontStyle;
  FontStyles: TFontStyles): TFontStyles;
begin
  if FontStyle in FontStyles then
    Result := FontStyles - [FontStyle]
  else
    Result := FontStyles + [FontStyle];
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  if RichEdit1.SelLength = 0 then
    RichEdit1.Font.Style := ToggleStyles(fsBold, RichEdit1.Font.Style)
  else
    RichEdit1.SelAttributes.Style := ToggleStyles(fsBold, RichEdit1.SelAttributes.Style);
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  if RichEdit1.SelLength = 0 then
    RichEdit1.Font.Style := ToggleStyles(fsItalic, RichEdit1.Font.Style)
  else
    RichEdit1.SelAttributes.Style := ToggleStyles(fsItalic, RichEdit1.SelAttributes.Style);
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  if RichEdit1.SelLength = 0 then
    RichEdit1.Font.Style := ToggleStyles(fsUnderline, RichEdit1.Font.Style)
  else
    RichEdit1.SelAttributes.Style := ToggleStyles(fsUnderline, RichEdit1.SelAttributes.Style);
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  colordialog1.color := richedit1.SelAttributes.Color;
  if Colordialog1.Execute then
  begin
    if RichEdit1.SelLength = 0 then
      RichEdit1.Font.Color := ColorDialog1.color
    else
      Richedit1.SelAttributes.Color := colordialog1.color;
  end;
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
  richedit1.Paragraph.Alignment := taLeftJustify;
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
  richedit1.Paragraph.Alignment := taCenter;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
  richedit1.Paragraph.Alignment := taRightJustify;
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
  FontName.ItemIndex := FontName.Items.IndexOf('Arial');
  FontSize.ItemIndex := 1;
end;

procedure TForm1.FontNameChange(Sender: TObject);
begin
  if RichEdit1.SelLength = 0 then
    RichEdit1.Font.Name := fontname.items[fontname.itemindex]
  else
    RichEdit1.SelAttributes.Name := fontname.items[fontname.itemindex];
end;

procedure TForm1.SavetoCSV1Click(Sender: TObject);
begin
  AdvStringGrid1.SaveFixedCells := False;
  if opendialog1.Execute then
    AdvStringGrid1.LoadFromFile(opendialog1.Filename);
end;

procedure TForm1.LoadfromCSV1Click(Sender: TObject);
begin
  if Savedialog1.Execute then
  begin
    AdvStringGrid1.SaveToFile(SaveDialog1.Filename);
  end;
end;

procedure TForm1.AdvStringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  AdvStringgrid1.CellToRich(acol, arow, richedit1);
end;

procedure TForm1.FontSizeChange(Sender: TObject);
begin
  if RichEdit1.SelLength = 0 then
    RichEdit1.Font.Size := strtoint(fontsize.items[fontsize.itemindex])
  else
    Richedit1.Selattributes.Size := strtoint(fontsize.items[fontsize.itemindex]);
end;

end.
