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
unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, AdvDropDown, AdvCustomGridDropDown, AdvGridDropDown,
  AdvGridDropDownEx, Planner, XPMan;

type
  TForm1 = class(TForm)
    AdvGridDropDownEx1: TAdvGridDropDownEx;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  AdvGridDropDownEx1.Columns[0].Header := 'Column 1';
  AdvGridDropDownEx1.Columns[1].Header := 'Column 2';
  AdvGridDropDownEx1.Columns[2].Header := 'Column 3';

  AdvGridDropDownEx1.Items.Clear;

  with (AdvGridDropDownEx1.Items.Add as TDropDownItemEx) do
  begin
    Color := clInfoBk;
    FontStyle := [fsBold];
    Text.Add('Row 1 C1');
    Text.Add('Row 1 C2');
    Text.Add('Row 1 C3');
  end;

  with (AdvGridDropDownEx1.Items.Add as TDropDownItemEx) do
  begin
    Color := clWhite;
    FontStyle := [fsItalic];
    Text.Add('Row 2 C1');
    Text.Add('Row 2 C2');
    Text.Add('Row 2 C3');
  end;

  with (AdvGridDropDownEx1.Items.Add as TDropDownItemEx) do
  begin
    Color := clYellow;
    FontStyle := [];
    Text.Add('Row 3 C1');
    Text.Add('Row 3 C2');
    Text.Add('Row 3 C3');
  end;

  with (AdvGridDropDownEx1.Items.Add as TDropDownItemEx) do
  begin
    Color := clInfoBk;
    FontStyle := [fsUnderline];
    Text.Add('Row 4 C1');
    Text.Add('Row 4 C2');
    Text.Add('Row 4 C3');
  end;

end;

end.
