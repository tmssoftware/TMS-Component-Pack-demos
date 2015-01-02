{************************************************************************}
{ THTMLPopup demo app                                                    }
{ for Delphi 4.0,5.0,6.0,7.0 + C++Builder 4.0,5.0,6.0                    }
{ version 1.1                                                            }
{                                                                        }
{ Copyright © 1999-2004                                                  }
{   TMS Software                                                         }
{   Email : info@tmssoftware.com                                         }
{   Web : http://www.tmssoftware.com                                     }
{************************************************************************}

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, HTMLPopup, StdCtrls, cabfiles, PictureContainer, ExtCtrls,
  ComCtrls, ShellApi
  {$IFDEF VER140}
  , Variants
  {$ENDIF}
  {$IFDEF VER120}
  , ImgList
  {$ENDIF}
  ;

type
  TForm1 = class(TForm)
    PictureContainer1: TPictureContainer;
    HTMLPopup1: THTMLPopup;
    ImageList1: TImageList;
    GroupBox1: TGroupBox;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    GroupBox2: TGroupBox;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure HTMLPopup1AnchorClick(Sender: TObject; Anchor: String);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button7Click(Sender: TObject);

  private
    { Private declarations }
  public

    { Public declarations }
    htmlpopup: thtmlpopup;
    procedure AnchorClick(sender: TObject; Anchor: string);
    procedure CreatePopup;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button3Click(Sender: TObject);
begin
  htmlpopup1.RollUp;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  htmlpopup1.Hide;
end;

procedure TForm1.HTMLPopup1AnchorClick(Sender: TObject; Anchor: String);
begin
  ShellExecute(0,'open',pchar(Anchor),nil,nil,SW_NORMAL);
  htmlpopup1.Hide;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  htmlpopup1.Show;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  if Assigned(htmlpopup) then
    Exit;
  CreatePopup;
  htmlpopup.Show;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  if Assigned(htmlpopup) then
  begin
    htmlpopup.Hide;
    htmlpopup.Free;
    htmlpopup := nil;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  htmlpopup := nil;
end;

procedure TForm1.CreatePopup;
begin
  htmlpopup := thtmlpopup.Create(self);
  htmlpopup.popupwidth := 200;
  htmlpopup.popupheight := 200;
  htmlpopup.bordersize := 8;
  htmlpopup.popuptop := 100;
  htmlpopup.popupleft := 100;
  htmlpopup.Font.Name := 'Tahoma';
  htmlpopup.Font.Style := [fsBold];
  htmlpopup.OnAnchorClick := AnchorClick;

  htmlpopup.Text.Add('<font color="clred">This is a runtime created message ...</font><BR><BR>');
  htmlpopup.Text.Add('Inviting you to visit :<br>');
  htmlpopup.Text.Add('<a href="http://www.tmssoftware.com">http://www.tmssoftware.com</a>');
  htmlpopup.Text.Add('<BR><BR>Press here to <a href="close">close</a>');
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  if Assigned(htmlpopup) then
    Exit;
  CreatePopup;
  htmlpopup.RollUp;
end;

procedure TForm1.AnchorClick(sender: TObject; Anchor: string);
begin
  if anchor='close' then
  begin
     htmlpopup.Hide;
     htmlpopup.Free;
     htmlpopup := nil;

  end
  else
    ShellExecute(0,'open',pchar(Anchor),nil,nil,SW_NORMAL);
end;

end.
