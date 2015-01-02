unit UAdvIPEditDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, Mask, AdvEdit,
  AdvIPEdit;

type
  TForm92 = class(TForm)
    AdvIPEdit1: TAdvIPEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form92: TForm92;

implementation

{$R *.dfm}

procedure TForm92.Button1Click(Sender: TObject);
begin
  MessageDlg('IP address: ' + AdvIPEdit1.IPAddress, mtInformation, [mbOK], 0);
end;

procedure TForm92.ComboBox1Change(Sender: TObject);
begin
  case (Sender as TComboBox).ItemIndex of
    0:
    begin
      AdvIPEdit1.IPAddressType := ipv4;
      AdvIPEdit1.IPAddress := '192.168.1.120';
      AdvIPEdit1.Width := 120;
      Button1.Left := 190;
      Width := 305;
    end;
    1:
    begin
      AdvIPEdit1.IPAddressType := ipv6;
      AdvIPEdit1.IPAddress := '0:0:0:0:ffff:c0a8:178a';
      AdvIPEdit1.Width := 300;
      Button1.Left := 370;
      Width := 485;
    end;
  end;
end;

end.
