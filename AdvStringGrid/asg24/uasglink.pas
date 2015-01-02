{*******************************************************************
TADVSTRINGGRID EDITLINKS
version 1.0 - rel. November 2000

written by TMS Software
           copyright © 2000
           Email : info@tmssoftware.com
           Web : http://www.tmssoftware.com

The source code is given as is. The author is not responsible
for any possible damage done due to the use of this code.
The component can be freely used in any application. The complete
source code remains property of the author and may not be distributed,
published, given or sold in any form as such. No parts of the source
code can be included in any other component or application without
written authorization of the author.
********************************************************************}


unit uasglink;

interface

uses
 windows,classes,controls,stdctrls,graphics,forms,sysutils,
 moneyedit,advedit,clisted,advgrid,colorcombo;

type
  TAdvEditEditLink = class(TEditLink)
  private
   fEdit:TAdvEdit;
  protected
   procedure EditExit(Sender:TObject);
  public
   procedure CreateEditor(aParent:TWinControl); override;
   procedure DestroyEditor; override;
   function GetEditorValue:string; override;
   procedure SetEditorValue(s:string); override;
   function GetEditControl:TWinControl; override;
  end;

  TColorComboEditLink = class(TEditLink)
  private
   fEdit:TColorComboBox;
  protected
   procedure EditExit(Sender:TObject);
  public
   procedure CreateEditor(aParent:TWinControl); override;
   procedure DestroyEditor; override;
   procedure SetRect(r:trect); override;
   function GetEditorValue:string; override;
   procedure SetEditorValue(s:string); override;
   function GetEditControl:TWinControl; override;
  end;

  TMemoEditLink = class(TEditLink)
  private
   fEdit:TMemo;
  protected
   procedure EditExit(Sender:TObject);
  public
   procedure CreateEditor(aParent:TWinControl); override;
   procedure DestroyEditor; override;
   function GetEditControl:TWinControl; override;
   function GetEditorValue:string; override;
   procedure SetEditorValue(s:string); override;
  end;

  TMoneyEditLink = class(TEditLink)
  private
   fEdit:TMoneyEdit;
  protected
   procedure EditExit(Sender:TObject);
  public
   procedure CreateEditor(aParent:TWinControl); override;
   procedure DestroyEditor; override;
   function GetEditorValue:string; override;
   procedure SetEditorValue(s:string); override;
   function GetEditControl:TWinControl; override;
  end;

  TCheckEditLink = class(TEditLink)
  private
   fEdit:TCheckListEdit;
  protected
   procedure EditExit(sender:TObject);
  public
   procedure CreateEditor(aParent:TWinControl); override;
   procedure DestroyEditor; override;
   function GetEditorValue:string; override;
   procedure SetEditorValue(s:string); override;
   function GetEditControl:TWinControl; override;
  end;


implementation


{ TAdvEditEditLink }

procedure TAdvEditEditLink.CreateEditor(aParent:TWinControl);
begin
 fEdit:=TAdvEdit.Create(Grid);
 fEdit.Color:=clYellow;
 fEdit.ShowModified:=true;
 fEdit.ModifiedColor:=clRed;
 fEdit.BorderStyle := bsNone;
 fEdit.OnKeydown:= EditKeyDown;
 fEdit.OnExit := EditExit;
 fEdit.Width:=0;
 fEdit.Height:=0;
 fEdit.Parent:=aParent;
 WantKeyLeftRight:=true;
 WantKeyHomeEnd:=true;
end;

procedure TAdvEditEditLink.DestroyEditor;
begin
 if assigned(fEdit) then fEdit.Free;
 fEdit:=nil;
end;

function TAdvEditEditLink.GetEditorValue:string;
begin
 result:=fEdit.Text;
end;

procedure TAdvEditEditLink.EditExit(sender: TObject);
begin
 HideEditor;
end;

function TAdvEditEditLink.GetEditControl: TWinControl;
begin
 result:=fEdit;
end;

procedure TAdvEditEditLink.SetEditorValue(s: string);
begin
 fEdit.Text:=s;
end;

{ TColorComboEditLink }

procedure TColorComboEditLink.CreateEditor(aParent:TWinControl);
begin
 fEdit:=TColorComboBox.Create(Grid);
 fEdit.Style := csOwnerDrawFixed;
 fEdit.OnExit := EditExit;
 fEdit.OnKeydown:= EditKeyDown;
 fEdit.Width:=0;
 fEdit.Height:=0;
 fEdit.Parent:=aParent;
 fEdit.DropWidth:=150;
 WantKeyUpDown:=true;
