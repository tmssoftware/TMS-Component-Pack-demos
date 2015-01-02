unit UDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, HTMLForm, ImgList, HTMLabel;

type
  TForm369 = class(TForm)
    HTMLForm1: THTMLForm;
    Memo1: TMemo;
    ImageList1: TImageList;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure HTMLForm1ControlComboList(Sender: TObject; CtrlID, CtrlType,
      CtrlVal: string; Values: TStringList; var Edit: Boolean;
      var DropCount: Integer);
    procedure HTMLForm1ControlEditDone(Sender: TObject; CtrlID, CtrlType,
      CtrlVal: string);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form369: TForm369;

implementation

{$R *.dfm}

procedure TForm369.Button1Click(Sender: TObject);
begin
  HTMLForm1.SetValue('CK1', 'true');
  HTMLForm1.SetValue('ED1', 'Bill');
  HTMLForm1.SetValue('ED2', 'Gates');
  HTMLForm1.SetValue('CO1', 'Thursday');
  HTMLForm1.SetValue('CO2', 'CASH');
  HTMLForm1.SetValue('RD1', 'true');
  HTMLForm1.SetValue('ED3', '10-12-2008');
end;

procedure TForm369.CheckBox1Click(Sender: TObject);
begin
  Memo1.ReadOnly := not CheckBox1.Checked;
end;

procedure TForm369.FormCreate(Sender: TObject);
begin
  HTMLForm1.HTMLText.Text := Memo1.Text;
end;

procedure TForm369.HTMLForm1ControlComboList(Sender: TObject; CtrlID, CtrlType,
  CtrlVal: string; Values: TStringList; var Edit: Boolean;
  var DropCount: Integer);
begin
  Values.Clear;
  if CtrlID = 'CO1' then
  begin
   Values.Add('Monday');
   Values.Add('Tuesday');
   Values.Add('Wednesday');
   Values.Add('Thursday');
   Values.Add('Friday');
   Values.Add('Saturday');
   Values.Add('Sunday');
   Edit := False; // combo dropdownlist
  end;

  if CtrlID = 'CO2' then
  begin
   Values.Add('VISA');
   Values.Add('AMEX');
   Values.Add('MASTERCARD');
   Values.Add('CASH');
   Values.Add('N/A');
   Edit := True; // combo dropdown edit
  end;
end;

procedure TForm369.HTMLForm1ControlEditDone(Sender: TObject; CtrlID, CtrlType,
  CtrlVal: string);
begin
  Memo1.Text := HTMLForm1.HTMLText.Text;
end;

procedure TForm369.Memo1Change(Sender: TObject);
begin
  HTMLForm1.HTMLText.Text := Memo1.Text;
end;

end.
