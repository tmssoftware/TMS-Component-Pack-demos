{********************************************************************}
{ TMS TAdvShape Demo                                                 }
{                                                                    }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2012                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, AdvShape, ImgList;

type
  TForm1 = class(TForm)
    AdvShape1: TAdvShape;
    Timer1: TTimer;
    AdvShape2: TAdvShape;
    ImageList1: TImageList;
    AdvShape3: TAdvShape;
    AdvShape4: TAdvShape;
    AdvShape5: TAdvShape;
    ImageList2: TImageList;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    shapeindex: integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  shapeindex := 0;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  AdvShape1.RotationAngle := AdvShape1.RotationAngle + 5;
  if AdvShape1.RotationAngle >= 180 then
  begin
    AdvShape1.RotationAngle := 0;

    Inc(ShapeIndex);
    if ShapeIndex = 6 then
      ShapeIndex := 0;

    case ShapeIndex of
    0: begin
         AdvShape1.Shape := stSquare;
         AdvShape1.ShapeWidth := 100;
         AdvShape1.ShapeHeight := 100;
       end;
    1: begin
         AdvShape1.Shape := stEllipse;
         AdvShape1.ShapeWidth := 100;
         AdvShape1.ShapeHeight := 60;
       end;
    2: begin
         AdvShape1.Shape := stRoundRect;
         AdvShape1.ShapeWidth := 100;
         AdvShape1.ShapeHeight := 60;
       end;
    3: begin
         AdvShape1.Shape := stTriangle;
         AdvShape1.ShapeWidth := 80;
         AdvShape1.ShapeHeight := 80;
       end;
    4: begin
         AdvShape1.Shape := stRectangle;
         AdvShape1.ShapeWidth := 100;
         AdvShape1.ShapeHeight := 60;
       end;
    5: begin
         AdvShape1.Shape := stStar;
         AdvShape1.ShapeWidth := 100;
         AdvShape1.ShapeHeight := 100;
       end;
    end;

    
  end;
end;

end.