end;

procedure TColorComboEditLink.DestroyEditor;
begin
 fEdit.Free;
end;

function TColorComboEditLink.GetEditorValue:string;
begin
 result:=fEdit.Items[fEdit.ItemIndex];
end;

procedure TColorComboEditLink.EditExit(sender: TObject);
begin
 HideEditor;
end;

function TColorComboEditLink.GetEditControl:TWinControl;
begin
 result:=fEdit;
end;

procedure TColorComboEditLink.SetRect(r: trect);
begin
 inherited;
 fEdit.Height:= r.bottom-r.top+100;
end;

procedure TColorComboEditLink.SetEditorValue(s:string);
var
 i:integer;
begin
 fEdit.Items.Clear;
 for i:=1 to 15 do fEdit.Items.Add(inttostr(i));
 if s='' then s:='0';
 fEdit.Text:=s;
 fEdit.ItemIndex:=strtoint(s)-1;
end;

{ TMemoEditLink }

procedure TMemoEditLink.CreateEditor(aParent:TWinControl);
begin
 fEdit:=TMemo.Create(Grid);
 fEdit.OnKeydown:= EditKeyDown;
 fEdit.BorderStyle:=bsSingle;
 fEdit.Scrollbars:=ssBoth;
 fEdit.Width:=0;
 fEdit.Height:=0;
 fEdit.Parent:=aParent;
 WantKeyReturn:=true;
 WantKeyUpDown:=true;
end;

procedure TMemoEditLink.DestroyEditor;
begin
 fEdit.Free;
end;

procedure TMemoEditLink.EditExit(sender: TObject);
begin
 HideEditor;
end;

function TMemoEditLink.GetEditorValue:string;
begin
 result:=fEdit.Lines.Text;
end;


procedure TMemoEditLink.SetEditorValue(s:string);
begin
 fEdit.Lines.Text:=s;
 fEdit.SelectAll;
end;

function TMemoEditLink.GetEditControl: TWinControl;
begin
 result:=fEdit;
end;

{ TMoneyEditLink }

procedure TMoneyEditLink.CreateEditor(aParent:TWinControl);
begin
 inherited;
 fEdit:=TMoneyEdit.Create(Grid);
 fEdit.BorderStyle:=bsNone;
 fEdit.OnKeydown:= EditKeyDown;
 fEdit.OnExit := EditExit;
 fEdit.Width:=0;
 fEdit.Height:=0;
 fEdit.Parent:=aParent;
 fEdit.CalculatorLook.Flat:=true;
 fEdit.CalculatorLook.ButtonColor:=clBlue;
 fEdit.CalculatorLook.Color:=clYellow;
 fEdit.CalculatorLook.Font.Color:=clWhite;
 fEdit.CalculatorLook.Font.Name:='Tahoma';
 fEdit.CalculatorLook.Font.Style:=[fsBold];

end;

procedure TMoneyEditLink.DestroyEditor;
begin
 fEdit.Free;
end;

procedure TMoneyEditLink.EditExit(sender: TObject);
begin
 HideEditor;
end;

function TMoneyEditLink.GetEditControl: TWinControl;
begin
 result:=fEdit;
end;

function TMoneyEditLink.GetEditorValue: string;
begin
 result:=fEdit.Text;
end;

procedure TMoneyEditLink.SetEditorValue(s:string);
begin
 fEdit.Text:=s;
end;

{ TCheckEditLink }

procedure TCheckEditLink.CreateEditor(aParent:TWinControl);
begin
 inherited;
 fEdit:=TCheckListEdit.Create(Grid);
 fEdit.BorderStyle:=bsNone;
 fEdit.OnKeydown:= EditKeyDown;
 fEdit.OnExit := EditExit;

 fEdit.Width:=0;
 fEdit.Height:=0;
 fEdit.Parent:=aParent;
 {
 fEdit.items.Add('BMW');
 fEdit.items.Add('Ferrari');
 fEdit.items.Add('Porsche');
 fEdit.items.Add('Audi');
 }
 WantKeyUpDown:=true;
end;

procedure TCheckEditLink.DestroyEditor;
begin
 fEdit.Free;
 inherited;
end;

procedure TCheckEditLink.EditExit(sender: TObject);
begin
 HideEditor;
end;

function TCheckEditLink.GetEditControl: TWinControl;
begin
 result:=fEdit;
end;


function TCheckEditLink.GetEditorValue: string;
begin
 result:=fEdit.Text;
end;

procedure TCheckEditLink.SetEditorValue(s:string);
begin
 fEdit.Text:=s;
end;



end.
