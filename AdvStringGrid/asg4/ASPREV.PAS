{*************************************************************************}
{ TAdvStringGrid print preview unit                                       }
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
  ExtCtrls, AdvGrid, Grids, StdCtrls;

type
  TPagePreview = class(TForm)
    Panel1: TPanel;
    Button2: TButton;
    Button1: TButton;
    Label1: TLabel;
    Panel2: TPanel;
    PaintBox1: TPaintBox;
    procedure PaintBox1Paint(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    asg: tAdvStringGrid;
    { Private declarations }
  public
    constructor CreatePreview(aOwner: tComponent; aStringGrid: tAdvStringGrid);
    { Public declarations }
  end;

var
  PagePreview: TPagePreview;

implementation

{$R *.DFM}

constructor TPagePreview.CreatePreview(aOwner: tComponent; aStringGrid: tAdvStringGrid);
begin
  inherited Create(aOwner);
  asg := aStringGrid;
end;

procedure TPagePreview.PaintBox1Paint(Sender: TObject);
var
  r: trect;
begin
  asg.printsettings.headersize := 150;

  r := paintbox1.clientrect;
  r.bottom := r.bottom + paintbox1.top;
  asg.printpreview(paintbox1.canvas, r);
end;

procedure TPagePreview.Button1Click(Sender: TObject);
begin
  if asg.PreviewPage > 1 then
  begin
    asg.PreviewPage := asg.PreviewPage - 1;
    paintbox1.repaint;
    label1.caption := 'Page : ' + inttostr(asg.PreviewPage);
  end;
end;

procedure TPagePreview.Button2Click(Sender: TObject);
begin
  asg.PreviewPage := asg.PreviewPage + 1;
  label1.caption := 'Page : ' + inttostr(asg.PreviewPage);
  paintbox1.repaint;
end;


end.
