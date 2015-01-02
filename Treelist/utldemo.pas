{***************************************************************************}
{ TTreeList demo                                                            }
{ for Delphi 5,6,7 & C++Builder 5,6                                         }
{ version 0.8                                                               }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2000 - 2004                                        }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{                                                                           }
{***************************************************************************}


unit utldemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, TreeList, StdCtrls, ExtCtrls
  {$IFDEF VER120} , ImgList {$ENDIF}
  {$IFDEF VER130} , ImgList {$ENDIF}
  ;

type
  TForm1 = class(TForm)
    TreeList1: TTreeList;
    ImageList1: TImageList;
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

procedure TForm1.FormCreate(Sender: TObject);
var
  i:Integer;
begin
  treelist1.loadfromfile('cars.tl');

  for i := 1 to treelist1.items.Count do
  begin
    treelist1.items.Item[i-1].ImageIndex:=random(2);
    treelist1.items.Item[i-1].SelectedIndex := treelist1.items.Item[i-1].ImageIndex;
  end;
end;

end.
