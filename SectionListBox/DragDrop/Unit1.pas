unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, slstbox;

type
  TForm1 = class(TForm)
    SectionListBox1: TSectionListBox;
    Label1: TLabel;
    procedure SectionListBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SectionListBox1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure SectionListBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    dragsection, dragitem: integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  sectionlistbox1.ExpandAll;
end;

procedure TForm1.SectionListBox1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  sectionidx,subitemidx: integer;
begin
  sectionlistbox1.GetItemAtXY(x,y,sectionidx,subitemidx);

  if (sectionidx > 0) and (subitemidx >= 0) then
  begin
    sectionlistbox1.Sections[sectionidx].SubItems.Move(dragitem,subitemidx);
  end;
end;

procedure TForm1.SectionListBox1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
var
  sectionidx,subitemidx: integer;
begin
  sectionlistbox1.GetItemAtXY(x,y,sectionidx,subitemidx);

  Accept := sectionidx = dragsection;
end;

procedure TForm1.SectionListBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  sectionidx,subitemidx: integer;
begin
  sectionlistbox1.GetItemAtXY(x,y,sectionidx,subitemidx);

  if subitemidx >= 0 then
  begin
    dragsection := sectionidx;
    dragitem := subitemidx;
    Sectionlistbox1.BeginDrag(false,4);
  end;
end;

end.
