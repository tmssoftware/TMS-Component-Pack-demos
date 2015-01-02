{********************************************************************}
{ TMS TAdvSmoothMenu Demo                                            }
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
  Dialogs, AdvSmoothMenu, ExtCtrls, ComCtrls, StdCtrls, AdvStyleIF, jpeg;

type
  TForm93 = class(TForm)
    AdvSmoothMenu1: TAdvSmoothMenu;
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Memo2: TMemo;
    Label2: TLabel;
    Image1: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Image2: TImage;
    Memo1: TMemo;
    Label7: TLabel;
    Label8: TLabel;
    Image3: TImage;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Edit3: TEdit;
    Edit2: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Edit1: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Memo3: TMemo;
    Label13: TLabel;
    Label12: TLabel;
    Button1: TButton;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvSmoothMenu1ItemClick(Sender: TObject; ItemIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form93: TForm93;

implementation

{$R *.dfm}

procedure TForm93.AdvSmoothMenu1ItemClick(Sender: TObject; ItemIndex: Integer);
begin
  PageControl1.ActivePageIndex := ItemIndex;
end;

procedure TForm93.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0:AdvSmoothMenu1.SetComponentStyle(tsOffice2003Blue);
    1:AdvSmoothMenu1.SetComponentStyle(tsOffice2003Silver);
    2:AdvSmoothMenu1.SetComponentStyle(tsOffice2003Olive);
    3:AdvSmoothMenu1.SetComponentStyle(tsOffice2003Classic);
    4:AdvSmoothMenu1.SetComponentStyle(tsOffice2007Luna);
    5:AdvSmoothMenu1.SetComponentStyle(tsOffice2007Obsidian);
    6:AdvSmoothMenu1.SetComponentStyle(tsOffice2007Silver);
    7:AdvSmoothMenu1.SetComponentStyle(tsWindows8);
  end;
end;

procedure TForm93.FormCreate(Sender: TObject);
begin
  DoubleBuffered := true;
  ComboBox1.ItemIndex := 7;
  AdvSmoothMenu1.SetComponentStyle(tsWindows8);
end;

end.
