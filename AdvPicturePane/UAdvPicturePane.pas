unit UAdvPicturePane;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, AdvPicturePane, StdCtrls,
  ComCtrls, GDIPicture;

type
  TForm93 = class(TForm)
    AdvPicturePane1: TAdvPicturePane;
    AdvPicturePane2: TAdvPicturePane;
    AdvPicturePane3: TAdvPicturePane;
    FontDialog1: TFontDialog;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    lblItemCaption: TLabel;
    lblItemHint: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure AdvPicturePane1ItemClick(Sender: TObject; Index: Integer);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form93: TForm93;

implementation

{$R *.dfm}

procedure TForm93.AdvPicturePane1ItemClick(Sender: TObject; Index: Integer);
var
  Item: TPictureItem;
begin
  Item := AdvPicturePane1.Pictures.Items[Index];
  lblItemCaption.Caption := Item.Caption;
  lblItemHint.Caption := Item.Hint;
end;

procedure TForm93.Button1Click(Sender: TObject);
begin
  FontDialog1.Font := AdvPicturePane1.Font;
  if FontDialog1.Execute then
    AdvPicturePane1.Font := FontDialog1.Font;
end;

procedure TForm93.Button2Click(Sender: TObject);
begin
  AdvPicturePane1.PictureWidth := 100;
end;

procedure TForm93.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true;
end;

end.
