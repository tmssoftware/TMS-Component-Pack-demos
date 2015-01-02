unit MyMonthPlanner;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Planner, PlannerMonthView;

type
  TMyMonthPlannerItem = class(TMonthPlannerItem)
  private
    FMyProperty: string;
  public
    procedure Assign(Source: TPersistent); override;
  published
    property MyProperty: string read FMyProperty write FMyProperty;
  end;

  TMyMonthPlannerItems = class(TPlannerMonthViewItems)
  public
    function GetItemClass: TCollectionItemClass; override;
  end;

  TMyMonthPlannerView = class(TPlannerMonthView)
  private
    { Private declarations }
  protected
    { Protected declarations }
    function CreateItems(AOwner: TCustomPlanner): TPlannerMonthViewItems; override;
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TMS Planner', [TMyMonthPlannerView]);
end;

{ TMyMonthPlannerItems }

function TMyMonthPlannerItems.GetItemClass: TCollectionItemClass;
begin
   Result := TMyMonthPlannerItem;
end;

{ TMyMonthPlannerView }

function TMyMonthPlannerView.CreateItems(AOwner: TCustomPlanner): TPlannerMonthViewItems;
begin
  Result := TMyMonthPlannerItems.Create(AOwner);
end;

{ TMyMonthPlannerItem }

procedure TMyMonthPlannerItem.Assign(Source: TPersistent);
begin
  inherited Assign(Source);
  if Assigned(Source) then
  FMyProperty := TMyMonthPlannerItem(source).MyProperty;
end;

end.
