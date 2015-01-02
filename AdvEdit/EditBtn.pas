{********************************************************************}
{ TMS AdvEdit Demo                                                   }
{ for Delphi & C++Builder                                            }
{                                                                    }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2012                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit EditBtn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvEdit, AdvEdBtn, AdvDirectoryEdit, AdvFileNameEdit, winxp;

type
  TForm1 = class(TForm)
    AdvEditBtn1: TAdvEditBtn;
    Label1: TLabel;
    Label3: TLabel;
    AdvEditBtn2: TAdvEditBtn;
    Label4: TLabel;
    AdvDirectoryEdit1: TAdvDirectoryEdit;
    AdvFileNameEdit1: TAdvFileNameEdit;
    Label5: TLabel;
    AdvEditBtn3: TAdvEditBtn;
    Label6: TLabel;
    Label7: TLabel;
    AdvEditBtn4: TAdvEditBtn;
    Label8: TLabel;
    procedure AdvEditBtn2ClickBtn(Sender: TObject);
    procedure AdvEditBtn4ClipboardCopy(Sender: TObject; value: String;
      var allow: Boolean);
    procedure AdvEditBtn4ClipboardCut(Sender: TObject; value: String;
      var allow: Boolean);
    procedure AdvEditBtn4ClipboardPaste(Sender: TObject; value: String;
      var allow: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.AdvEditBtn2ClickBtn(Sender: TObject);
begin
  AdvEditBtn2.Text := '0';
end;

procedure TForm1.AdvEditBtn4ClipboardCopy(Sender: TObject; value: String;
  var allow: Boolean);
begin
  label8.Caption := 'copy : ' + value;
end;

procedure TForm1.AdvEditBtn4ClipboardCut(Sender: TObject; value: String;
  var allow: Boolean);
begin
  label8.Caption := 'cut : ' + value;
end;

procedure TForm1.AdvEditBtn4ClipboardPaste(Sender: TObject; value: String;
  var allow: Boolean);
begin
  label8.Caption := 'paste : ' + value;
end;

end.
