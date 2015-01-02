{********************************************************************}
{ TMS TADVSPINEDIT DEMO                                              }
{                                                                    }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 1998-2012                                   }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit Uadvspin;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, advspin;

type
  TForm1 = class(TForm)
    AdvSpinEdit1: TAdvSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    AdvSpinEdit2: TAdvSpinEdit;
    AdvSpinEdit3: TAdvSpinEdit;
    AdvSpinEdit4: TAdvSpinEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    AdvSpinEdit5: TAdvSpinEdit;
    Label5: TLabel;
    CheckBox3: TCheckBox;
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
 advspinedit1.editorenabled:=checkbox1.checked;
 advspinedit2.editorenabled:=checkbox1.checked;
 advspinedit3.editorenabled:=checkbox1.checked;
 advspinedit4.editorenabled:=checkbox1.checked;
 advspinedit5.editorenabled:=checkbox1.checked;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
 advspinedit1.spinflat:=checkbox2.checked;
 advspinedit2.spinflat:=checkbox2.checked;
 advspinedit3.spinflat:=checkbox2.checked;
 advspinedit4.spinflat:=checkbox2.checked;
 advspinedit5.spinflat:=checkbox2.checked;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
 advspinedit1.flat:=checkbox3.checked;
 advspinedit2.flat:=checkbox3.checked;
 advspinedit3.flat:=checkbox3.checked;
 advspinedit4.flat:=checkbox3.checked;
 advspinedit5.flat:=checkbox3.checked;

end;

end.
