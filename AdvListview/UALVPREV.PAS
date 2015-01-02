unit ualvprev;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, advlistv;

type
  TPreview = class(TForm)
    PaintBox1: TPaintBox;
    procedure PaintBox1Paint(Sender: TObject);
  private
    listv:tadvlistview;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent; AListv:TAdvListview);
    { Public declarations }
  end;

var
  Preview: TPreview;

implementation

{$R *.DFM}

constructor TPreview.Create(aOwner:tcomponent;aListv:TAdvListview);
begin
 inherited create(aOwner);
 listv:=alistv;
end;

procedure TPreview.PaintBox1Paint(Sender: TObject);
begin
 listv.preview(paintbox1.canvas,clientrect);
end;

end.
