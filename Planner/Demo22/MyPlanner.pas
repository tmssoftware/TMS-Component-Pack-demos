unit MyPlanner;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Planner;

type
  TMyPlannerItem = class(TPlannerItem)
  private
    FMyProperty: string;
  public
    procedure Assign(Source: TPersistent); override;
  published
    property MyProperty: string read FMyProperty write FMyProperty;
  end;

  TMyPlannerItems = class(TPlannerItems)
  public
    function GetItemClass: TCollectionItemClass; override;
  end;

  TMyPlanner = class(TPlanner)
  private
    { Private declarations }
  protected
    { Protected declarations }
    function CreateItems: TPlannerItems; override;
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TMS', [TMyPlanner]);
end;

{ TMyPlannerItems }

function TMyPlannerItems.GetItemClass: TCollectionItemClass;
begin
   Result := TMyPlannerItem;
end;

{ TMyPlanner }

function TMyPlanner.CreateItems: TPlannerItems;
begin
  Result := TMyPlannerItems.Create(Self);
end;

{ TMyPlannerItem }

procedure TMyPlannerItem.Assign(Source: TPersistent);
begin
  inherited Assign(Source);
  if Assigned(Source) then
  FMyProperty := TMyPlannerItem(source).MyProperty;
end;

end.
