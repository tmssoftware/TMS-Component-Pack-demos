{********************************************************************}
{ TMS TAdvProgressBar Demo                                           }
{                                                                    }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2012                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvProgressBar, ComCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    TrackBar1: TTrackBar;
    AdvProgressBar1: TAdvProgressBar;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    procedure TrackBar1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  AdvProgressBar1.Position := 100 - TrackBar1.Position;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  advprogressbar1.ShowGradient := CheckBox1.Checked;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  advprogressbar1.ShowPercentage := checkbox2.Checked;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
  advprogressbar1.ShowPosition := checkbox3.Checked;
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
  advprogressbar1.Stacked := checkbox4.checked;
end;

procedure TForm1.CheckBox5Click(Sender: TObject);
begin
  advprogressbar1.CompletionSmooth := checkbox5.Checked;
end;

procedure TForm1.CheckBox6Click(Sender: TObject);
begin
  advprogressbar1.Rounded := checkbox6.checked;
end;

end.
