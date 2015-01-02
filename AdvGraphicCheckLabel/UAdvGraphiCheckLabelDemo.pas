unit UAdvGraphiCheckLabelDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, AdvGraphicCheckLabel,
  ImgList, Mask, AdvEdit, AdvIPEdit, GDIPPictureContainer, ExtCtrls,
  ColorGrd;

type
  TForm92 = class(TForm)
    AdvGraphicCheckLabel1: TAdvGraphicCheckLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    ComboBox1: TComboBox;
    Label3: TLabel;
    CheckBox3: TCheckBox;
    AdvGraphicCheckLabel2: TAdvGraphicCheckLabel;
    GDIPPictureContainer1: TGDIPPictureContainer;
    ColorGrid1: TColorGrid;
    Label4: TLabel;
    Label5: TLabel;
    procedure CheckBox1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ColorGrid1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form92: TForm92;

implementation

{$R *.dfm}

procedure TForm92.CheckBox1Click(Sender: TObject);
begin
  if (Sender as TCheckBox).Checked then
  begin
    AdvGraphicCheckLabel1.StateChecked.Text := Edit1.Text;
    Edit1.Enabled := true;
    AdvGraphicCheckLabel1.StateUnChecked.Text := Edit2.Text;
    Edit2.Enabled := true;
  end
  else
  begin
    AdvGraphicCheckLabel1.StateChecked.Text := 'Checked';
    Edit1.Enabled := false;
    AdvGraphicCheckLabel1.StateUnChecked.Text := 'Unchecked';
    Edit2.Enabled := false;
  end;
end;

procedure TForm92.CheckBox2Click(Sender: TObject);
begin
  if (Sender as TCheckBox).Checked then
  begin
    CheckBox3.Visible := False;
    Label3.Visible := True;
    ComboBox1.Visible :=  True;
    AdvGraphicCheckLabel2.StateChecked.Picture := nil;
    AdvGraphicCheckLabel2.StateUnChecked.Picture := nil;
    AdvGraphicCheckLabel2.StateChecked.HoverPicture := nil;
    AdvGraphicCheckLabel2.StateUnChecked.HoverPicture := nil;
    ComboBox1Change(ComboBox1);
    ColorGrid1Click(ColorGrid1);
  end
  else
  begin
    CheckBox3.Visible := True;
    Label3.Visible := False;
    ComboBox1.Visible := False;
    AdvGraphicCheckLabel2.Kind := ckCustom;
    AdvGraphicCheckLabel2.StateChecked.Text := 'Using custom images';
    AdvGraphicCheckLabel2.StateUnChecked.Text := 'Using custom images';
    AdvGraphicCheckLabel2.StateChecked.Picture := GDIPPictureContainer1.Items[0].Picture;
    AdvGraphicCheckLabel2.StateUnChecked.Picture := GDIPPictureContainer1.Items[1].Picture;
  end;
  ColorGrid1Click(ColorGrid1);
end;

procedure TForm92.CheckBox3Click(Sender: TObject);
begin
  if (Sender as TCheckBox).Checked then
  begin
    AdvGraphicCheckLabel2.StateChecked.HoverPicture := GDIPPictureContainer1.Items[2].Picture;
    AdvGraphicCheckLabel2.StateUnChecked.HoverPicture := GDIPPictureContainer1.Items[3].Picture;
  end
  else
  begin
    AdvGraphicCheckLabel2.StateChecked.HoverPicture := nil;
    AdvGraphicCheckLabel2.StateUnChecked.HoverPicture := nil;
  end;
end;

procedure TForm92.ColorGrid1Click(Sender: TObject);
begin
  if CheckBox2.Checked then
  begin
    AdvGraphicCheckLabel2.StateChecked.PictureColor := ColorGrid1.ForegroundColor;
    AdvGraphicCheckLabel2.StateUnChecked.PictureColor := ColorGrid1.ForegroundColor;
  end
  else
  begin
    AdvGraphicCheckLabel2.StateChecked.PictureColor := clNone;
    AdvGraphicCheckLabel2.StateUnChecked.PictureColor := clNone;
  end;
  AdvGraphicCheckLabel2.StateChecked.Font.Color := ColorGrid1.BackgroundColor;
  AdvGraphicCheckLabel2.StateUnChecked.Font.Color := ColorGrid1.BackgroundColor;
end;

procedure TForm92.ComboBox1Change(Sender: TObject);
begin
  case (Sender as TComboBox).ItemIndex of
    0 : AdvGraphicCheckLabel2.Kind := ckAvailable;
    1 : AdvGraphicCheckLabel2.Kind := ckBookmark;
    2 : AdvGraphicCheckLabel2.Kind := ckCheck;
    3 : AdvGraphicCheckLabel2.Kind := ckFavorite;
    4 : AdvGraphicCheckLabel2.Kind := ckFollowing;
    5 : AdvGraphicCheckLabel2.Kind := ckInCart;
    6 : AdvGraphicCheckLabel2.Kind := ckLike;
    7 : AdvGraphicCheckLabel2.Kind := ckWish;
  end;
end;

procedure TForm92.Edit1Change(Sender: TObject);
begin
  CheckBox1Click(CheckBox1);
end;

end.
