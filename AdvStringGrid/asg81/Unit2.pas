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
  Dialogs, Grids, BaseGrid, AdvGrid, AdvMultiColumnDropDown, AdvDetailDropDown,
  ImgList, StdCtrls, Mask, AdvDropDown, AdvObj, XPMan;

type
  TForm2 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    ImageList1: TImageList;
    Label1: TLabel;
    procedure AdvStringGrid1GetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1GetEditorProp(Sender: TObject; ACol, ARow: Integer;
      AEditLink: TEditLink);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InitDetailDropDown;
    procedure InitGridDropDown;

  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.AdvStringGrid1GetEditorProp(Sender: TObject; ACol,
  ARow: Integer; AEditLink: TEditLink);
begin
  case ACol of
  1: AdvStringGrid1.DetailPickerDropDown.DropDownHeader.Caption := 'Select your IDE';
  2: AdvStringGrid1.GridDropDown.DropDownHeader.Caption := 'Choose a car';
  end;
end;

procedure TForm2.AdvStringGrid1GetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
begin
  case ACol of
  1: AEditor := edDetailDropDown;
  2: AEditor := edGridDropDown;
  end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  AdvStringGrid1.ColCount := 3;
  AdvStringGrid1.ColWidths[1] := 160;
  AdvStringGrid1.ColWidths[2] := 160;
  AdvStringGrid1.Cells[1,0] := 'IDE';
  AdvStringGrid1.Cells[2,0] := 'Car';

  InitGridDropDown;
  InitDetailDropDown;
end;

procedure TForm2.InitDetailDropDown;
var
  di: TDetailItem;
begin
  AdvStringGrid1.DetailPickerDropDown.Images := ImageList1;
  AdvStringGrid1.DetailPickerDropDown.ItemHeight := 40;
  AdvStringGrid1.DetailPickerDropDown.DropDownWidth := 200;
  AdvStringGrid1.DetailPickerDropDown.DropDownHeader.Caption := 'Select your IDE';

  AdvStringGrid1.DetailPickerDropDown.Items.Clear;
  di := AdvStringGrid1.DetailPickerDropDown.Items.Add;

  di.ImageIndex := 0;
  di.Caption := 'Delphi';
  di.Notes := 'Most productive IDE for Win32 development';

  di := AdvStringGrid1.DetailPickerDropDown.Items.Add;
  di.ImageIndex := 1;
  di.Caption := 'Delphi Prism';
  di.Notes := 'Take your Pascal skills to .NET';

  di := AdvStringGrid1.DetailPickerDropDown.Items.Add;
  di.ImageIndex := 2;
  di.Caption := 'Delphi PHP';
  di.Notes := 'RAD development for PHP';
end;

procedure TForm2.InitGridDropDown;
var
  dc: TDropDownColumn;
  di: TDropDownItem;
begin
  AdvStringGrid1.GridDropDown.Images := ImageList1;
  dc := AdvStringGrid1.GridDropDown.Columns.Add;
  dc.Header := '';
  dc.ColumnType := ctImage;
  dc.Width := 30;
  dc := AdvStringGrid1.GridDropDown.Columns.Add;
  dc.Header := 'Brand';
  dc.ColumnType := ctText;
  dc := AdvStringGrid1.GridDropDown.Columns.Add;
  dc.Header := 'Type';
  dc.ColumnType := ctText;

  di := AdvStringGrid1.GridDropDown.Items.Add;
  di.ImageIndex := 0;
  di.Text.Add('');
  di.Text.Add('BMW');
  di.Text.Add('7 series');

  di := AdvStringGrid1.GridDropDown.Items.Add;
  di.ImageIndex := 1;
  di.Text.Add('');
  di.Text.Add('Mercedes');
  di.Text.Add('S class');

  di := AdvStringGrid1.GridDropDown.Items.Add;
  di.ImageIndex := 2;
  di.Text.Add('');
  di.Text.Add('Porsche');
  di.Text.Add('911');

  di := AdvStringGrid1.GridDropDown.Items.Add;
  di.ImageIndex := 3;
  di.Text.Add('');
  di.Text.Add('Audi');
  di.Text.Add('A8');

  // specifies that the text of the first column will be used as edited text
  AdvStringGrid1.GridDropDown.LookupColumn := 1;
end;

end.
