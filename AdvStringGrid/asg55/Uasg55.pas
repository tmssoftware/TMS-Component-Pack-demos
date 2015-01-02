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

unit Uasg55;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, AsgLinks, StdCtrls, FileCtrl, FlCtrlEx,
  ExtCtrls, ComCtrls, ImgList, frmctrllink, AdvObj, xpman;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    FormControlEditLink1: TFormControlEditLink;
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    FormControlEditLink2: TFormControlEditLink;
    DriveComboBox1: TDriveComboBox;
    procedure AdvStringGrid1GetEditorType(Sender: TObject; ACol,
      ARow: Integer; var AEditor: TEditorType);
    procedure FormControlEditLink1GetEditorValue(Sender: TObject;
      Grid: TAdvStringGrid; var AValue: string);
    procedure FormControlEditLink1SetEditorValue(Sender: TObject;
      Grid: TAdvStringGrid; AValue: string);
    procedure FormControlEditLink2GetEditorValue(Sender: TObject;
      Grid: TAdvStringGrid; var AValue: string);
    procedure FormControlEditLink2SetEditorProperties(Sender: TObject;
      Grid: TAdvStringGrid; AControl: TWinControl);
    procedure FormControlEditLink2SetEditorValue(Sender: TObject;
      Grid: TAdvStringGrid; AValue: string);
    procedure Panel1Enter(Sender: TObject);
    procedure FormControlEditLink2SetEditorFocus(Sender: TObject;
      Grid: TAdvStringGrid; AControl: TWinControl);
    procedure FormControlEditLink1SetEditorFocus(Sender: TObject;
      Grid: TAdvStringGrid; AControl: TWinControl);
    procedure FormControlEditLink1SetEditorProperties(Sender: TObject;
      Grid: TAdvStringGrid; AControl: TWinControl);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AdvStringGrid1GetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
begin
  if ARow in [1, 2] then
    AEditor := edCustom;

  if ARow = 1 then
    AdvStringGrid1.EditLink := FormControlEditLink2;
  if ARow = 2 then
    AdvStringGrid1.EditLink := FormControlEditLink1;
end;

procedure TForm1.FormControlEditLink1GetEditorValue(Sender: TObject;
  Grid: TAdvStringGrid; var AValue: string);
begin
  AValue := DriveComboBox1.Text;
end;

procedure TForm1.FormControlEditLink1SetEditorValue(Sender: TObject;
  Grid: TAdvStringGrid; AValue: string);
begin
  DriveCombobox1.Text := AValue;
  DriveCombobox1.ItemIndex :=   DriveCombobox1.Items.IndexOf(AValue);
end;

procedure TForm1.FormControlEditLink2GetEditorValue(Sender: TObject;
  Grid: TAdvStringGrid; var AValue: string);
begin
  AValue := Edit1.Text + #13 + Edit2.Text;
end;

procedure TForm1.FormControlEditLink2SetEditorProperties(Sender: TObject;
  Grid: TAdvStringGrid; AControl: TWinControl);
begin
  Edit1.SetFocus;
end;

procedure TForm1.FormControlEditLink2SetEditorValue(Sender: TObject;
  Grid: TAdvStringGrid; AValue: string);
begin
  if pos(#13, AValue) > 0 then
  begin
    Edit1.Text := copy(AValue, 1, pos(#13, AValue) - 1);
    Edit2.Text := copy(AValue, pos(#13, AValue) + 1, length(AValue));
  end
  else
  begin
    Edit1.Text := AValue;
    Edit2.Text := '';
  end;
end;

procedure TForm1.Panel1Enter(Sender: TObject);
begin
  Edit1.SetFocus;
end;

procedure TForm1.FormControlEditLink2SetEditorFocus(Sender: TObject;
  Grid: TAdvStringGrid; AControl: TWinControl);
begin
  Edit1.SetFocus;
end;

procedure TForm1.FormControlEditLink1SetEditorFocus(Sender: TObject;
  Grid: TAdvStringGrid; AControl: TWinControl);
begin
  AControl.SetFocus;
end;

procedure TForm1.FormControlEditLink1SetEditorProperties(Sender: TObject;
  Grid: TAdvStringGrid; AControl: TWinControl);
begin
  AControl.Height := 200;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  AdvStringGrid1.Cells[1, 1] := 'Bill'#13'Gates';
end;

end.
