unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MacroRecorder, StdCtrls, Grids, BaseGrid, AdvGrid, Menus,
  ComCtrls;

type
  TForm1 = class(TForm)
    MacroRecorder1: TMacroRecorder;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Edit2: TMenuItem;
    Vies1: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    Zoomin1: TMenuItem;
    Zoomout1: TMenuItem;
    GroupBox1: TGroupBox;
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Open1: TMenuItem;
    Save1: TMenuItem;
    Saveas1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    Button6: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Zoomout1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  form2.ShowModal;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  macrorecorder1.FileName := '.\sample.mac';
  macrorecorder1.RecordMacro;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  macrorecorder1.StopRecording;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  macrorecorder1.FileName := '.\sample.mac';
  macrorecorder1.PlayMacro;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  showmessage(inttostr(gettickcount));
end;

procedure TForm1.Zoomout1Click(Sender: TObject);
begin
  showmessage('hello world');
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

end.
