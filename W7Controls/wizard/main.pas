unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, W7Classes, ExtCtrls, W7Buttons, ComCtrls, StdCtrls, W7Panels,
  W7Labels, ShellApi;

const
  STEPS_COUNT = 4;

type
  TForm5 = class(TForm)
    W7LeftPanel1: TW7LeftPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    CancelButton: TButton;
    NextButton: TButton;
    BackButton: TButton;
    MainBody: TPanel;
    W7CaptionPanel1: TW7CaptionPanel;
    CaptLabel: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Step1: TPanel;
    Step2: TPanel;
    Step3: TPanel;
    Step4: TPanel;
    StepButton1: TW7ToolButton;
    StepButton2: TW7ToolButton;
    StepButton3: TW7ToolButton;
    StepButton4: TW7ToolButton;
    Image1: TImage;
    Memo1: TMemo;
    Label1: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    SaveDialog1: TSaveDialog;
    Memo2: TMemo;
    W7ActiveLabel1: TW7ActiveLabel;
    W7ActiveLabel2: TW7ActiveLabel;
    procedure FormCreate(Sender: TObject);
    procedure StepButton1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StepButton1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure NextButtonMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure NextButtonKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CancelButtonMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CancelButtonKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BackButtonKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BackButtonMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure W7ActiveLabel1Click(Sender: TObject);
    procedure W7ActiveLabel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    CurrentStep: integer;
    EditPolicy: boolean;
    EditIndex: integer;
    procedure OpenURL(URL: string);
    procedure OpenStep(Step: integer);
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.OpenURL(URL: string);
begin
  ShellExecute(Handle, PChar('open'), PChar(URL), nil, nil, SW_NORMAL);
end;

procedure TForm5.StepButton1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    StepButton1MouseUp(Sender, mbLeft, [], 1, 1);
end;

procedure TForm5.StepButton1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
    OpenStep(StrToInt(TW7ToolButton(Sender).Name[Length(TW7ToolButton(Sender).Name)]));
end;

procedure TForm5.W7ActiveLabel1Click(Sender: TObject);
begin
  OpenURL('http://www.tmssoftware.com/');
end;

procedure TForm5.W7ActiveLabel2Click(Sender: TObject);
begin
  OpenURL('http://www.tmssoftware.com/site/w7controls.asp');
end;

procedure TForm5.BackButtonKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    BackButtonMouseUp(Sender, mbLeft, [], 1, 1);
end;

procedure TForm5.BackButtonMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
    OpenStep(CurrentStep - 1);
end;

procedure TForm5.Button1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    Button1MouseUp(Sender, mbLeft, [], 0, 0);
end;

procedure TForm5.Button1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
    if SaveDialog1.Execute then
      Edit1.Text := SaveDialog1.FileName;

end;

procedure TForm5.CancelButtonKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    CancelButtonMouseUp(Sender, mbLeft, [], 1, 1);
end;

procedure TForm5.CancelButtonMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
    Application.Terminate
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
  CurrentStep := 1;
  OpenStep(1);
end;

procedure TForm5.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
    ShowMessage('Hello world!');
end;

procedure TForm5.NextButtonKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    NextButtonMouseUp(Sender, mbLeft, [], 0, 0);
end;

procedure TForm5.NextButtonMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
    if CurrentStep = STEPS_COUNT then
      Application.Terminate
    else
      OpenStep(CurrentStep + 1);
end;

procedure TForm5.OpenStep(Step: integer);
begin
  TPanel(FindComponent('Step' + IntToStr(CurrentStep))).Visible := False;
  TW7ToolButton(FindComponent('StepButton' + IntToStr(CurrentStep))).Font.Style := TW7ToolButton(FindComponent('StepButton' + IntToStr(CurrentStep))).Font.Style - [fsBold];
  TPanel(FindComponent('Step' + IntToStr(Step))).Visible := True;
  TPanel(FindComponent('Step' + IntToStr(Step))).Parent := MainBody;
  TPanel(FindComponent('Step' + IntToStr(Step))).BringToFront;
  CaptLabel.Caption := IntToStr(Step) + '. ' + TW7ToolButton(FindComponent('StepButton' + IntToStr(Step))).Caption;
  TW7ToolButton(FindComponent('StepButton' + IntToStr(Step))).Font.Style := TW7ToolButton(FindComponent('StepButton' + IntToStr(Step))).Font.Style + [fsBold];
  CurrentStep := Step;
  if Step <= 1 then
    BackButton.Enabled := False
  else
    BackButton.Enabled := True;

  if Step >= STEPS_COUNT then
    NextButton.Caption := 'Finish'
  else
    NextButton.Caption := 'Next >';
end;


end.
