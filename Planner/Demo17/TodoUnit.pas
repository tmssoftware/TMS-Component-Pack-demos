unit TodoUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ComCtrls, EditBtn, DBPlannerDatePicker,
  ExtCtrls, AdvCombo, ImagePicker, PlannerDatePicker, HTMLText,
  PictureContainer, Shader, AdvProgr, AdvSpin;

type
  TTodoItemForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DueDate: TDateTimePicker;
    Label4: TLabel;
    ImagePicker: TImagePicker;
    Label6: TLabel;
    CBPriority: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    OKBtn: TButton;
    CancBtn: TButton;
    ColorDialog1: TColorDialog;
    EdSubject: TEdit;
    Notes: TMemo;
    CreateDate: TDateTimePicker;
    PictureContainer1: TPictureContainer;
    HTMLStaticText1: THTMLStaticText;
    CompBar: TAdvProgress;
    Label9: TLabel;
    CBStatus: TComboBox;
    CBComplete: TCheckBox;
    SpinComplete: TAdvSpinEdit;
    CompDate: TEdit;
    procedure FormShow(Sender: TObject);
    procedure SpinCompleteChange(Sender: TObject);
    procedure CBCompleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TodoItemForm: TTodoItemForm;

implementation

uses DM;

{$R *.DFM}

procedure TTodoItemForm.FormShow(Sender: TObject);
begin
  HTMLStaticText1.HTMLText.Clear;
  if (TodoItemForm.Tag = 0) then
  begin
    TodoItemForm.Caption := 'New todo item';
    HTMLStaticText1.HTMLText.Add('  <IMG src="calendar">   <FONT face="Verdana">New todo item</FONT>');
  end
  else
  begin
    TodoItemForm.Caption := 'Edit todo item';
    HTMLStaticText1.HTMLText.Add('  <IMG src="clock">   <FONT face="Verdana">Edit todo item</FONT>');
  end;
  if (DueDate.Date > 0) then
    if (Trunc(DueDate.Date - Date) < 0) then
    begin
      HTMLStaticText1.HTMLText.Clear;
      HTMLStaticText1.HTMLText.Add('  <IMG src="caution">   <FONT face="Verdana">' +
                                 'Overdue by ' + IntToStr(Abs(Trunc(DueDate.Date - Date))) + ' days</FONT>');
    end;
end;

procedure TTodoItemForm.SpinCompleteChange(Sender: TObject);
begin
  CompBar.Position := SpinComplete.Value;
end;

procedure TTodoItemForm.CBCompleteClick(Sender: TObject);
begin
  if CBComplete.Checked then
  begin
    // this triggers the OnChange of the SpinComplete comp
    SpinComplete.Value := 100;
    CompDate.Text := DateToStr(Date);
  end
  else
    CompDate.Text := '';
end;

end.
