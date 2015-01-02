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
unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, AdvUtil, StdCtrls, ExtCtrls, ImgList, Mask,
  AdvDropDown, AdvColorPickerDropDown, Buttons, AdvObj, XPMan;

type
  TForm2 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    Shape1: TShape;
    PaintBox1: TPaintBox;
    Label1: TLabel;
    ImageList1: TImageList;
    Label2: TLabel;
    Shape2: TShape;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1GetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
    procedure PaintBox1Paint(Sender: TObject);
    procedure AdvStringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure AdvStringGrid1ColorSelect(Sender: TObject; ACol, ARow: Integer;
      Color: TColor; Value: string);
    procedure AdvStringGrid1ImageSelect(Sender: TObject; ACol, ARow,
      Index: Integer);
    procedure AdvStringGrid1DropDownFooterButtonClick(Sender: TObject; ACol,
      ARow, ButtonIndex: Integer);
    procedure AdvStringGrid1GetEditorProp(Sender: TObject; ACol, ARow: Integer;
      AEditLink: TEditLink);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.AdvStringGrid1ColorSelect(Sender: TObject; ACol, ARow: Integer;
  Color: TColor; Value: string);
begin
  if ACol = 1 then
    Shape1.Brush.Color := Color;

  if ACol = 2 then
    Shape2.Brush.Color := Color;
end;

procedure TForm2.AdvStringGrid1DropDownFooterButtonClick(Sender: TObject; ACol,
  ARow, ButtonIndex: Integer);
begin
  case ButtonIndex of
  0: AdvStringGrid1.ColorPickerDropDown.ColorSelectionStyle := csList;
  1: AdvStringGrid1.ColorPickerDropDown.ColorSelectionStyle := csColorCube;
  2: AdvStringGrid1.ColorPickerDropDown.ColorSelectionStyle := csSpectrum;
  end;
end;

procedure TForm2.AdvStringGrid1GetEditorProp(Sender: TObject; ACol,
  ARow: Integer; AEditLink: TEditLink);
begin
  AdvStringGrid1.ColorPickerDropDown.ColorSelectionStyle := csList;
  if ACol = 1 then
    AdvStringGrid1.ColorPickerDropDown.ColorValueText := cvtWebName
  else
    AdvStringGrid1.ColorPickerDropDown.ColorValueText := cvtRGB;
end;

procedure TForm2.AdvStringGrid1GetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
begin
  case ACol of
  1,2: AEditor := edColorPickerDropDown;
  3: AEditor := edImagePickerDropDown;
  end;

  if (ACol = 2) then
  begin
    // adds buttons in the footer to allow to select the style for column 2
    AdvStringGrid1.ControlLook.DropDownFooter.Buttons.Clear;
    AdvStringGrid1.ControlLook.DropDownFooter.Buttons.Add.Caption :='List';
    AdvStringGrid1.ControlLook.DropDownFooter.Buttons.Add.Caption := 'Cube';
    AdvStringGrid1.ControlLook.DropDownFooter.Buttons.Add.Caption := 'Spectrum';
  end
  else
  begin
    // basic color picker for column 1
    AdvStringGrid1.ControlLook.DropDownFooter.Buttons.Clear;
  end;

end;

procedure TForm2.AdvStringGrid1ImageSelect(Sender: TObject; ACol, ARow,
  Index: Integer);
begin
  Paintbox1.Tag := Index;
  PaintBox1.Invalidate;
end;

procedure TForm2.AdvStringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  Shape1.Brush.Color := AdvStringGrid1.GetShapeColor(1,ARow);
  Shape2.Brush.Color := AdvStringGrid1.GetShapeColor(2,ARow);
  Paintbox1.Tag := AdvStringGrid1.Ints[3, ARow];
  PaintBox1.Invalidate;
end;

procedure TForm2.FormCreate(Sender: TObject);
var
  i: integer;
begin
  advstringgrid1.ColCount := 4;
  advstringgrid1.MouseActions.DirectEdit := true;

  for I := 1 to AdvStringGrid1.RowCount - 1 do
  begin
    advstringgrid1.AddShape(1,i,csRectangle,clRed,clBlack, haBeforeText, vaCenter);
    advstringgrid1.AddShape(2,i,csRectangle,clRed,clBlack, haBeforeText, vaCenter);
    advstringgrid1.AddDataImage(3,i,0,haCenter,vaCenter);
  end;

  AdvStringGrid1.Cells[1,0] := 'Color list';
  AdvStringGrid1.Cells[2,0] := 'Color selectors';
  AdvStringGrid1.Cells[3,0] := 'Image list';

  AdvStringGrid1.ColWidths[1] := 128;
  AdvStringGrid1.ColWidths[2] := 128;
  AdvStringGrid1.ColWidths[3] := 128;

  AdvStringGrid1.ImagePickerDropDown.Columns := 4;
  AdvStringGrid1.ImagePickerDropDown.DropDownWidth := 128;
  AdvStringGrid1.ColorPickerDropDown.DropDownWidth := 200;
end;

procedure TForm2.PaintBox1Paint(Sender: TObject);
begin
  PaintBox1.Canvas.Brush.Color := clWhite;
  PaintBox1.Canvas.Pen.Color := clBlack;
  PaintBox1.Canvas.Rectangle(0,0,PaintBox1.Width - 1, PaintBox1.Height - 1);

  Imagelist1.Draw(PaintBox1.Canvas,20,20,PaintBox1.Tag);
end;

end.
