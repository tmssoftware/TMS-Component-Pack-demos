unit UPlannerRangeSelector;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, AdvGraphicCheckLabel, AdvIPEdit, DateUtils,
  StdCtrls, Mask, AdvEdit, AdvMEdBtn, PlannerRangeSelector,
  ExtCtrls, PlannerCal, Menus;

type
  TForm92 = class(TForm)
    PlannerRangeSelector1: TPlannerRangeSelector;
    Button1: TButton;
    Label1: TLabel;
    ListBox1: TListBox;
    PopupMenu1: TPopupMenu;
    Clear1: TMenuItem;
    CheckBox1: TCheckBox;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure PlannerRangeSelector1RangeSelect(Sender: TObject; StartDate,
      EndDate: TDateTime);
    procedure PlannerRangeSelector1Change(Sender: TObject);
    procedure Clear1Click(Sender: TObject);
    procedure PlannerRangeSelector1Click(Sender: TObject);
    procedure PlannerRangeSelector1ClickBtn(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form92: TForm92;

implementation

{$R *.dfm}

procedure TForm92.Button1Click(Sender: TObject);
begin
  PlannerRangeSelector1.DateEnd := IncDay(PlannerRangeSelector1.DateStart, 5);
end;

procedure TForm92.CheckBox1Click(Sender: TObject);
begin
  PlannerRangeSelector1.HideCalendarAfterSelection := CheckBox1.Checked;
end;

procedure TForm92.Clear1Click(Sender: TObject);
begin
  ListBox1.Items.Clear;
end;

procedure TForm92.PlannerRangeSelector1Change(Sender: TObject);
begin
  ListBox1.Items.Add('Changed');
end;

procedure TForm92.PlannerRangeSelector1Click(Sender: TObject);
begin
  ListBox1.Items.Add('Clicked');
end;

procedure TForm92.PlannerRangeSelector1ClickBtn(Sender: TObject);
begin
  ListBox1.Items.Add('Button clicked');
end;

procedure TForm92.PlannerRangeSelector1RangeSelect(Sender: TObject; StartDate,
  EndDate: TDateTime);
var
  i:integer;
begin
  i := round(int(PlannerRangeSelector1.DateEnd) - int(PlannerRangeSelector1.DateStart));
  Label1.Caption := 'Selected timespan: ' + IntToStr(i + 1) + ' day(s)';
  ListBox1.Items.Add('Range selected:');
  ListBox1.Items.Add(DateToStr(PlannerRangeSelector1.DateStart) + ' - ' + DateToStr(PlannerRangeSelector1.DateEnd));
end;

end.
