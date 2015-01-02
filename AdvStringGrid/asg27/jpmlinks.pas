{*******************************************************************
TADVSTRINGGRID JPMOPEN EDITLINK components
for Delphi & C++Builder

written by TMS Software
           copyright © 2009
           Email : info@tmssoftware.com
           Web : http://www.tmssoftware.com

JPMOPEN :  J. Peter Mugaas : JPM Open components
           Email : oma00215@mail.wvnet.edu
           Web : http://www.wvnet.edu/~oma00215/jpm.html

The source code is given as is. The author is not responsible
for any possible damage done due to the use of this code.
The component can be freely used in any application. The complete
source code remains property of the author and may not be distributed,
published, given or sold in any form as such. No parts of the source
code can be included in any other component or application without
written authorization of the author.
********************************************************************}

unit jpmlinks;

interface

uses
  controls, graphics, sysutils, forms, advgrid, windows, classes,
  JPMColorComboBox, JPMFontComboBox;

type
  TJPMFontComboBoxEditLink = class(TEditLink)
  private
    fEdit: TJPMFontComboBox;
  protected
    procedure EditExit(sender: TObject);
  public
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    function GetEditorValue: string; override;
    procedure SetEditorValue(s: string); override;
    function GetEditControl: TWinControl; override;
    procedure SetRect(r: trect); override;
  end;

  TJPMColorComboBoxEditLink = class(TEditLink)
  private
    fEdit: TJPMColorComboBox;
    fShowSystemColors: Boolean;
    fShowAdditionalColors: Boolean;
    fShowCustomColor: Boolean;
    fPreviewBoxWidth: integer;
  protected
    procedure EditExit(sender: TObject);
  public
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    function GetEditorValue: string; override;
    procedure SetEditorValue(s: string); override;
    function GetEditControl: TWinControl; override;
    procedure SetRect(r: trect); override;
  published
    property ShowSystemColors: Boolean read fShowSystemColors write fShowSystemColors;
    property ShowAdditionalColors: Boolean read fShowAdditionalColors write fShowAdditionalColors;
    property ShowCustomColor: Boolean read fShowCustomColor write fShowCustomColor;
    property PreviewBoxWidth: integer read fPreviewBoxWidth write fPreviewBoxWidth;
  end;

procedure Register;

implementation

{ TJPMFontComboBoxEditLink }

procedure TJPMFontComboBoxEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  fEdit := TJPMFontComboBox.Create(aParent);
  fEdit.OnKeydown := EditKeyDown;
  fEdit.OnExit := EditExit;
  fEdit.top := 0;
  fEdit.left := 0;
  fEdit.Width := 0;
  fEdit.Height := 0;
  fEdit.Parent := aParent;
  WantKeyUpDown := true;
  WantKeyPriorNext := true;
  WantKeyHomeEnd := true;
end;

procedure TJPMFontComboBoxEditLink.DestroyEditor;
begin
  if assigned(fEdit) then fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TJPMFontComboBoxEditLink.EditExit(sender: TObject);
begin
  HideEditor;
end;

function TJPMFontComboBoxEditLink.GetEditControl: TWinControl;
begin
  result := fEdit;
end;

function TJPMFontComboBoxEditLink.GetEditorValue: string;
begin
  if fEdit.ItemIndex >= 0 then
    result := fEdit.Items[fEdit.ItemIndex]
  else result := '';
end;

procedure TJPMFontComboBoxEditLink.SetEditorValue(s: string);
begin
  if (s <> '') then fEdit.ItemIndex := fEdit.Items.IndexOf(s);
end;

procedure TJPMFontComboBoxEditLink.SetRect(r: trect);
begin
  inherited;
  fEdit.Height := 100;
end;

{ TJPMColorComboBoxEditLink }

procedure TJPMColorComboBoxEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  fEdit := TJPMColorComboBox.Create(aParent);
  fEdit.OnKeydown := EditKeyDown;
  fEdit.OnExit := EditExit;
  fEdit.top := 0;
  fEdit.left := 0;
  fEdit.Width := 0;
  fEdit.Height := 0;
  fEdit.Parent := aParent;
  WantKeyUpDown := true;
  WantKeyPriorNext := true;
  WantKeyHomeEnd := true;
end;

procedure TJPMColorComboBoxEditLink.DestroyEditor;
begin
  if assigned(fEdit) then fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TJPMColorComboBoxEditLink.EditExit(sender: TObject);
begin
  HideEditor;
end;

function TJPMColorComboBoxEditLink.GetEditControl: TWinControl;
begin
  result := fEdit;
end;

function TJPMColorComboBoxEditLink.GetEditorValue: string;
begin
  if fEdit.ItemIndex >= 0 then
    result := fEdit.Items[fEdit.ItemIndex]
  else result := '';
end;

procedure TJPMColorComboBoxEditLink.SetEditorValue(s: string);
begin
  if (s <> '') then fEdit.ItemIndex := fEdit.Items.IndexOf(s);
end;

procedure TJPMColorComboBoxEditLink.SetRect(r: trect);
begin
  inherited;
  fEdit.Height := 100;
end;

procedure Register;
begin
  RegisterComponents('TMS EditLinks', [
    TJPMFontComboBoxEditLink,
      TJPMColorComboBoxEditLink]);
end;


end.
