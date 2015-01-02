{*************************************************************************}
{ TWebImage demo application                                              }
{ version 1.1                                                             }
{ for Delphi 4.0,5.0,6.0,7.0 & C++Builder 4.0,5.0,6.0                     }
{                                                                         }
{ written by TMS Software                                                 }
{           copyright © 2001 - 2004                                       }
{           Email : info@tmssoftware.com                                  }
{           Web : http://www.tmssoftware.com                              }
{*************************************************************************}

unit Uwiviewer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, WebImage, ExtCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Regions: TListBox;
    pb: TProgressBar;
    Panel1: TPanel;
    wi: TWebImage;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure wiDownLoadProgress(Sender: TObject; dwSize,
      dwTotSize: Cardinal);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
 url:string;

begin
 case Regions.ItemIndex of
 0:url:='http://weather.yahoo.com/images/eur_satintl_440_mdy_y.jpg';
 1:url:='http://weather.yahoo.com/images/afr_satintl_440_mdy_y.jpg';
 2:url:='http://weather.yahoo.com/images/asia_sat_440_mdy_y.jpg';
 3:url:='http://weather.yahoo.com/images/northeast_sat_440x297.jpg';
 4:url:='http://weather.yahoo.com/images/aus_satintl_440_mdy_y.jpg';
 5:url:='http://weather.yahoo.com/images/sa_satintl_440_mdy_y.jpg';
 end;
 if not wi.webpicture.Busy then wi.webpicture.loadfromURL(url);
end;

procedure TForm1.wiDownLoadProgress(Sender: TObject; dwSize,
  dwTotSize: Cardinal);
begin
 pb.position:=dwSize;
 pb.max:=dwTotSize;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    regions.itemindex:=0;
end;

end.
