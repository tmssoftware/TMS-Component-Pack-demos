{********************************************************************}
{ TImagePicker DEMO application                                      }
{ version 1.0                                                        }
{ for Delphi 4.0,5.0,6.0,7.0 & C++Builder 4.0,5.0,6.0                }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2001-2004                                   }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit uImgPickDemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, AdvCombo, ImagePicker, ImgList;

type
  TForm1 = class(TForm)
    ImageList1: TImageList;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    ImagePicker1: TImagePicker;
    Label1: TLabel;
    SelTrad: TLabel;
    Button1: TButton;
    GroupBox2: TGroupBox;
    ImagePicker2: TImagePicker;
    ImageList2: TImageList;
    Label3: TLabel;
    SelFlat: TLabel;
    Button2: TButton;
    procedure e(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ImagePicker2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.e(Sender: TObject);
begin
  SelTrad.Caption := ImagePicker1.Selection.Caption;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ImagePicker1.SelectByCaption('Normal');
  SelTrad.Caption := 'Normal';
end;

procedure TForm1.ImagePicker2Change(Sender: TObject);
begin
  SelFlat.Caption := ImagePicker2.Selection.Caption;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ImagePicker1.SelectByImageIdx(0);
  SelTrad.Caption := ImagePicker1.Selection.Caption;
  ImagePicker2.SelectByImageIdx(0);
  SelFlat.Caption := ImagePicker2.Selection.Caption;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ImagePicker2.SelectByCaption('USA');
  SelFlat.Caption := 'USA';
end;

end.
