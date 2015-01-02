{********************************************************************}
{ TMS TAdvGlassButton Demo                                           }
{ for Delphi & C++Builder                                            }
{                                                                    }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2012                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit AdvGlasButtonDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGDIP, AdvGlassButton, GDIPicture, StdCtrls, jpeg, ExtCtrls,
  ImgList, Menus, AdvOfficeHint, ShellAPI;
type
  TForm2 = class(TForm)
    Image1: TImage;
    AdvGlassButton1: TAdvGlassButton;
    PopupMenu1: TPopupMenu;
    Cancel1: TMenuItem;
    Accept1: TMenuItem;
    ImageList1: TImageList;
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure CustomClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  i: Integer;

implementation

{$R *.dfm}

procedure TForm2.AdvGlassButton1Click(Sender: TObject);
var
  gb1, gb2, gb3, gb4, gb5, gb6, gb7, gb8, gb9, gb10, gb11, gb12, gb14: TAdvGlassButton;
  lbl1, lbl2: TLabel;
  pic1, pic2, pic3: TGDIPPicture;
begin
  case i of
    0:
    begin
      AdvGlassButton1.Caption := 'Next';

      gb2 := TAdvGlassButton.Create(self);
      gb2.Caption := 'Translucent Button Control';
      gb2.Left:= 70;
      gb2.Top:= 25;
      gb2.Width := 75;
      gb2.Height := 75;
      gb2.ForceTransparent := true;
      gb2.BackColor := clSilver;
      gb2.Font.Color := clWhite;
      gb2.Parent := self;

      gb1 := TAdvGlassButton.Create(self);
      gb1.Left:= 25;
      gb1.Top:= 70;
      gb1.Caption := 'Translucent Button Control';
      gb1.Width := 75;
      gb1.Height := 75;
      gb1.ForceTransparent := true;
      gb1.BackColor := clGreen;
      gb1.Font.Color := clWhite;
      gb1.Parent := self;


    end;
    1:
    begin
      AdvGlassButton1.Caption := 'Next';
      gb3 := TAdvGlassButton.Create(self);
      gb3.Caption := 'supports different rounded corner styles';
      gb3.Width := 100;
      gb3.BackColor := clMaroon;
      gb3.Font.Color:= clWhite;
      gb3.CornerRadius := 10;
      gb3.Height := 100;
      gb3.Left:= 225;
      gb3.Top := 40;
      gb3.Parent := self;

      gb4 := TAdvGlassButton.Create(self);
      gb4.Caption := 'supports different rounded corner styles';
      gb4.Width := 75;
      gb4.BackColor := clRed;
      gb4.Font.Color:= clWhite;
      gb4.CornerRadius := 20;
      gb4.Height := 100;
      gb4.Left:= 350;
      gb4.Top := 30;
      gb4.Parent := self;

      gb5 := TAdvGlassButton.Create(self);
      gb5.Caption := 'supports different rounded corner styles';
      gb5.Width := 250;
      gb5.Height := 20;
      gb5.Font.Color:= clBlack;
      gb5.BackColor := clWhite;
      gb5.ButtonDirection := AdvGlassButton.bdRight;
      gb5.ButtonShape := AdvGlassButton.btsCurvedRectangle;
      gb5.Left:= 325;
      gb5.Top := 150;
      gb5.Parent := self;

    end;
    2:
    begin
      AdvGlassButton1.Caption := 'Next';

      lbl1 := TLabel.Create(Self);
      lbl1.Top := 10;
      lbl1.Left := 460;
      lbl1.Font.Color := clWhite;
      lbl1.Font.Name := 'Tahoma';
      lbl1.Font.Style := [fsBold];
      lbl1.Caption := 'built-in symbols';
      lbl1.Parent := self;

      gb6 := TAdvGlassButton.Create(self);
      gb6.Width := 30;
      gb6.Height := 30;
      gb6.Font.Color:= clWhite;
      gb6.ButtonDirection := AdvGlassButton.bdLeft;
      gb6.BackGroundSymbol := AdvGlassButton.bsBackward;
      gb6.ButtonShape := AdvGlassButton.btsCurvedRectangle;
      gb6.Left:= 480;
      gb6.GlowColor := clRed;
      gb6.Top := 30;
      gb6.Parent := self;

      gb7 := TAdvGlassButton.Create(self);
      gb7.Width := 30;
      gb7.Height := 30;
      gb7.Font.Color:= clWhite;
      gb7.ButtonDirection := AdvGlassButton.bdRight;
      gb7.BackGroundSymbol := AdvGlassButton.bsStop;
      gb7.Left:= 520;
      gb7.Top := 30;
      gb7.GlowColor := clRed;
      gb7.Parent := self;

      gb7 := TAdvGlassButton.Create(self);
      gb7.Width := 30;
      gb7.Height := 30;
      gb7.Font.Color:= clWhite;
      gb7.ButtonDirection := AdvGlassButton.bdRight;
      gb7.BackGroundSymbol := AdvGlassButton.bsPlay;
      gb7.Left:= 560;
      gb7.Top := 30;
      gb7.GlowColor := clRed;
      gb7.Parent := self;

      gb8 := TAdvGlassButton.Create(self);
      gb8.Width := 30;
      gb8.Height := 30;
      gb8.Font.Color:= clWhite;
      gb8.ButtonDirection := AdvGlassButton.bdRight;
      gb8.BackGroundSymbol := AdvGlassButton.bsForward;
      gb8.ButtonShape := AdvGlassButton.btsCurvedRectangle;
      gb8.Left:= 600;
      gb8.Top := 30;
      gb8.GlowColor := clRed;
      gb8.Parent := self;
    end;
    3:
    begin
      AdvGlassButton1.Caption := 'Next';

      pic1 := TGDIPPicture.Create;
      pic1.LoadFromFile('.\Help and Support.png');

      pic2 := TGDIPPicture.Create;
      pic2.LoadFromFile('.\Portable.png');

      pic3 := TGDIPPicture.Create;
      pic3.LoadFromFile('.\Search.png');

      lbl2 := TLabel.Create(Self);
      lbl2.Top := 70;
      lbl2.Left := 460;
      lbl2.Font.Color := clWhite;
      lbl2.Font.Name := 'Tahoma';
      lbl2.Font.Style := [fsBold];
      lbl2.Caption := 'supports PNG images with alpha transparency';
      lbl2.Parent := self;

      gb9 := TAdvGlassButton.Create(self);
      gb9.Width := 50;
      gb9.Height := 40;
      gb9.Font.Color:= clWhite;
      gb9.BackColor := clWebSnow;
      gb9.Left:= 480;
      gb9.Top := 90;
      gb9.Picture := pic1;
      gb9.Parent := self;

      gb11 := TAdvGlassButton.Create(self);
      gb11.Width := 50;
      gb11.Height := 40;
      gb11.Font.Color:= clWhite;
      gb11.BackColor := clWebSnow;
      gb11.Left:= 540;
      gb11.Top := 90;
      gb11.Picture := pic2;
      gb11.Parent := self;

      gb10 := TAdvGlassButton.Create(self);
      gb10.Width := 60;
      gb10.Height := 60;
      gb10.Font.Color:= clWhite;
      gb10.BackColor := clSkyBlue;
      gb10.Left:= 600;
      gb10.Top := 90;
      gb10.Picture := pic3;
      gb10.Parent := self;
    end;
    4:
    begin
      AdvGlassButton1.Caption := 'Next';
      gb12 := TAdvGlassButton.Create(self);
      gb12.Width := 150;
      gb12.Height := 100;
      gb12.Caption := 'Popupmenu support when right-clicking button';
      gb12.Font.Color:= clBlack;
      gb12.BackColor := clWhite;
      gb12.Left:= 40;
      gb12.Top := 250;
      gb12.PopupMenu := PopupMenu1;
      gb12.Parent := self;
    end;
    5:
    begin
      AdvGlassButton1.Caption := 'Close';
      gb14 := TAdvGlassButton.Create(self);
      gb14.Width := 300;
      gb14.Height := 150;
      gb14.Font.Size:=13;
      gb14.Caption := 'Click here to visit http://www.tmssoftware.com for more information';
      gb14.Font.Color:= clWhite;
      gb14.BackColor := clBlack;
      gb14.ShineColor := clWhite;
      gb14.Left:= 320;
      gb14.Top := 220;
      gb14.Parent := self;
      gb14.OnClick := CustomClick;
    end;
    6:
    begin
      Close;
    end;
  end;
  i := i + 1;
end;

procedure TForm2.CustomClick(Sender: TObject);
begin
  ShellExecute(0,'open','http://www.tmssoftware.com',nil,nil,SW_NORMAL);
end;

end.
