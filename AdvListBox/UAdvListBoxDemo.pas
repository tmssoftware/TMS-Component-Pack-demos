unit UAdvListBoxDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvListBox, ExtCtrls, ImgList, Buttons;

type
  TForm6 = class(TForm)
    AdvListBox1: TAdvListBox;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    Label1: TLabel;
    Edit1: TEdit;
    ImageList1: TImageList;
    CheckBox9: TCheckBox;
    SpeedButton1: TSpeedButton;
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure AdvListBox1InsertItem(Sender: TObject; Item: TListBoxItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.AdvListBox1InsertItem(Sender: TObject; Item: TListBoxItem);
begin
  Item.ImageIndex := Random(3);
end;

procedure TForm6.CheckBox1Click(Sender: TObject);
begin
  AdvListbox1.SearchOptions.Visible := CheckBox1.Checked;
end;

procedure TForm6.CheckBox2Click(Sender: TObject);
begin
  AdvListBox1.InsertOptions.Visible := CheckBox2.Checked;
end;

procedure TForm6.CheckBox3Click(Sender: TObject);
begin
  AdvListBox1.SearchOptions.AutoFind := CheckBox3.Checked;
end;

procedure TForm6.CheckBox4Click(Sender: TObject);
begin
  AdvListBox1.InsertOptions.AutoInsert := CheckBox4.Checked;
end;

procedure TForm6.CheckBox6Click(Sender: TObject);
begin
  AdvListBox1.SearchOptions.CaseSensitive := CheckBox6.Checked;
end;

procedure TForm6.CheckBox7Click(Sender: TObject);
begin
  AdvListbox1.SearchOptions.ShowClose := CheckBox7.Checked;
end;

procedure TForm6.CheckBox8Click(Sender: TObject);
begin
  AdvListBox1.InsertOptions.ShowClose := CheckBox8.Checked;
end;

procedure TForm6.CheckBox9Click(Sender: TObject);
begin
  if CheckBox9.Checked then
    AdvListBox1.Style := stCheckList
  else
    AdvListBox1.Style := stList;
end;

procedure TForm6.FormCreate(Sender: TObject);
var
  sl: TStringList;
  i: integer;
  li: TListBoxItem;
begin
  sl := TStringList.Create;
  try
    sl.LoadFromFile('countries.txt');

    AdvListBox1.Items.BeginUpdate;
    try
    for i := 0 to sl.Count - 1 do
    begin
      li := AdvListBox1.Items.Add;
      li.Text := sl.Strings[i];
      li.ImageIndex := Random(5);
      li.Checked := Random(10) > 5;
    end;
    finally
      AdvListBox1.Items.EndUpdate;
    end;
  finally
    sl.Free;
  end;
end;

procedure TForm6.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
  0: AdvListBox1.SearchOptions.Style := ssGoto;
  1: AdvListBox1.SearchOptions.Style := ssHighlight;
  2: AdvListBox1.SearchOptions.Style := ssFilter;
  end;
end;

procedure TForm6.RadioGroup2Click(Sender: TObject);
begin
  case RadioGroup2.ItemIndex of
  0: AdvListBox1.SearchOptions.FilterMethod := fmStartsWith;
  1: AdvListBox1.SearchOptions.FilterMethod := fmContains;
  2: AdvListBox1.SearchOptions.FilterMethod := fmEndsWith;
  3: AdvListBox1.SearchOptions.FilterMethod := fmEqual;
  4: AdvListBox1.SearchOptions.FilterMethod := fmNotEqual;
  end;
end;

procedure TForm6.SpeedButton1Click(Sender: TObject);
begin
  if Edit1.Text<> '' then
  begin
    AdvListBox1.FilterCondition := '*' + Edit1.Text + '*';
    AdvListBox1.FilterActive := false;
    AdvListBox1.FilterActive := true;
  end
  else
    AdvListBox1.FilterActive := false;
end;

end.
