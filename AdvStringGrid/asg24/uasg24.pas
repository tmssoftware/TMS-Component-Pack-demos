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

unit uasg24;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, AdvGrid, AdvEdit, StdCtrls, ExtCtrls, ComCtrls, CListEd,
  CheckLst, AsgLinks, MoneyEdit, ImgList, ImagePicker, BaseGrid, AsgMemo, AdvObj,
  XPMan;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    el1: TAdvEditEditLink;
    el2: TColorComboEditLink;
    el3: TMemoEditLink;
    el5: TCheckEditLink;
    el4: TMoneyEditLink;
    ImageList1: TImageList;
    el6: TImagePickerEditLink;
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
 if acol=2 then advstringgrid1.EditLink:=el1;
 if acol=3 then advstringgrid1.EditLink:=el2;
 if acol=4 then advstringgrid1.EditLink:=el3;
 if acol=5 then advstringgrid1.EditLink:=el4;
 if acol=6 then advstringgrid1.EditLink:=el5;
 if acol=7 then advstringgrid1.EditLink:=el6;

 if acol in [2,3,4,5,6,7] then aEditor:=edCustom;

 if acol=4 then
   el3.popupwidth:=advstringgrid1.colwidths[4];
end;


procedure TForm1.FormCreate(Sender: TObject);
var
  i: integer;
begin
  AdvStringGrid1.RowCount := 35;
  AdvStringGrid1.AutoNumberCol(0);

  for i := 1 to AdvStringGrid1.RowCount - 1 do
  begin
    AdvStringGrid1.AddDataImage(7,i,0,haCenter,vaTop);
  end;
end;

procedure TForm1.AdvStringGrid1GetEditorProp(Sender: TObject; aCol,
  aRow: Integer; aEditLink: TEditLink);
var
  i: integer;  
begin
  if not Assigned(AEditLink) then
    Exit;
    
 case acol of
 2:begin
    if odd(arow) then (aEditLink.GetEditControl as TAdvEdit).FocusColor:=clInfoBk else
                      (aEditLink.GetEditControl as TAdvEdit).FocusColor:=clWhite;
   end;
 4:begin
    aEditLink.Popupwidth:=advstringgrid1.colwidths[4];
   end;
 6:begin
    with (aEditLink.GetEditControl as TCheckListEdit) do
      if odd(arow) then
        begin
         items.Add('BMW');
         items.Add('Ferrari');
         items.Add('Mercedes');
         items.Add('Porsche');
         items.Add('Audi');
        end
      else
        begin
         items.Add('Delphi');
         items.Add('C++Builder');
         items.Add('JBuilder');
         items.Add('Visual Basic');
         items.Add('Visual C');
        end;
   end;
 7:begin
     with (aEditLink.GetEditControl as TImagePicker) do
     begin
       BeginUpdate;
       Items.Clear;
       for i := 0 to 5 do
         Items.Add.ImageIndex := i;
       EndUpdate;
     end;
   end;

 end;
end;

end.
