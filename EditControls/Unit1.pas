{********************************************************************}
{ DEMO application for Edit Controls                                 }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2000-2012                                   }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvEdit, AdvEdBtn, AdvFileNameEdit, AdvDirectoryEdit,
  Mask, advlued, AdvCombo, Lucombo, AdvQueryDialog;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    AdvEditBtn1: TAdvEditBtn;
    UnitAdvEditBtn1: TUnitAdvEditBtn;
    Label2: TLabel;
    Label3: TLabel;
    AdvFileNameEdit1: TAdvFileNameEdit;
    Label4: TLabel;
    AdvDirectoryEdit1: TAdvDirectoryEdit;
    Label5: TLabel;
    AdvEdit1: TAdvEdit;
    Label6: TLabel;
    AdvEdit2: TAdvEdit;
    AdvEdit3: TAdvEdit;
    Label7: TLabel;
    Label8: TLabel;
    AdvEdit4: TAdvEdit;
    Label9: TLabel;
    AdvMaskEdit1: TAdvMaskEdit;
    Label10: TLabel;
    AdvLUEdit1: TAdvLUEdit;
    Label11: TLabel;
    Label12: TLabel;
    LUCombo1: TLUCombo;
    Label13: TLabel;
    LUEdit1: TLUEdit;
    Label14: TLabel;
    AdvQueryDialog1: TAdvQueryDialog;
    Button1: TButton;
    Edit1: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    AdvEdit5: TAdvEdit;
    Label17: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if AdvQueryDialog1.ShowModal=mrOK then
    Edit1.Text := AdvQueryDialog1.Text;
end;

end.
