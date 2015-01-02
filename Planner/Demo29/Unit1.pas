unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Planner, GIFImg, ExtCtrls, pngimage;

type
  TForm1 = class(TForm)
    Planner1: TPlanner;
    Button1: TButton;
    PrinterSetupDialog1: TPrinterSetupDialog;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Planner1PrintHeader(Sender: TObject; ACanvas: TCanvas;
      DrawRect: TRect);
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

procedure TForm1.Button1Click(Sender: TObject);
begin
  if PrinterSetupDialog1.Execute then
    planner1.Print;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  with planner1.CreateItem do
  begin
    itembegin := 4;
    itemend := 8;
    text.Text := 'Auto created item';
  end;
end;

procedure TForm1.Planner1PrintHeader(Sender: TObject; ACanvas: TCanvas;
  DrawRect: TRect);
var
  sz: integer;
  txt: string;
  r: TRect;
begin
  r := DrawRect;
  r.Right := r.Left + Image1.Width * 3;
  ACanvas.StretchDraw(r,Image1.Picture.Graphic);
  txt := 'TMS Planner';
  sz := ACanvas.TextWidth(txt);
  ACanvas.Brush.Style := bsClear;
  ACanvas.TextOut(DrawRect.Right - sz, DrawRect.Top, txt);
end;

end.
