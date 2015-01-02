unit AdvGridDropDownEx;

interface

uses
  AdvGridDropDown, AdvCustomGridDropDown, Classes, Graphics, Grids;

type

  TDropDownItemEx = class(TDropDownItem)
  private
    FTag: integer;
    FColor: TColor;
    FFontStyle: TFontStyles;
  public
    constructor Create(Collection: TCollection);
  published
    property Color: TColor read FColor write FColor;
    property FontStyle: TFontStyles read FFontStyle write FFontStyle;
    property Tag: integer read FTag write FTag;
  end;

  TDropDownItemsEx = class(TDropDownItems)
  protected
    function GetItemClass: TDropDownItemClass; override;
  end;

  TAdvGridDropDownEx = class(TAdvGridDropDown)
  protected
    procedure DoGridGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont); override;

    function CreateItems(AOwner: TComponent): TDropDownItems; override;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TMS Grid',[TAdvGridDropDownEx]);
end;

{ TAdvGridDropDownEx }

function TAdvGridDropDownEx.CreateItems(AOwner: TComponent): TDropDownItems;
begin
  Result := TDropDownItemsEx.Create(AOwner);
end;

procedure TAdvGridDropDownEx.DoGridGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  inherited;

  if (ARow >= Grid.FixedRows) then
  begin
    ABrush.Color := (Items[ARow - Grid.FixedRows] as TDropDownItemEx).Color;
    AFont.Style :=  (Items[ARow - Grid.FixedRows] as TDropDownItemEx).FontStyle;
  end;
end;

{ TDropDownItemsEx }

function TDropDownItemsEx.GetItemClass: TDropDownItemClass;
begin
  Result := TDropDownItemEx;
end;

{ TDropDownItemEx }

constructor TDropDownItemEx.Create(Collection: TCollection);
begin
  inherited;
  FTag := 0;
  FColor := clWindow;
  FFontStyle := [];
end;

end.
