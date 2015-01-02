unit AdvCategoryMetroTest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, AdvMetroCategoryList, StdCtrls, Math,
  AdvPicturePane, PictureContainer;

type
  TForm96 = class(TForm)
    AdvMetroCategoryList2: TAdvMetroCategoryList;
    PictureContainer1: TPictureContainer;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    procedure FormCreate(Sender: TObject);
    procedure AdvMetroCategoryList1AnchorClick(Sender: TObject; Text: string);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form96: TForm96;

implementation

{$R *.dfm}

procedure TForm96.AdvMetroCategoryList1AnchorClick(Sender: TObject;
  Text: string);
begin
  if Sender is TCategory then
    ShowMessage('Category link: ' + Text)
  else if Sender is TCategoryItem then
    ShowMessage('Item Link: ' + Text)
  else
    ShowMessage('Unknown Link: ' + Text)
end;

procedure TForm96.Button10Click(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to AdvMetroCategoryList2.Categories[0].Items.Count - 1 do
  begin
    AdvMetroCategoryList2.Categories[0].Items[i].Checked := true;
  end;
end;

procedure TForm96.Button11Click(Sender: TObject);
begin
//  if AdvMetroCategoryList2.Categories[0].Col

  AdvMetroCategoryList2.Categories[0].CollapseExpand;
end;

procedure TForm96.Button12Click(Sender: TObject);
begin
  AdvMetroCategoryList2.SelectedCategoryIndex := 1;
  AdvMetroCategoryList2.SelectedItemIndex := 0;
end;

procedure TForm96.Button13Click(Sender: TObject);
var
  Item: TCategoryItem;
  Cat: TCategory;
  i,j: Integer;
begin
  AdvMetroCategoryList2.BeginUpdate;

  Cat := AdvMetroCategoryList2.Categories.Add;
  i := AdvMetroCategoryList2.Categories.Count;
  Cat.Text := 'New Category #' + inttostr(i);
  Cat.Hint := 'Hint for #' + inttostr(i);
  for j := 0 to 99 do
  begin
    Item := Cat.Items.Add;
    Item.Text := 'New Item #' + inttostr(j) + '/' + inttostr(i);
    Item.Hint := 'Hint for #' + inttostr(j) + '/' + inttostr(i);
  end;
  AdvMetroCategoryList2.EndUpdate;

  AdvMetroCategoryList2.TopCategoryIndex := AdvMetroCategoryList2.Categories.Count - 1;
  AdvMetroCategoryList2.TopItemIndex := 0;

end;

procedure TForm96.Button9Click(Sender: TObject);
var
  catitem: TCategoryItem;
begin
  if AdvMetroCategoryList2.Categories[0].Items.Count = 6 then
  begin
    catitem := AdvMetroCategoryList2.Categories[0].Items.Add;
    catitem.Text := '<b>TMS Advanced Charts</b><br>Chart components for Windows';
    (Sender as TButton).Enabled := false;
  end;
end;

procedure TForm96.FormCreate(Sender: TObject);
var
  i,j: integer;
  cat: TCategory;
begin
  ReportMemoryLeaksOnShutdown := True;
  AdvMetroCategoryList2.CategoryMinHeight := 22;
  for i := 0 to 10 do
  begin
    cat := AdvMetroCategoryList2.Categories.Add;
    cat.Text := 'Cat <b><a href="cat position test">' + inttostr(i)+'</a></b>';
    cat.Hint := 'Hint #' + inttostr(i);
    for j := 0 to 4 do
    begin
      cat.Items.Add.Text := 'item <a href="item position test">' + inttostr(j + i * 10) + '</a>';
      cat.Items[j].Hint := 'Hint #' + inttostr(j + i * 10);
    end;
  end;
end;


end.
