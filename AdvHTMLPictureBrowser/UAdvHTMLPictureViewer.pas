unit UAdvHTMLPictureViewer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  GDIPPictureContainer, StdCtrls, ExtCtrls, AdvHTMLPictureBrowser, Menus, PictureContainer, ImgList, PNGImage;

type
  TForm93 = class(TForm)
    PopupMenu1: TPopupMenu;
    AdvHTMLPictureBrowser1: TAdvHTMLPictureBrowser;
    ComboBox1: TComboBox;
    Panel1: TPanel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    PicturePopUp1: TMenuItem;
    PopupMenu2: TPopupMenu;
    BasePopup1: TMenuItem;
    CheckBox5: TCheckBox;
    ImageList1: TImageList;
    PictureContainer1: TPictureContainer;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox2: TComboBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure AdvHTMLPictureBrowser1AnchorClick(Sender: TObject; Text: string);
    procedure CheckBox5Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form93: TForm93;

implementation

{$R *.dfm}

procedure TForm93.AdvHTMLPictureBrowser1AnchorClick(Sender: TObject;
  Text: string);
begin
  ShowMessage(Text);
end;

procedure TForm93.Button1Click(Sender: TObject);
begin
  AdvHTMLPictureBrowser1.PictureMargins.Top := 50;
end;

procedure TForm93.Button2Click(Sender: TObject);
begin
  AdvHTMLPictureBrowser1.PictureMargins.Top := 5;
end;

procedure TForm93.CheckBox1Click(Sender: TObject);
begin
  AdvHTMLPictureBrowser1.AspectRatio := CheckBox1.Checked;
end;

procedure TForm93.CheckBox2Click(Sender: TObject);
begin
  AdvHTMLPictureBrowser1.Center := CheckBox2.Checked;
end;

procedure TForm93.CheckBox3Click(Sender: TObject);
begin
  AdvHTMLPictureBrowser1.Cropping := CheckBox3.Checked;
end;

procedure TForm93.CheckBox4Click(Sender: TObject);
begin
  AdvHTMLPictureBrowser1.Stretch := CheckBox4.Checked;
end;

procedure TForm93.CheckBox5Click(Sender: TObject);
begin
  AdvHTMLPictureBrowser1.WordWrap := (Sender as TCheckBox).Checked;
end;

procedure TForm93.CheckBox7Click(Sender: TObject);
begin
  AdvHTMLPictureBrowser1.DescriptionHover := (Sender as TCheckBox).Checked;
end;

procedure TForm93.CheckBox8Click(Sender: TObject);
begin
  AdvHTMLPictureBrowser1.SwipeEnabled := (Sender as TCheckBox).Checked;
end;

procedure TForm93.ComboBox1Change(Sender: TObject);
begin
  AdvHTMLPictureBrowser1.DescriptionPlacement := TDescPlacement(ComboBox1.ItemIndex);
end;

procedure TForm93.ComboBox2Change(Sender: TObject);
begin
  AdvHTMLPictureBrowser1.Navigation.NavigationType := TNavigationType((Sender as TComboBox).ItemIndex);
end;

procedure TForm93.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true;
end;

end.
