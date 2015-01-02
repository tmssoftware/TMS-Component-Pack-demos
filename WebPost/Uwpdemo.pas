{*************************************************************************}
{ TWebImage demo application                                              }
{ version 1.0                                                             }
{ for Delphi 4.0,5.0,6.0,7.0 & C++Builder 4.0,5.0,6.0                     }
{                                                                         }
{ written by TMS Software                                                 }
{           copyright © 2001 - 2004                                       }
{           Email : info@tmssoftware.com                                  }
{           Web : http://www.tmssoftware.com                              }
{*************************************************************************}

unit Uwpdemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  WebPost, StdCtrls, ShellApi;

type
  TForm1 = class(TForm)
    WebPost1: TWebPost;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    ComboBox3: TComboBox;
    Label4: TLabel;
    Button1: TButton;
    Label5: TLabel;
    ComboBox4: TComboBox;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
 combobox1.itemindex:=0;
 combobox2.itemindex:=0;
 combobox3.itemindex:=0;
 combobox4.itemindex:=0;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
 wpi:twebpostitem;


begin
 webpost1.items.Clear;

 with webpost1.items do
  begin
   wpi:=add;
   wpi.name:='DEVTOOL';
   wpi.value:=combobox1.Text;
   wpi:=add;
   wpi.name:='OS';
   wpi.value:=combobox2.Text;
   wpi:=add;
   wpi.name:='BROWSER';
   wpi.value:=combobox3.Text;
   wpi:=add;
   wpi.name:='CPU';
   wpi.value:=combobox4.Text;
   wpi:=add;
   wpi.name:='FREQ';
   wpi.value:=edit1.Text;
   wpi:=add;
   wpi.name:='COMMENT';
   wpi.value:=edit2.Text;
  end;

 if webpost1.execute then
  begin
   webpost1.savetofile('results.htm');
   shellexecute(self.handle,'open','results.htm',nil,nil,SW_NORMAL);
  end;



end;

end.
