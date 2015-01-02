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

unit uasg32;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, AdvGrid, StdCtrls, clisted, ExtCtrls, ComCtrls,
  CheckLst, AsgLinks, ImgList, ImagePicker, BaseGrid, AdvObj, XPMan;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    ImageList1: TImageList;
    el: TImagePickerEditLink;
    procedure AdvStringGrid1GetEditorType(Sender: TObject; aCol,
      aRow: Integer; var aEditor: TEditorType);
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1GetEditorProp(Sender: TObject; aCol,
      aRow: Integer; aEditLink: TEditLink);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.AdvStringGrid1GetEditorType(Sender: TObject; aCol,
  aRow: Integer; var aEditor: TEditorType);
begin
  if acol = 2 then
  begin
    AdvStringGrid1.EditLink := el;
    AEditor := edCustom;
  end;
end;


procedure TForm1.FormCreate(Sender: TObject);
var
  i: integer;
begin
  AdvStringGrid1.RowCount := 5;
  AdvStringGrid1.AutoNumberCol(0);

  for i := 1 to AdvStringGrid1.RowCount - 1 do
  begin
    AdvStringGrid1.AddDataImage(2, i, 0, haCenter, vaTop);
  end;
end;

procedure TForm1.AdvStringGrid1GetEditorProp(Sender: TObject; aCol,
  aRow: Integer; aEditLink: TEditLink);
begin
  case acol of
    2: begin
        with (aEditLink.GetEditControl as TImagePicker) do
        begin
          BeginUpdate;
          Items.Clear;
          with Items.Add do
          begin
            Caption := 'Germany';
            ImageIndex := 0;
          end;
          with Items.Add do
          begin
            Caption := 'UK';
            ImageIndex := 1;
          end;
          with Items.Add do
          begin
            Caption := 'USA';
            ImageIndex := 2;
          end;
          with Items.Add do
          begin
            Caption := 'Japan';
            ImageIndex := 3;
          end;
          with Items.Add do
          begin
            Caption := 'Italy';
            ImageIndex := 4;
          end;
          with Items.Add do
          begin
            Caption := 'France';
            ImageIndex := 5;
          end;

          EndUpdate;
        end;
      end;
  end;
end;

end.
