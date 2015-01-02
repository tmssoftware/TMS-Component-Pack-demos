unit Uabout;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ShellApi,
  StdCtrls, ExtCtrls, GIFImg;

type
  TAbout = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Image1: TImage;
    procedure Label4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  About: TAbout;

implementation

{$R *.DFM}

procedure TAbout.Label4Click(Sender: TObject);
begin
  ShellExecute(0,'open',pchar((Sender as TLabel).Caption),nil,nil,SW_NORMAL);
end;

procedure TAbout.Button1Click(Sender: TObject);
begin
  Close;
end;

end.
