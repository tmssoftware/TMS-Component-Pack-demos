{********************************************************************}
{ TMS TAdvSmoothSplashScreen Demo                                    }
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
  Dialogs, AdvSmoothSplashScreen, GDIPPictureContainer, ImgList, ExtCtrls,
  StdCtrls;

type
  TForm1 = class(TForm)
    AdvSmoothSplashScreen1: TAdvSmoothSplashScreen;
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
  AdvSmoothSplashScreen1.BeginUpdate;
  AdvSmoothSplashScreen1.BasicProgramInfo.ProgramName.Location := ilCustom;
  AdvSmoothSplashScreen1.BasicProgramInfo.ProgramName.PosX := 145;
  AdvSmoothSplashScreen1.BasicProgramInfo.ProgramName.PosY := 0;
  AdvSmoothSplashScreen1.BasicProgramInfo.ProgramName.Text := FormatDateTime('dddd, mmmm dd, yyyy', Now);
  AdvSmoothSplashScreen1.BasicProgramInfo.ProgramVersion.Location := ilCustom;
  AdvSmoothSplashScreen1.BasicProgramInfo.ProgramVersion.PosX := 195;
  AdvSmoothSplashScreen1.BasicProgramInfo.ProgramVersion.PosY := 25;
  AdvSmoothSplashScreen1.BasicProgramInfo.ProgramVersion.Text := 'Today: Sunny 30°C';
  AdvSmoothSplashScreen1.TopLayerItems[3].HTMLText.Text := FormatDateTime('mm.dd.yy', Now + 1) + '<br/>Partly Cloudy';
  AdvSmoothSplashScreen1.TopLayerItems[4].HTMLText.Text := FormatDateTime('mm.dd.yy', Now + 2) + '<br/>Rainy';
  AdvSmoothSplashScreen1.TopLayerItems[5].HTMLText.Text := FormatDateTime('mm.dd.yy', Now + 3) + '<br/>Snowy';
  AdvSmoothSplashScreen1.TopLayerItems[6].HTMLText.Text := FormatDateTime('mm.dd.yy', Now + 4) + '<br/>Sunny';
  AdvSmoothSplashScreen1.EndUpdate;
  AdvSmoothSplashScreen1.Show;
  Sleep(6000);
  AdvSmoothSplashScreen1.SetFocusToForm(Form1);
end;

end.
