{********************************************************************}
{ TMS TAdvGroupbox Demo                                              }
{ for Delphi & C++Builder                                            }
{                                                                    }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2012                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit AdvGroupBoxDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvGroupBox, AdvOfficePager, AdvOfficePagerStylers, jpeg,
  ExtCtrls, ImgList, AdvOfficeButtons, PictureContainer,
  AdvOfficeHint, AdvGlowButton;

type
  TForm2 = class(TForm)
    AdvOfficePager1: TAdvOfficePager;
    AdvOfficePage1: TAdvOfficePage;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    AdvGroupBox1: TAdvGroupBox;
    ImageList1: TImageList;
    AdvOfficeCheckBox1: TAdvOfficeCheckBox;
    AdvOfficeCheckBox2: TAdvOfficeCheckBox;
    AdvOfficeCheckBox3: TAdvOfficeCheckBox;
    AdvOfficeCheckBox4: TAdvOfficeCheckBox;
    AdvOfficeCheckBox5: TAdvOfficeCheckBox;
    AdvOfficePage2: TAdvOfficePage;
    AdvGroupBox3: TAdvGroupBox;
    AdvOfficeCheckBox6: TAdvOfficeCheckBox;
    AdvOfficeCheckBox7: TAdvOfficeCheckBox;
    AdvOfficeCheckBox8: TAdvOfficeCheckBox;
    AdvOfficeRadioButton1: TAdvOfficeRadioButton;
    AdvOfficeRadioButton2: TAdvOfficeRadioButton;
    AdvOfficeCheckBox9: TAdvOfficeCheckBox;
    AdvOfficeHint1: TAdvOfficeHint;
    AdvGlowButton3: TAdvGlowButton;
    AdvOfficeRadioGroup1: TAdvOfficeRadioGroup;
    AdvOfficeRadioButton3: TAdvOfficeRadioButton;
    AdvOfficeRadioButton4: TAdvOfficeRadioButton;
    AdvOfficeRadioButton5: TAdvOfficeRadioButton;
    AdvOfficeRadioButton6: TAdvOfficeRadioButton;
    AdvOfficeRadioButton7: TAdvOfficeRadioButton;
    procedure AdvOfficeCheckBox6Click(Sender: TObject);
    procedure AdvOfficeCheckBox8Click(Sender: TObject);
    procedure AdvOfficeCheckBox7Click(Sender: TObject);
    procedure AdvOfficeCheckBox9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.AdvOfficeCheckBox6Click(Sender: TObject);
begin
  if AdvOfficeCheckBox6.Checked then
  begin
    AdvOfficeCheckBox6.Caption := '<B>Windows Vista   <img src="idx:13"></B>';
  end
  else
    AdvOfficeCheckBox6.Caption := '<S>Windows Vista   <img src="idx:12"></S>';
end;

procedure TForm2.AdvOfficeCheckBox7Click(Sender: TObject);
begin
  if AdvOfficeCheckBox7.Checked then
  begin
    AdvOfficeCheckBox7.Caption := '<B>Office 2007   <img src="idx:13"></B>';
  end
  else
    AdvOfficeCheckBox7.Caption := '<S>Office 2007   <img src="idx:12"></S>';
end;

procedure TForm2.AdvOfficeCheckBox8Click(Sender: TObject);
begin
  if AdvOfficeCheckBox8.Checked then
  begin
    AdvOfficeCheckBox8.Caption := '<B>Windows XP   <img src="idx:13"></B>';
  end
  else
    AdvOfficeCheckBox8.Caption := '<S>Windows XP   <img src="idx:12"></S>';
end;

procedure TForm2.AdvOfficeCheckBox9Click(Sender: TObject);
begin
  if AdvOfficeCheckBox9.Checked then
  begin
    AdvOfficeCheckBox9.Caption := '<B>Windows Media Center   <img src="idx:13"></B>';
  end
  else
    AdvOfficeCheckBox9.Caption := '<S>Windows Media Center   <img src="idx:12"></S>';
end;


end.
