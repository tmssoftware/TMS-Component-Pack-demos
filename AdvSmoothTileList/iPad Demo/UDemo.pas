{********************************************************************}
{ TMS TAdvSmoothTileList Demo                                        }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2014                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit UDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GDIPPictureContainer, AdvSmoothTileList, AdvSmoothTileListImageVisualizer, GDIPFill, AdvGDIP,
  StdCtrls, ExtCtrls;

type
  TForm330 = class(TForm)
    AdvSmoothTileList1: TAdvSmoothTileList;
    GDIPPictureContainer1: TGDIPPictureContainer;
    AdvSmoothTileListImageVisualizer1: TAdvSmoothTileListImageVisualizer;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure AdvSmoothTileList1TileClick(Sender: TObject; Tile: TAdvSmoothTile;
      State: TTileState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form330: TForm330;

implementation

{$R *.dfm}

procedure TForm330.AdvSmoothTileList1TileClick(Sender: TObject;
  Tile: TAdvSmoothTile; State: TTileState);
begin
  ShowMessage(Tile.Content.Text + ' Clicked');
end;

procedure TForm330.FormCreate(Sender: TObject);
var
  tile: TAdvSmoothTile;
  i: integer;
  K: Integer;
begin
  AdvSmoothTileList1.PictureContainer := GDIPPictureContainer1;
  AdvSmoothTileList1.Visualizer := AdvSmoothTileListImageVisualizer1;
  AdvSmoothTileList1.Columns := 4;
  AdvSmoothTileList1.Rows := 4;
  AdvSmoothTileList1.Header.Visible := False;
  AdvSmoothTileList1.Footer.ArrowNavigation := False;
  AdvSmoothTileList1.Footer.Fill.BorderColor := clNone;
  AdvSmoothTileList1.Footer.Fill.Color := clNone;
  AdvSmoothTileList1.Footer.Fill.GradientType := gtSolid;
  AdvSmoothTileList1.Footer.Fill.GradientMirrorType := gtNone;
  AdvSmoothTileList1.TileAppearance.VerticalSpacing := 75;
  AdvSmoothTileList1.TileAppearance.HorizontalSpacing := 40;

  AdvSmoothTileList1.TileAppearance.SmallViewFill.GradientType := gtNone;
  AdvSmoothTileList1.TileAppearance.SmallViewFill.BorderColor := clNone;
  AdvSmoothTileList1.TileAppearance.StatusIndicatorAppearance.Font.Size := 14;
  AdvSmoothTileList1.TileAppearance.SmallViewFillHover.Opacity := 100;
  AdvSmoothTileList1.TileAppearance.StatusIndicatorAppearance.Fill.BorderColor := clWhite;
  AdvSmoothTileList1.TileAppearance.StatusIndicatorAppearance.Fill.BorderWidth := 2;

  AdvSmoothTileList1.Footer.Float := True;

  AdvSmoothTileList1.TileAppearance.SmallViewFont.Size := 10;
  AdvSmoothTileList1.TileAppearance.SmallViewFont.Color := clBlack;
  AdvSmoothTileList1.TileAppearance.SmallViewFontSelected.Assign(AdvSmoothTileList1.TileAppearance.SmallViewFont);
  AdvSmoothTileList1.TileAppearance.SmallViewFontHover.Assign(AdvSmoothTileList1.TileAppearance.SmallViewFont);
  AdvSmoothTileList1.TileAppearance.SmallViewFontDisabled.Assign(AdvSmoothTileList1.TileAppearance.SmallViewFont);

  for K := 0 to 5 do
  begin
    for I := 0 to GDIPPictureContainer1.Items.Count - 1 do
    begin
      tile := AdvSmoothTileList1.Tiles.Add;
      tile.Content.ImageName := inttostr(I);
      tile.DeleteIndicator := 'X';
      if I = 4 then
        tile.StatusIndicator := '5';

      if I = 2 then
        tile.StatusIndicator := '8';

      tile.DeleteIndicatorLeft := 10;
      tile.DeleteIndicatorTop := 5;
      tile.StatusIndicatorLeft := -15;
      tile.StatusIndicatorTop := 5;



      case I of
        0: tile.Content.Text := 'Accounting';
        1: tile.Content.Text := 'Books';
        2: tile.Content.Text := 'Employees';
        3: tile.Content.Text := 'Bills';
        4: tile.Content.Text := 'Stock';
        5: tile.Content.Text := 'Financy';
        6: tile.Content.Text := 'Administration';
        7: tile.Content.Text := 'Tags';
        8: tile.Content.Text := 'Orders';
        9: tile.Content.Text := 'Travel';
        10: tile.Content.Text := 'Calendar';
        11: tile.Content.Text := 'Expenses';
        12: tile.Content.Text := 'Profit';
        13: tile.Content.Text := 'Partners';
        14:tile.Content.Text := 'Bank Details';
        15:tile.Content.Text := 'Clients';
      end;

      Tile.Content.TextPosition := tpBottomCenter;
    end;
  end;

end;

end.
