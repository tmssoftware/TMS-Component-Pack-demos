{********************************************************************}
{ TMS TAdvTouchKeyBoard Demo                                         }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2012                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit AdvTouchKeyBoardDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,  AdvTouchKeyboard;

type
  TForm2 = class(TForm)
    AdvTouchKeyboard1: TAdvTouchKeyboard;
    AdvTouchKeyboard2: TAdvTouchKeyboard;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    AdvTouchKeyboard3: TAdvTouchKeyboard;
    ComboBox1: TComboBox;
    Memo1: TMemo;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
  AdvTouchKeyBoard1.AutoCapsDisplay := checkbox1.Checked;
  AdvTouchKeyBoard2.AutoCapsDisplay := checkbox1.Checked;
  AdvTouchKeyBoard3.AutoCapsDisplay := checkbox1.Checked;
end;

procedure TForm2.CheckBox2Click(Sender: TObject);
begin
  if checkbox2.Checked then
  begin
    AdvTouchKeyboard1.HighlightCaps := clWhite;
    AdvTouchKeyboard2.HighlightCaps := clWhite;
    AdvTouchKeyboard1.HighlightAltGr := clWhite;
    AdvTouchKeyboard2.HighlightAltGr := clWhite;
  end
  else
  begin
    AdvTouchKeyboard1.HighlightCaps := clNone;
    AdvTouchKeyboard2.HighlightCaps := clNone;
    AdvTouchKeyboard1.HighlightAltGr := clNone;
    AdvTouchKeyboard2.HighlightAltGr := clNone;
  end;
end;

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
  0:
    begin
      AdvTouchKeyBoard1.Visible := true;
      Label1.Visible := true;
      AdvTouchKeyBoard2.Visible := false;
      Label2.Visible := false;
      AdvTouchKeyBoard3.Visible := false;
      Label3.Visible := false;
    end;
  1:
    begin
      AdvTouchKeyBoard1.Visible := false;
      Label1.Visible := false;
      AdvTouchKeyBoard2.Visible := true;
      Label2.Visible := true;
      AdvTouchKeyBoard3.Visible := false;
      Label3.Visible := false;
    end;
  2:
    begin
      AdvTouchKeyBoard1.Visible := false;
      Label1.Visible := false;
      AdvTouchKeyBoard2.Visible := false;
      Label2.Visible := false;
      AdvTouchKeyBoard3.Visible := true;
      Label3.Visible := true;
    end;
  end;

  Memo1.SetFocus;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  AdvTouchKeyboard2.Visible := false;
  AdvTouchKeyboard3.Visible := false;
  Label2.Visible := false;
  Label3.Visible := false;
end;

end.
