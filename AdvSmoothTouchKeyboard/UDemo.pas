{********************************************************************}
{ TMS TAdvSmoothTouchKeyBoard Demo                                   }
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
  Dialogs, AdvSmoothTouchKeyBoard, StdCtrls, ExtCtrls, AdvStyleIF;

type
  TForm171 = class(TForm)
    Memo1: TMemo;
    AdvSmoothTouchKeyBoard1: TAdvSmoothTouchKeyBoard;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form171: TForm171;

implementation

{$R *.dfm}

procedure TForm171.FormCreate(Sender: TObject);
begin
  AdvSmoothTouchKeyBoard1.AutoCompletion.LookupList.LoadFromFile('fullwords.txt');
end;

end.
