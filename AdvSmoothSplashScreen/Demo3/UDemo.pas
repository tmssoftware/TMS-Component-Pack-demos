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
  Dialogs, AdvSmoothSplashScreen, GDIPPictureContainer, ImgList, ExtCtrls, jpeg;

type
  TForm1 = class(TForm)
    AdvSmoothSplashScreen1: TAdvSmoothSplashScreen;
    Image1: TImage;
    GDIPPictureContainer1: TGDIPPictureContainer;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure UpdateProgress(Percentage: integer);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  i: integer;
begin
  AdvSmoothSplashScreen1.Show;
  AdvSmoothSplashScreen1.BeginUpdate;
  AdvSmoothSplashScreen1.BasicProgramInfo.ProgramVersion.Text := 'Version: '+ AdvSmoothSplashScreen1.BasicProgramInfo.ProgramVersion.Text;
  AdvSmoothSplashScreen1.BasicProgramInfo.ProgramVersion.Location := ilCustom;
  AdvSmoothSplashScreen1.BasicProgramInfo.ProgramVersion.PosX := 365;
  AdvSmoothSplashScreen1.EndUpdate;
  AdvSmoothSplashScreen1.ListItemsSettings.Rect.Left := 150;
  AdvSmoothSplashScreen1.ListItemsSettings.Rect.Top := 180;
  AdvSmoothSplashScreen1.ListItemsSettings.Rect.Height := 50;
  Sleep(1000);
  with AdvSmoothSplashScreen1.ListItems.Add do
  begin
    BeginUpdate;
    HTMLText := '<IMG src="0"><FONT size="20" color="#A45302">Loading Bottle...</FONT><br>';
    EndUpdate;
  end;
  Sleep(2000);
  UpdateProgress(10);
  with AdvSmoothSplashScreen1.ListItems.Add do
  begin
    BeginUpdate;
    HTMLText := '<IMG src="1"><FONT size="20" color="#A45302">Loading Wheel...</FONT><br>';
    EndUpdate;
  end;
  Sleep(2000);
  UpdateProgress(20);
  with AdvSmoothSplashScreen1.ListItems.Add do
  begin
    BeginUpdate;
    HTMLText := '<IMG src="2"><FONT size="20" color="#A45302">Loading Map...</FONT><br>';
    EndUpdate;
  end;
  Sleep(2000);
  UpdateProgress(30);
  with AdvSmoothSplashScreen1.ListItems.Add do
  begin
    BeginUpdate;
    HTMLText := '<IMG src="3"><FONT size="20" color="#A45302">Loading Skull...</FONT><br>';
    EndUpdate;
  end;
  Sleep(2000);
  UpdateProgress(40);
  with AdvSmoothSplashScreen1.ListItems.Add do
  begin
    BeginUpdate;
    HTMLText := '<IMG src="4"><FONT size="20" color="#A45302">Loading Torch...</FONT><br>';
    EndUpdate;
  end;
  Sleep(2000);
  UpdateProgress(50);
  AdvSmoothSplashScreen1.ListItems.Clear;
  with AdvSmoothSplashScreen1.ListItems.Add do
  begin
    BeginUpdate;
    HTMLText := '<FONT size="20" color="#A45302">Finishing Pirate ship...</FONT>';
    EndUpdate;
  end;
  I := 50;
  while AdvSmoothSplashScreen1.ProgressBar.Position < 100 do
  begin
    Sleep(1);
    UpdateProgress(I);
    Inc(I);
  end;

  AdvSmoothSplashScreen1.SetFocusToForm(Form1);
end;

procedure TForm1.UpdateProgress(Percentage: integer);
begin
  AdvSmoothSplashScreen1.ProgressBar.Position := Percentage
end;

end.
