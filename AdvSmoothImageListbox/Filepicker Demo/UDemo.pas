{***************************************************************************}
{ TMS AdvSmoothImageListBox Demo                                            }
{ for Delphi                                                                }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2014                                               }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{                                                                           }
{ The source code is given as is. The author is not responsible             }
{ for any possible damage done due to the use of this code.                 }
{ The component can be freely used in any application. The complete         }
{ source code remains property of the author and may not be distributed,    }
{ published, given or sold in any form as such. No parts of the source      }
{ code can be included in any other component or application without        }
{ written authorization of the author.                                      }
{***************************************************************************}

//  - Library PngImage must be present and Delphi library path must be updated
//    (http://www.torry.net/vcl/graphics/otherformats/pngimage.zip)

unit UDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, AdvSmoothEdit, AdvSmoothEditButton, jpeg,
//  - Library PngImage must be present and Delphi library path must be updated
//    (http://www.torry.net/vcl/graphics/otherformats/pngimage.zip)
  PngImage;

type
  TForm132 = class(TForm)
    Button1: TButton;
    Panel1: TPanel;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form132: TForm132;

implementation

uses
  uPickerDialog;

{$R *.dfm}

procedure TForm132.Button1Click(Sender: TObject);
var
  pd: TPickerDialog;
begin
  pd := TPickerDialog.Create(self);
  if pd.ShowModal = mrOK then
  begin
    if pd.Location <> '' then
      Image1.Picture.LoadFromFile(pd.Location);
    caption := pd.Location;
  end;
  FreeAndNil(pd);
end;


end.
