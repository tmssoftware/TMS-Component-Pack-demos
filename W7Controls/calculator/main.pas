unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, W7Classes, W7Buttons, Menus, ExtCtrls, StdCtrls, W7Panels;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Panel1: TPanel;
    View1: TMenuItem;
    Edit1: TMenuItem;
    Help1: TMenuItem;
    W7SpeedButton1: TW7SpeedButton;
    W7SpeedButton2: TW7SpeedButton;
    W7SpeedButton3: TW7SpeedButton;
    W7SpeedButton4: TW7SpeedButton;
    W7SpeedButton5: TW7SpeedButton;
    W7SpeedButton6: TW7SpeedButton;
    W7SpeedButton7: TW7SpeedButton;
    W7SpeedButton8: TW7SpeedButton;
    W7SpeedButton9: TW7SpeedButton;
    W7SpeedButton10: TW7SpeedButton;
    W7SpeedButton21: TW7SpeedButton;
    W7SpeedButton22: TW7SpeedButton;
    W7SpeedButton23: TW7SpeedButton;
    W7SpeedButton24: TW7SpeedButton;
    W7SpeedButton25: TW7SpeedButton;
    W7SpeedButton26: TW7SpeedButton;
    W7SpeedButton27: TW7SpeedButton;
    W7SpeedButton28: TW7SpeedButton;
    W7SpeedButton29: TW7SpeedButton;
    W7SpeedButton30: TW7SpeedButton;
    W7SpeedButton31: TW7SpeedButton;
    W7SpeedButton32: TW7SpeedButton;
    W7SpeedButton33: TW7SpeedButton;
    W7SpeedButton34: TW7SpeedButton;
    W7SpeedButton35: TW7SpeedButton;
    W7SpeedButton36: TW7SpeedButton;
    W7SpeedButton38: TW7SpeedButton;
    W7SpeedButton39: TW7SpeedButton;
    W7Panel1: TW7Panel;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  DoubleBuffered := True;
  Panel1.DoubleBuffered := True;
end;

end.
