{*************************************************************************}
{ TAdvStringGrid demo unit                                                }
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
unit uasg33;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  atScript, gridscript, Grids, AdvGrid, StdCtrls, asgprev, ImgList, XPMan,
  BaseGrid, AdvObj
{$IFDEF VER140}
  , Variants
{$ENDIF}
  ;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Grid1: TAdvStringGrid;
    GridScript1: TGridScript;
    Button1: TButton;
    Grid2: TAdvStringGrid;
    Grid3: TAdvStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
  GridScript1.clear;
  GridScript1.SourceCode.Assign(Memo1.Lines);
  GridScript1.Execute(unassigned);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  GridScript1.AddGrid('Grid1', Grid1);
  GridScript1.AddGrid('Grid2', Grid2);
end;

end.
