{********************************************************************}
{ TMS TAdvInputTaskDialog Demo                                       }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2012                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit uAdvInputTaskDialogDemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TaskDialog, Spin;

type
  TForm1 = class(TForm)
    AdvInputTaskDialog1: TAdvInputTaskDialog;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    SpinEdit1: TSpinEdit;
    procedure Button1Click(Sender: TObject);
    procedure AdvInputTaskDialog1DialogInputGetText(Sender: TObject;
      var Text: string);
    procedure AdvInputTaskDialog1DialogInputSetText(Sender: TObject;
      Text: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AdvInputTaskDialog1DialogInputGetText(Sender: TObject;
  var Text: string);
begin
  Text := SpinEdit1.Text;
end;

procedure TForm1.AdvInputTaskDialog1DialogInputSetText(Sender: TObject;
  Text: string);
begin
  SpinEdit1.Text := Text;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  case radiogroup1.ItemIndex of
  0: AdvInputTaskDialog1.InputType := itEdit;
  1: AdvInputTaskDialog1.InputType := itComboEdit;
  2: AdvInputTaskDialog1.InputType := itComboList;
  3: AdvInputTaskDialog1.InputType := itMemo;
  4: AdvInputTaskDialog1.InputType := itDate;
  5:
    begin
      AdvInputTaskDialog1.InputType := itCustom;
      AdvInputTaskDialog1.InputControl := SpinEdit1;

    end;
  end;
  AdvInputTaskDialog1.InputText := Edit1.Text;
  AdvInputTaskDialog1.Execute;
  Edit2.Text := AdvInputTaskDialog1.InputText;
end;

end.
