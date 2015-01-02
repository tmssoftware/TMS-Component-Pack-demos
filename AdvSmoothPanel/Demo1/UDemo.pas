{********************************************************************}
{ TMS TAdvSmoothPanel Demo                                           }
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
  GDIPPictureContainer, StdCtrls, AdvSmoothPanel, jpeg, ExtCtrls, ShellAPI, AdvStyleIF;

type
  TForm93 = class(TForm)
    AdvSmoothPanel1: TAdvSmoothPanel;
    AdvSmoothPanel2: TAdvSmoothPanel;
    AdvSmoothPanel3: TAdvSmoothPanel;
    AdvSmoothPanel4: TAdvSmoothPanel;
    Image1: TImage;
    GDIPPictureContainer1: TGDIPPictureContainer;
    ComboBox1: TComboBox;
    Label9: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure AdvSmoothPanel1AnchorClick(Sender: TObject; Anchor: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var                         
  Form93: TForm93;

implementation

{$R *.dfm}

procedure TForm93.AdvSmoothPanel1AnchorClick(Sender: TObject; Anchor: string);
begin
  ShellExecute(WindowHandle, 'Open', PChar(Anchor), nil, nil, SW_SHOWNORMAL);
end;

procedure TForm93.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0:AdvSmoothPanel2.SetComponentStyle(tsOffice2003Blue);
    1:AdvSmoothPanel2.SetComponentStyle(tsOffice2003Silver);
    2:AdvSmoothPanel2.SetComponentStyle(tsOffice2003Olive);
    3:AdvSmoothPanel2.SetComponentStyle(tsOffice2003Classic);
    4:AdvSmoothPanel2.SetComponentStyle(tsOffice2007Luna);
    5:AdvSmoothPanel2.SetComponentStyle(tsOffice2007Obsidian);
    6:AdvSmoothPanel2.SetComponentStyle(tsOffice2007Silver);
    7:AdvSmoothPanel2.SetComponentStyle(tsWindows8);
  end;
end;

procedure TForm93.FormCreate(Sender: TObject);
begin
  AdvSmoothPanel2.SetComponentStyle(tsWindows8);
  ComboBox1.ItemIndex := 7;
end;

end.
