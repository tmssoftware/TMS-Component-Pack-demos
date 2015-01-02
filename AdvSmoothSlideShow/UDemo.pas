{********************************************************************}
{ TMS TAdvSmoothSlideShow Demo                                       }
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
  AdvSmoothSlideShow, StdCtrls, ExtCtrls, Spin;

type
  TForm674 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label2: TLabel;
    ComboBox2: TComboBox;
    AdvSmoothSlideShow1: TAdvSmoothSlideShow;
    Label3: TLabel;
    SpinEdit1: TSpinEdit;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    GroupBox2: TGroupBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox21: TCheckBox;
    CheckBox22: TCheckBox;
    CheckBox23: TCheckBox;
    CheckBox24: TCheckBox;
    CheckBox25: TCheckBox;
    CheckBox26: TCheckBox;
    CheckBox27: TCheckBox;
    CheckBox28: TCheckBox;
    CheckBox29: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CheckBox18Click(Sender: TObject);
    procedure AdvSmoothSlideShow1MouseEnter(Sender: TObject);
    procedure AdvSmoothSlideShow1MouseLeave(Sender: TObject);
    procedure AdvSmoothSlideShow1ThumbClick(Sender: TObject;
      itemindex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure StartRotation;
  end;

var
  Form674: TForm674;

implementation

{$R *.dfm}

procedure TForm674.AdvSmoothSlideShow1MouseEnter(Sender: TObject);
begin
  AdvSmoothSlideShow1.ThumbNails := true;
end;

procedure TForm674.AdvSmoothSlideShow1MouseLeave(Sender: TObject);
begin
  AdvSmoothSlideShow1.ThumbNails := false;
end;

procedure TForm674.AdvSmoothSlideShow1ThumbClick(Sender: TObject;
  itemindex: Integer);
begin
  outputdebugstring(pchar('thumb click'));
end;

procedure TForm674.Button1Click(Sender: TObject);
begin
  AdvSmoothSlideShow1.ThumbNails := not AdvSmoothSlideShow1.ThumbNails;
  if AdvSmoothSlideShow1.ThumbNails then
    Button1.Caption := 'Hide Thumbnails'
  else
    Button1.Caption := 'Show Thumbnails';
end;

procedure TForm674.Button2Click(Sender: TObject);
begin
  AdvSmoothSlideShow1.FullScreen;
end;

procedure TForm674.Button3Click(Sender: TObject);
begin
  StartRotation;
end;

procedure TForm674.Button4Click(Sender: TObject);
begin
  AdvSmoothSlideShow1.Next;
end;

procedure TForm674.Button5Click(Sender: TObject);
begin
  AdvSmoothSlideShow1.Previous;
end;

procedure TForm674.CheckBox18Click(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to AdvSmoothSlideShow1.Items.Count - 1 do
  begin
    if CheckBox18.Checked then
      AdvSmoothSlideShow1.Items[I].Kind := ikImageText
    else
      AdvSmoothSlideShow1.Items[I].Kind := ikImage;
  end;
end;

procedure TForm674.CheckBox1Click(Sender: TObject);
begin
  if (Sender as TCheckBox).Checked then
    AdvSmoothSlideShow1.Animations := AdvSmoothSlideShow1.Animations + [TSlideShowAnimation((Sender as TCheckBox).Tag)]
  else
    AdvSmoothSlideShow1.Animations := AdvSmoothSlideShow1.Animations - [TSlideShowAnimation((Sender as TCheckBox).Tag)]
end;

procedure TForm674.ComboBox2Change(Sender: TObject);
begin
  AdvSmoothSlideShow1.ThumbNailPosition := TThumbNailPosition(ComboBox2.ItemIndex);
end;

procedure TForm674.FormCreate(Sender: TObject);
var
  i: integer;
begin
  AdvSmoothSlideShow1.BeginUpdate;
  AdvSmoothSlideShow1.AddItemsFromFolder('images\*.*', ikImage, true, true, true);
  AdvSmoothSlideShow1.Transitions := [stPlaceHolder, stFade];
  AdvSmoothSlideShow1.AspectRatio := true;
  AdvSmoothSlideShow1.ItemMode := AdvSmoothSlideShow.imNormal;
  AdvSmoothSlideShow1.Rotation := false;
  CheckBox5.Checked := true;
  AdvSmoothSlideShow1.RotationInterval := 3000;
  SpinEdit1.Value := 3000;
  ComboBox2.ItemIndex := 3;
  AdvSmoothSlideShow1.FadeAnimationFactor := 10;
  AdvSmoothSlideShow1.Animations := [saBottomToTop];
  AdvSmoothSlideShow1.ThumbNails := false;
  AdvSmoothSlideShow1.LoadEffect := true;
  AdvSmoothSlideShow1.DescriptionFill.Opacity := 50;
  StartRotation;


  for I := 0 to AdvSmoothSlideShow1.Items.Count - 1 do
  begin
    AdvSmoothSlideShow1.Items[i].DescriptionFont.Color := clWhite;
  end;
  AdvSmoothSlideShow1.EndUpdate;

end;

procedure TForm674.SpinEdit1Change(Sender: TObject);
begin
  AdvSmoothSlideShow1.RotationInterval := SpinEdit1.Value;
end;

procedure TForm674.StartRotation;
begin
  AdvSmoothSlideShow1.Rotation := not AdvSmoothSlideShow1.Rotation;
  if AdvSmoothSlideShow1.Rotation then
    Button3.Caption := 'Stop Rotation'
  else
    Button3.Caption := 'Start Rotation';
end;

end.
