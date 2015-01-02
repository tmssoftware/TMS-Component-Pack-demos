unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvSmoothMenu, jpeg, ExtCtrls, AdvSmoothLabel, AdvSmoothButton,
  StdCtrls, AdvSmoothListBox;

type
  TForm76 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    AdvSmoothMenu1: TAdvSmoothMenu;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form76: TForm76;

implementation

{$R *.dfm}

procedure TForm76.FormCreate(Sender: TObject);
begin
  DoubleBuffered := true;
end;

end.
