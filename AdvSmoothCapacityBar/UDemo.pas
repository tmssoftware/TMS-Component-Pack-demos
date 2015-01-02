{********************************************************************}
{ TMS TAdvSmoothCapacityBar Demo                                     }
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
  Dialogs, AdvSmoothCapacityBar, GDIPFill, StdCtrls, Math, ExtCtrls, ComCtrls;

type
  TForm164 = class(TForm)
    AdvSmoothCapacityBar1: TAdvSmoothCapacityBar;
    Panel1: TPanel;
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Button2: TButton;
    TrackBar1: TTrackBar;
    Label2: TLabel;
    TrackBar2: TTrackBar;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form164: TForm164;

implementation

{$R *.dfm}

procedure TForm164.Button1Click(Sender: TObject);
begin
  with AdvSmoothCapacityBar1.Items.Add do
  begin
    Description := Edit1.Text;
    if Description = '' then
      Description := 'New Item';

    Color := RGB(Random(255), Random(255), Random(255));
    ColorTo := Color;
    Value := TrackBar1.Position;
  end;
end;

procedure TForm164.Button2Click(Sender: TObject);
begin
  AdvSmoothCapacityBar1.Items.Clear;
end;

procedure TForm164.FormCreate(Sender: TObject);
begin
  TrackBar1.Position := 50;
  TrackBar2.Position := Round(AdvSmoothCapacityBar1.TotalCapacity);
  Edit1.Text := 'New Item';
  DoubleBuffered := True;
end;

procedure TForm164.TrackBar1Change(Sender: TObject);
begin
  Label4.Caption := inttostr(TrackBar1.Position);
end;

procedure TForm164.TrackBar2Change(Sender: TObject);
begin
  AdvSmoothCapacityBar1.TotalCapacity := TrackBar2.Position;
  Label5.Caption := inttostr(TrackBar2.Position);
end;

end.
