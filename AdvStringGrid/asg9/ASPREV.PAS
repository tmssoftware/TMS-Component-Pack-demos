{*************************************************************************}
{ TAdvStringGrid print preview                                            }
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

unit asprev;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, AdvGrid, Grids;

type
  TPagePreview = class(TForm)
    PaintBox1: TPaintBox;
    procedure PaintBox1Paint(Sender: TObject);
  private
    { Private declarations }
    asg: TAdvStringGrid;
  public
    constructor Create(AOwner: TComponent; AStringGrid: TAdvStringGrid);
    { Public declarations }
  end;

var
  PagePreview: TPagePreview;

implementation

{$R *.DFM}

constructor TPagePreview.Create(AOwner: TComponent; AStringGrid: TAdvStringGrid);
begin
  inherited Create(aOwner);
  asg := AStringGrid;
end;

procedure TPagePreview.PaintBox1Paint(Sender: TObject);
begin
  asg.printpreview(paintbox1.canvas, paintbox1.clientrect);
end;

end.
