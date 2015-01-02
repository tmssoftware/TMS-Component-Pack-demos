unit UAdvWordCategoryCloudDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, ImgList, AdvWordCloud, StdCtrls,
  ExtCtrls, Menus;

type
  TForm92 = class(TForm)
    ImageList1: TImageList;
    AdvWordCategoryCloud1: TAdvWordCategoryCloud;
    CheckBox1: TCheckBox;
    RadioGroup1: TRadioGroup;
    ListBox1: TListBox;
    Label1: TLabel;
    PopupMenu1: TPopupMenu;
    Clear1: TMenuItem;
    AdvWordCloud1: TAdvWordCloud;
    ComboBox1: TComboBox;
    ImageList2: TImageList;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Clear1Click(Sender: TObject);
    procedure AdvWordCategoryCloud1WordClick(Sender: TObject; CategoryIndex,
      WordIndex: Integer);
    procedure AdvWordCategoryCloud1WordSelect(Sender: TObject; CategoryIndex,
      WordIndex: Integer);
    procedure AdvWordCategoryCloud1WordUnSelect(Sender: TObject; CategoryIndex,
      WordIndex: Integer);
    procedure ComboBox1Select(Sender: TObject);
    procedure AdvWordCloud1WordUnSelect(Sender: TObject; Index: Integer);
    procedure AdvWordCloud1WordSelect(Sender: TObject; Index: Integer);
    procedure AdvWordCloud1WordClick(Sender: TObject; Index: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form92: TForm92;

implementation

{$R *.dfm}

procedure TForm92.AdvWordCategoryCloud1WordClick(Sender: TObject; CategoryIndex,
  WordIndex: Integer);
begin
  if((CategoryIndex > -1) and (WordIndex > -1)) then
    ListBox1.Items.Add('Clicked Word: ' + AdvWordCategoryCloud1.Categories[CategoryIndex].Words[WordIndex].DisplayText);
end;

procedure TForm92.AdvWordCategoryCloud1WordSelect(Sender: TObject;
  CategoryIndex, WordIndex: Integer);
begin
  if((CategoryIndex > -1) and (WordIndex > -1)) then
    ListBox1.Items.Add('Selected Word: ' + AdvWordCategoryCloud1.Categories[CategoryIndex].Words[WordIndex].DisplayText);
end;

procedure TForm92.AdvWordCategoryCloud1WordUnSelect(Sender: TObject;
  CategoryIndex, WordIndex: Integer);
begin
  if((CategoryIndex > -1) and (WordIndex > -1)) then
    ListBox1.Items.Add('Unselected Word: ' + AdvWordCategoryCloud1.Categories[CategoryIndex].Words[WordIndex].DisplayText);
end;

procedure TForm92.AdvWordCloud1WordClick(Sender: TObject; Index: Integer);
begin
  if Index > -1 then
    ListBox1.Items.Add('Clicked Word: ' + AdvWordCloud1.Words[Index].DisplayText);
end;

procedure TForm92.AdvWordCloud1WordSelect(Sender: TObject; Index: Integer);
begin
  if Index > -1 then
    ListBox1.Items.Add('Selected Word: ' + AdvWordCloud1.Words[Index].DisplayText);
end;

procedure TForm92.AdvWordCloud1WordUnSelect(Sender: TObject; Index: Integer);
begin
  if Index > -1 then
    ListBox1.Items.Add('Unselected Word: ' + AdvWordCloud1.Words[Index].DisplayText);
end;

procedure TForm92.CheckBox1Click(Sender: TObject);
begin
  if (Sender as TCheckBox).Checked then
    AdvWordCategoryCloud1.CategorySelection := csHover
  else
    AdvWordCategoryCloud1.CategorySelection := csClick;
end;

procedure TForm92.Clear1Click(Sender: TObject);
begin
  ListBox1.Items.Clear;
end;

procedure TForm92.ComboBox1Select(Sender: TObject);
begin
  case (Sender as TComboBox).ItemIndex of
    0:
    begin
      AdvWordCategoryCloud1.Show;
      CheckBox1.Show;
      AdvWordCloud1.Hide;
    end;
    1:
    begin
      AdvWordCategoryCloud1.Hide;
      CheckBox1.Hide;
      AdvWordCloud1.Show;
    end;
  end;
  ListBox1.Items.Clear;
end;

procedure TForm92.FormCreate(Sender: TObject);
var
  cat : TWordCategory;
begin
  //Remove the initial Category
  AdvWordCategoryCloud1.Categories.Delete(0);
  cat := AdvWordCategoryCloud1.Categories.Add;
  cat.Category := 'Cities';

  cat.Words.AddPair('Paris', 'Paris', Random(4));
  cat.Words.AddPair('Berlin', 'Berlin', Random(4));
  cat.Words.AddPair('Brussels', 'Brussels', Random(4));
  cat.Words.AddPair('Madrid', 'Madrid', Random(4));
  cat.Words.AddPair('Frankfurt', 'Frankfurt', Random(4));
  cat.Words.AddPair('Amsterdam', 'Amsterdam', Random(4));
  cat.Words.AddPair('Antwerp', 'Antwerp', Random(4));
  cat.Words.AddPair('Vienna', 'Vienna', Random(4));

  cat := AdvWordCategoryCloud1.Categories.Add;
  cat.Category := 'Countries';

  cat.Words.AddPair('France', 'France', Random(4));
  cat.Words.AddPair('Germany', 'Germany', Random(4));
  cat.Words.AddPair('Belgium', 'Belgium', Random(4));
  cat.Words.AddPair('Spain', 'Spain', Random(4));
  cat.Words.AddPair('Austria', 'Austria', Random(4));
  cat.Words.AddPair('Netherlands', 'Netherlands', Random(4));

  //Fill up the TAdvWordcloud
  AdvWordCloud1.Words.AddPair('Paris', 'Paris', Random(4));
  AdvWordCloud1.Words.AddPair('Berlin', 'Berlin', Random(4));
  AdvWordCloud1.Words.AddPair('Brussels', 'Brussels', Random(4));
  AdvWordCloud1.Words.AddPair('Madrid', 'Madrid', Random(4));
  AdvWordCloud1.Words.AddPair('Frankfurt', 'Frankfurt', Random(4));
  AdvWordCloud1.Words.AddPair('Amsterdam', 'Amsterdam', Random(4));
  AdvWordCloud1.Words.AddPair('Antwerp', 'Antwerp', Random(4));
  AdvWordCloud1.Words.AddPair('Vienna', 'Vienna', Random(4));
end;

procedure TForm92.RadioGroup1Click(Sender: TObject);
begin
  case (Sender as TRadioGroup).ItemIndex of
    0:
    begin
      AdvWordCategoryCloud1.Selection := wsNone;
      AdvWordCloud1.Selection := wsNone;
    end;
    1:
    begin
      AdvWordCategoryCloud1.Selection := wsSingle;
      AdvWordCloud1.Selection := wsSingle;
    end;
    2:
    begin
      AdvWordCategoryCloud1.Selection := wsMulti;
      AdvWordCloud1.Selection := wsMulti;
    end;
  end;
end;

end.
