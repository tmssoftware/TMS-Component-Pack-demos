{********************************************************************}
{ TMS TAdvSmoothMessageDialog Demo                                   }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2014                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit UDemo;

interface

uses
  Windows, Dialogs, AdvSmoothMessageDialog, Controls, StdCtrls, jpeg, Classes,
  ExtCtrls, ShellApi, Forms, AdvStyleIF;

type
  TForm8 = class(TForm)
    AdvSmoothMessageDialog1: TAdvSmoothMessageDialog;
    Button1: TButton;
    AdvSmoothMessageDialog2: TAdvSmoothMessageDialog;
    Button2: TButton;
    Image1: TImage;
    Button3: TButton;
    Button5: TButton;
    Button10: TButton;
    AdvSmoothMessageDialog5: TAdvSmoothMessageDialog;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure AdvSmoothMessageDialog1AnchorClick(Sender: TObject;
      Anchor: string);
    procedure Button11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DoDialog;
    procedure DoDialog2;
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.AdvSmoothMessageDialog1AnchorClick(Sender: TObject;
  Anchor: string);
begin
  ShellExecute(0, 'Open', pchar(Anchor), nil, nil, SW_NORMAL);
end;

procedure TForm8.Button10Click(Sender: TObject);
begin
  AdvSmoothMessageDialog5.ExecuteDialog;
end;

procedure TForm8.Button11Click(Sender: TObject);
begin
  ShowMessage('dit is een test');
  ShowSmoothMessage('dit is een test');
end;

procedure TForm8.Button1Click(Sender: TObject);
begin
  AdvSmoothMessageDialog1.ButtonLayout := blHorizontal;
  DoDialog;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
  AdvSmoothMessageDialog2.ButtonLayout := blHorizontal;
  DoDialog2;
end;

procedure TForm8.Button3Click(Sender: TObject);
begin
  AdvSmoothMessageDialog1.ButtonLayout := blVertical;
  DoDialog;
end;

procedure TForm8.Button5Click(Sender: TObject);
begin
  AdvSmoothMessageDialog2.ButtonLayout := blVertical;
  DoDialog2;
end;

procedure TForm8.Button9Click(Sender: TObject);
begin
  AdvSmoothMessageDialog5.ExecuteDialog;
end;

procedure TForm8.DoDialog;
begin
  case AdvSmoothMessageDialog1.ExecuteDialog of
  mrYes: ShowSmoothMessage('Congratulations, you have succesfully purchased item 3');
  mrIgnore: ShowSmoothMessage('Reminder Added');
  end;
end;

procedure TForm8.DoDialog2;
begin
  case AdvSmoothMessageDialog2.ExecuteDialog of
  mrOk: ShowSmoothMessage('Try Later clicked');
  mrCancel: ShowSmoothMessage('Buy now clicked');
  mrRetry: ShowSmoothMessage('Try premium clicked');
  end;
end;

procedure TForm8.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true;
  Image1.Visible := true;
end;

end.
