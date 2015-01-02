{********************************************************************}
{ TANIICON DEMO                                                      }
{ for Delphi 4.0,5.0,6.0,7.0 & C++Builder 4.0,5.0,6.0                }
{                                                                    }
{ version 2.0                                                                   }
{ written by TMS Software                                            }
{            copyright © 1998-2002                                   }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit anidemo;

interface

uses Windows, Classes, Graphics, Forms, Controls, Menus,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, aniicon;

type
  TAppForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Button3: TButton;
    Panel1: TPanel;
    AniIcon1: TAniIcon;
    Panel2: TPanel;
    AniIcon2: TAniIcon;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AppForm: TAppForm;

implementation

uses SysUtils;

{$R *.DFM}

procedure TAppForm.Button1Click(Sender: TObject);
begin
  AniIcon1.Animated:=true;
end;

procedure TAppForm.Button2Click(Sender: TObject);
begin
  AniIcon1.Animated:=false;
end;

procedure TAppForm.Button3Click(Sender: TObject);
begin
 if OpenDialog1.Execute then
  begin
   AniIcon2.AniFile.LoadFromFile(OpenDialog1.Filename);
  end;
end;



end.

