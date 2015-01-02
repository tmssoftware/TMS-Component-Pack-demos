{***********************************************************************}
{ THotSpotImage component                                               }
{                                                                       }
{ written by TMS Software                                               }
{            copyright © 2002 - 2012                                    }
{            Email: info@tmssoftware.com                                }
{            Web: http://www.tmssoftware.com                            }
{***********************************************************************}

unit uHotSpotDemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, HotSpotImage, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    HotSpotImage1: THotSpotImage;
    Label1: TLabel;
    Panel1: TPanel;
    procedure HotSpotImage1HotSpotEnter(Sender: TObject;
      HotSpot: THotSpot);
    procedure HotSpotImage1HotSpotExit(Sender: TObject; HotSpot: THotSpot);
    procedure HotSpotImage1HotSpotClick(Sender: TObject;
      HotSpot: THotSpot);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.HotSpotImage1HotSpotEnter(Sender: TObject;
  HotSpot: THotSpot);
begin
  panel1.Caption := HotSpot.Hint;
end;

procedure TForm1.HotSpotImage1HotSpotExit(Sender: TObject;
  HotSpot: THotSpot);
begin
  Panel1.Caption := 'Motherboard';
end;

procedure TForm1.HotSpotImage1HotSpotClick(Sender: TObject;
  HotSpot: THotSpot);
begin
 ShowMessage('You clicked on '+HotSpot.Hint);
end;

end.
