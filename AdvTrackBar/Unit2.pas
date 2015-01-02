{********************************************************************}
{ TMS TAdvTrackBar Demo                                              }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2012                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvTrackBar, ComCtrls, ImgList;

type
  TForm2 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    AdvTrackBar1: TAdvTrackBar;
    AdvTrackBar23: TAdvTrackBar;
    AdvTrackBar24: TAdvTrackBar;
    AdvTrackBar27: TAdvTrackBar;
    AdvTrackBar26: TAdvTrackBar;
    AdvTrackBar25: TAdvTrackBar;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    AdvTrackBar17: TAdvTrackBar;
    AdvTrackBar2: TAdvTrackBar;
    AdvTrackBar9: TAdvTrackBar;
    AdvTrackBar3: TAdvTrackBar;
    Rate1: TAdvTrackBar;
    TabSheet4: TTabSheet;
    AdvTrackBar15: TAdvTrackBar;
    AdvTrackBar4: TAdvTrackBar;
    AdvTrackBar20: TAdvTrackBar;
    AdvTrackBar21: TAdvTrackBar;
    TabSheet5: TTabSheet;
    ImageList3: TImageList;
    AdvTrackBar22: TAdvTrackBar;
    TabSheet6: TTabSheet;
    AdvTrackBar5: TAdvTrackBar;
    AdvTrackBar6: TAdvTrackBar;
    AdvTrackBar10: TAdvTrackBar;
    AdvTrackBar11: TAdvTrackBar;
    TabSheet7: TTabSheet;
    AdvTrackBar12: TAdvTrackBar;
    AdvTrackBar16: TAdvTrackBar;
    AdvTrackBar13: TAdvTrackBar;
    TabSheet8: TTabSheet;
    AdvTrackBar7: TAdvTrackBar;
    AdvTrackBar8: TAdvTrackBar;
    AdvTrackBar14: TAdvTrackBar;
    AdvTrackBar18: TAdvTrackBar;
    AdvTrackBar28: TAdvTrackBar;
    AdvTrackBar29: TAdvTrackBar;
    AdvTrackBar19: TAdvTrackBar;
    AdvTrackBar30: TAdvTrackBar;
    AdvTrackBar31: TAdvTrackBar;
    AdvTrackBar32: TAdvTrackBar;
    AdvTrackBar33: TAdvTrackBar;
    AdvTrackBar34: TAdvTrackBar;
    procedure AdvTrackBar22GetTrackHint(Sender: TObject; Position: Integer;
      var HintStr: string);
    procedure AdvTrackBar12DrawTick(Sender: TObject; Canvas: TCanvas;
      Location: TPoint; Position: Integer; TickPos: TTickMark;
      var Length: Integer; var Color, TextColor: TColor; var Text: string;
      var DefaultDraw: Boolean);
    procedure AdvTrackBar13DrawTick(Sender: TObject; Canvas: TCanvas;
      Location: TPoint; Position: Integer; TickPos: TTickMark;
      var Length: Integer; var Color, TextColor: TColor; var Text: string;
      var DefaultDraw: Boolean);
    procedure AdvTrackBar16DrawTick(Sender: TObject; Canvas: TCanvas;
      Location: TPoint; Position: Integer; TickPos: TTickMark;
      var Length: Integer; var Color, TextColor: TColor; var Text: string;
      var DefaultDraw: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.AdvTrackBar12DrawTick(Sender: TObject; Canvas: TCanvas;
  Location: TPoint; Position: Integer; TickPos: TTickMark; var Length: Integer;
  var Color, TextColor: TColor; var Text: string; var DefaultDraw: Boolean);
begin
  if ((Position mod 5) <> 0) then
  begin
    Length := 6;
  end
  else
  begin
    Color := clRed;
    TextColor := clRed;
  end;
  Text := IntToStr(Position);

end;

procedure TForm2.AdvTrackBar13DrawTick(Sender: TObject; Canvas: TCanvas;
  Location: TPoint; Position: Integer; TickPos: TTickMark; var Length: Integer;
  var Color, TextColor: TColor; var Text: string; var DefaultDraw: Boolean);
begin
  if (TickPos = tmTopLeft) then
  begin
    DefaultDraw := ((Position mod 3) = 0);
    if DefaultDraw then
    begin
      if ((Position mod 5) <> 0) then
      begin
        Length := 6;
      end
      else
      begin
        Color := clRed;
        TextColor := clRed;
      end;
      Text := IntToStr((Position div 3));
    end;
  end
  else
  begin
    DefaultDraw := True; //((Index mod 3) = 0);
    if DefaultDraw then
    begin
      if ((Position mod 5) <> 0) then
      begin
        Length := 6;
      end
      else
      begin
        Color := clRed;
        TextColor := clRed;
      end;
      Text := IntToStr(Position);
    end;
  end;
end;

procedure TForm2.AdvTrackBar16DrawTick(Sender: TObject; Canvas: TCanvas;
  Location: TPoint; Position: Integer; TickPos: TTickMark; var Length: Integer;
  var Color, TextColor: TColor; var Text: string; var DefaultDraw: Boolean);
begin
  if ((Position mod 5) <> 0) then
  begin
    Length := 6;
  end
  else
  begin
    Color := clBlue;
    TextColor := clRed;
  end;
  Text := IntToStr(Position);
end;

procedure TForm2.AdvTrackBar22GetTrackHint(Sender: TObject; Position: Integer;
  var HintStr: string);
begin
  case Position of
  0: HintStr := 'Database';
  1: HintStr := 'Home';
  2: HintStr := 'Tools';
  3: HintStr := 'Admin';
  4: HintStr := 'Users';
  end;

end;

end.
