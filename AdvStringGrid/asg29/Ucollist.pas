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
unit Ucollist;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, BtnListB;

type
  TFieldChooser = class(TForm)
    ButtonListbox1: TButtonListbox;
    procedure FormCreate(Sender: TObject);
    procedure ButtonListbox1OleDragStart(Sender: TObject;
      DropIndex: Integer);
    procedure ButtonListbox1OleDragStop(Sender: TObject;
      OLEEffect: Integer);
    procedure ButtonListbox1OleDragOver(Sender: TObject;
      var Allow: Boolean);
  private
    { Private declarations }
    colsource: TObject;
  public
    { Public declarations }
  end;

var
  FieldChooser: TFieldChooser;

implementation

{$R *.DFM}

procedure TFieldChooser.FormCreate(Sender: TObject);
begin
  SetWindowPos(self.handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOSIZE or SWP_NOMOVE);
end;

procedure TFieldChooser.ButtonListbox1OleDragStart(Sender: TObject;
  DropIndex: Integer);
begin
  colsource := Sender;
end;

procedure TFieldChooser.ButtonListbox1OleDragStop(Sender: TObject;
  OLEEffect: Integer);
begin
  colsource := nil;
end;

procedure TFieldChooser.ButtonListbox1OleDragOver(Sender: TObject;
  var Allow: Boolean);
begin
  Allow := Sender <> ColSource;
end;

end.
