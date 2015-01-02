unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvPageControl, ComCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    AdvPageControl1: TAdvPageControl;
    AdvTabSheet1: TAdvTabSheet;
    AdvTabSheet2: TAdvTabSheet;
    AdvTabSheet3: TAdvTabSheet;
    AdvTabSheet4: TAdvTabSheet;
    Edit1: TEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    AdvPageControl2: TAdvPageControl;
    AdvTabSheet5: TAdvTabSheet;
    AdvTabSheet6: TAdvTabSheet;
    AdvTabSheet7: TAdvTabSheet;
    Label1: TLabel;
    RadioButton4: TRadioButton;
    Memo1: TMemo;
    Button2: TButton;
    Label2: TLabel;
    procedure AdvPageControl1DragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure AdvPageControl1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AdvPageControl1DragDrop(Sender, Source: TObject; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AdvPageControl1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TAdvPageControl) and ((Source as TAdvPageControl).PageCount > 1);
end;

procedure TForm1.AdvPageControl1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TAdvPageControl(Sender).BeginDrag(false, 5);
end;

procedure TForm1.AdvPageControl1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  i: Integer;
begin
  if (Sender = Source) then
  begin
    i := TAdvPageControl(Sender).IndexOfTabAt(X, Y);
    if (i>= 0) and (i < TAdvPageControl(Sender).PageCount) then
      TAdvPageControl(Sender).ActivePage.PageIndex := i;
  end
  else if (Source is TAdvPageControl) then
  begin
    TAdvPageControl(Source).ActivePage.AdvPageControl := TAdvPageControl(Sender);
  end;
end;

end.
