{*************************************************************************}
{ TAdvShaper demo application                                             }
{                                                                         }
{ written by TMS Software                                                 }
{           copyright © 2002 - 2012                                       }
{           Email : info@tmssoftware.com                                  }
{           Web : http://www.tmssoftware.com                              }
{*************************************************************************}

unit UHotSpotDemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvShaper, HotSpotImage, Menus, StdCtrls;

type
  TForm1 = class(TForm)
    AdvShaper1: TAdvShaper;
    HotSpotImage1: THotSpotImage;
    PopupMenu1: TPopupMenu;
    Exit1: TMenuItem;
    Label1: TLabel;
    procedure Exit1Click(Sender: TObject);
    procedure HotSpotImage1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
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

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.HotSpotImage1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Assigned(HotSpotImage1.HotSpotXY[x,y]) then Exit
  else
  if Button = mbleft then
  begin
    ReleaseCapture;
    Self.Perform(WM_SYSCOMMAND, $F012, 0);
  end;

end;

procedure TForm1.HotSpotImage1HotSpotEnter(Sender: TObject;
  HotSpot: THotSpot);
begin
  label1.Caption := HotSpot.Hint;
end;

procedure TForm1.HotSpotImage1HotSpotExit(Sender: TObject;
  HotSpot: THotSpot);
begin
  Label1.Caption := '';
end;

procedure TForm1.HotSpotImage1HotSpotClick(Sender: TObject;
  HotSpot: THotSpot);
begin
  ShowMessage(HotSpot.Hint);
end;

end.
