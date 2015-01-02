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
  ExtCtrls, AdvGrid, Grids, AdvListv;

type
  TPagePreview = class(TForm)
    PaintBox1: TPaintBox;
    procedure PaintBox1Paint(Sender: TObject);
  private
    {
    asg:tAdvStringGrid;
    }
    prevctrl: tcomponent;
    { Private declarations }
  public
    {
    constructor Create(aOwner:tComponent; aStringGrid:tAdvStringGrid);
    }
    constructor Create(aOwner: tComponent; aComp: Tcomponent);

    { Public declarations }
  end;

var
  PagePreview: TPagePreview;

implementation

{$R *.DFM}

constructor TPagePreview.Create(aOwner: tComponent; acomp: tcomponent);
begin
  inherited Create(aOwner);
  prevctrl := acomp;
end;

procedure TPagePreview.PaintBox1Paint(Sender: TObject);
begin
  if prevctrl is TAdvStringGrid then
    (prevctrl as TAdvStringGrid).printpreview(paintbox1.canvas, paintbox1.clientrect);

  if prevctrl is TAdvListView then
    (prevctrl as TAdvListView).preview(paintbox1.canvas, paintbox1.clientrect);
end;

end.
