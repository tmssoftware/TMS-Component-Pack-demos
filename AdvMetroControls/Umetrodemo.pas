unit Umetrodemo;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvMetroForm, ImgList, AdvAppStyler,
  AdvReplaceDialogForm, AdvMetroReplaceDialog, AdvFindDialogForm,
  AdvMetroFindDialog, ExtCtrls, AdvMetroTaskDialog, AdvMetroHint, AdvMetroTile,
  AdvMetroButton, AdvMetroProgressBar, StdCtrls;

type
  TTMSForm1 = class(TAdvMetroForm)
    AdvMetroHint1: TAdvMetroHint;
    AdvMetroTaskDialog1: TAdvMetroTaskDialog;
    AdvInputMetroTaskDialog1: TAdvInputMetroTaskDialog;
    Timer1: TTimer;
    AdvMetroFindDialog1: TAdvMetroFindDialog;
    AdvMetroReplaceDialog1: TAdvMetroReplaceDialog;
    AdvFormStyler1: TAdvFormStyler;
    ImageList1: TImageList;
    Shape7: TShape;
    Label9: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Label1: TLabel;
    AdvMetroButton2: TAdvMetroButton;
    Label2: TLabel;
    AdvMetroButton3: TAdvMetroButton;
    Label3: TLabel;
    AdvMetroButton4: TAdvMetroButton;
    Label4: TLabel;
    AdvMetroButton5: TAdvMetroButton;
    Label5: TLabel;
    AdvMetroButton10: TAdvMetroButton;
    Label7: TLabel;
    Edit1: TEdit;
    AdvMetroTile2: TAdvMetroTile;
    AdvMetroTile4: TAdvMetroTile;
    AdvMetroTile3: TAdvMetroTile;
    AdvMetroTile5: TAdvMetroTile;
    AdvMetroButton8: TAdvMetroButton;
    AdvMetroButton9: TAdvMetroButton;
    AdvMetroButton6: TAdvMetroButton;
    AdvMetroButton7: TAdvMetroButton;
    Shape8: TShape;
    Label10: TLabel;
    Shape9: TShape;
    Label11: TLabel;
    Shape1: TShape;
    Shape4: TShape;
    Shape2: TShape;
    Shape5: TShape;
    Shape3: TShape;
    Shape6: TShape;
    Label6: TLabel;
    AdvMetroProgressBar1: TAdvMetroProgressBar;
    AdvMetroButton11: TAdvMetroButton;
    procedure AdvMetroFormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure AdvFormStyler1ApplyColorTones(Sender: TObject;
      AComponent: TComponent; var Allow: Boolean);
    procedure AdvFormStyler1ApplyStyle(Sender: TObject; AComponent: TComponent;
      var Allow: Boolean);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvMetroButton2Click(Sender: TObject);
    procedure AdvMetroButton3Click(Sender: TObject);
    procedure AdvMetroButton4Click(Sender: TObject);
    procedure AdvMetroButton5Click(Sender: TObject);
    procedure Shape1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AdvMetroButton10Click(Sender: TObject);
    procedure AdvFormStyler1AppliedColorTones(Sender: TObject;
      AComponent: TComponent);
    procedure AdvMetroButton11Click(Sender: TObject);
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  end;

var
  TMSForm1: TTMSForm1;

implementation

{$R *.dfm}


procedure TTMSForm1.AdvFormStyler1AppliedColorTones(Sender: TObject;
  AComponent: TComponent);
begin
  shape7.brush.Color := AdvFormStyler1.MetroColor;
  shape7.pen.Color := AdvFormStyler1.MetroColor;
  shape8.brush.Color := AdvFormStyler1.MetroColor;
  shape8.pen.Color := AdvFormStyler1.MetroColor;
  shape9.brush.Color := AdvFormStyler1.MetroColor;
  shape9.Pen.Color := AdvFormStyler1.MetroColor;
end;

procedure TTMSForm1.AdvFormStyler1ApplyColorTones(Sender: TObject;
  AComponent: TComponent; var Allow: Boolean);
begin
  Allow := AComponent.Tag = 0;
end;

procedure TTMSForm1.AdvFormStyler1ApplyStyle(Sender: TObject;
  AComponent: TComponent; var Allow: Boolean);
begin
  Allow := AComponent.Tag = 0;
end;

procedure TTMSForm1.AdvMetroButton10Click(Sender: TObject);
begin
  AdvInputMetroTaskDialog1.Title := 'TMS Metro Style';
  AdvInputMetroTaskDialog1.Instruction := 'This is a TMS Metro style input task dialog';
  AdvInputMetroTaskDialog1.Content := 'Enter a value';
  AdvInputMetroTaskDialog1.InputText := Edit1.Text;
  if AdvInputMetroTaskDialog1.Execute = mrOK then
    Edit1.Text := AdvInputMetroTaskDialog1.InputText;
end;

procedure TTMSForm1.AdvMetroButton11Click(Sender: TObject);
begin
  Close;
end;

procedure TTMSForm1.AdvMetroButton1Click(Sender: TObject);
begin
  MetroTaskShowMessage('TMS Metro style','Metro ShowMessage call',tiInformation);
end;

procedure TTMSForm1.AdvMetroButton2Click(Sender: TObject);
begin
  MetroTaskMessageDlg('TMS Metro style','Choose the Metro style with TMS Metro Controls',mtConfirmation,[mbYes,mbNo],0)
end;

procedure TTMSForm1.AdvMetroButton3Click(Sender: TObject);
begin
  AdvMetroTaskDialog1.Title := 'TMS Metro Style';
  AdvMetroTaskDialog1.Instruction := 'This is a TMS Metro style task dialog';
  AdvMetroTaskDialog1.Content := 'Content of the message goes here';
  AdvMetroTaskDialog1.ExpandedText := 'Additional information that is displayed conditionally when expand is pressed';
  AdvMetroTaskDialog1.CommonButtons := [cbCancel, cbRetry];
  AdvMetroTaskDialog1.Execute;
end;

procedure TTMSForm1.AdvMetroButton4Click(Sender: TObject);
begin
  AdvMetroFindDialog1.Execute;
end;

procedure TTMSForm1.AdvMetroButton5Click(Sender: TObject);
begin
  AdvMetroReplaceDialog1.Execute;
end;

procedure TTMSForm1.AdvMetroFormCreate(Sender: TObject);
begin
  AdvFormStyler1.Enabled := true;
  Timer1.Enabled := true;
  AdvFormStyler1.MetroColor := Shape2.Brush.Color;
end;

procedure TTMSForm1.Shape1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  AdvFormStyler1.MetroColor := (Sender as TShape).Brush.Color;
end;

procedure TTMSForm1.Timer1Timer(Sender: TObject);
begin
  AdvMetroProgressBar1.Position :=  AdvMetroProgressBar1.Position + 1;
  if   AdvMetroProgressBar1.Position > 100 then
    AdvMetroProgressBar1.Position  :=0;
end;

end.
