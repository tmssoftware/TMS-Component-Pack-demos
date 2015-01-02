{********************************************************************}
{ TMS TAdvSmoothButton Demo                                          }
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
  ExtCtrls, AdvSmoothButton, StdCtrls;

type
  TForm166 = class(TForm)
    AdvSmoothButton1: TAdvSmoothButton;
    AdvSmoothButton2: TAdvSmoothButton;
    AdvSmoothButton3: TAdvSmoothButton;
    AdvSmoothButton4: TAdvSmoothButton;
    AdvSmoothButton5: TAdvSmoothButton;
    AdvSmoothButton6: TAdvSmoothButton;
    Label1: TLabel;
    procedure AdvSmoothButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form166: TForm166;

implementation

{$R *.dfm}

procedure TForm166.AdvSmoothButton5Click(Sender: TObject);
begin
  Label1.Caption := 'You have chosen ' + (Sender as TAdvSmoothButton).Status.Caption;
end;

end.
