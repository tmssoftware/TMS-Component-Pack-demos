{********************************************************************}
{ TMS TAdvShaper Demo                                                }
{                                                                    }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2012                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit AdvShaperDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvShaper, StdCtrls, AdvGlowButton;

type
  TForm2 = class(TForm)
    AdvShaper1: TAdvShaper;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvShaper2: TAdvShaper;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}



procedure TForm2.AdvGlowButton1Click(Sender: TObject);
begin
Close;
end;

procedure TForm2.AdvGlowButton2Click(Sender: TObject);
begin
  Dialogs.ShowMessage('Synchronized clicked');
end;

procedure TForm2.AdvGlowButton3Click(Sender: TObject);
begin
  Dialogs.ShowMessage('Start clicked');
end;

procedure TForm2.AdvGlowButton4Click(Sender: TObject);
begin
  Dialogs.ShowMessage('Email clicked');
end;

procedure TForm2.AdvGlowButton5Click(Sender: TObject);
begin
  Dialogs.ShowMessage('Calendar clicked');
end;

end.
