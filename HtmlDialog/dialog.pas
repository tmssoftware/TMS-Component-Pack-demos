unit dialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, HTMLDialog, StdCtrls, ShellAPI, winxp;

type
  TForm1 = class(TForm)
    HTMLDialog1: THTMLDialog;
    btnTry1: TButton;
    lblProvider: TLabel;
    HTMLDialog2: THTMLDialog;
    HTMLDialog3: THTMLDialog;
    label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnTry2: TButton;
    btnTry3: TButton;
    Label5: TLabel;
    Label6: TLabel;
    btnTry4: TButton;
    HTMLDialog4: THTMLDialog;
    Label7: TLabel;
    Label8: TLabel;
    procedure btnTry1Click(Sender: TObject);
    procedure btnTry2Click(Sender: TObject);
    procedure btnTry3Click(Sender: TObject);
    procedure btnTry4Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }


  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnTry1Click(Sender: TObject);
begin
  HTMLDialog1.ShowModal;
end;



procedure TForm1.btnTry2Click(Sender: TObject);
begin
  HTMLDialog2.ShowModal;
end;
       
procedure TForm1.btnTry3Click(Sender: TObject);
begin
  HTMLDialog3.ShowModal;
end;

procedure TForm1.btnTry4Click(Sender: TObject);
begin
  HTMLDialog4.ShowModal;
end;

procedure TForm1.Label8Click(Sender: TObject);
begin
  ShellExecute(0,'Open',PChar(Label8.Caption),nil,nil,SW_NORMAL);
end;

end.
