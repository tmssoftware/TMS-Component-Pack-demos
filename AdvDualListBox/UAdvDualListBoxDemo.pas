unit UAdvDualListBoxDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, AdvGroupBox,
  AdvDualListBox, Menus;

type
  TForm92 = class(TForm)
    AdvDualListBox1: TAdvDualListBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    ListBox1: TListBox;
    PopupMenu1: TPopupMenu;
    Clear1: TMenuItem;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure AdvDualListBox1MoveLeftRight(Sender: TObject; Index: Integer;
      var Allow: Boolean);
    procedure Clear1Click(Sender: TObject);
    procedure AdvDualListBox1MoveLeftRightAll(Sender: TObject;
      var Allow: Boolean);
    procedure AdvDualListBox1MoveRightLeft(Sender: TObject; Index: Integer;
      var Allow: Boolean);
    procedure AdvDualListBox1MoveRightLeftAll(Sender: TObject;
      var Allow: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form92: TForm92;

implementation

{$R *.dfm}

procedure TForm92.AdvDualListBox1MoveLeftRight(Sender: TObject; Index: Integer;
  var Allow: Boolean);
begin
  ListBox1.Items.Add('MoveLeftRight: ' + AdvDualListBox1.ListLeft.Items[Index]);
end;

procedure TForm92.AdvDualListBox1MoveLeftRightAll(Sender: TObject;
  var Allow: Boolean);
begin
  ListBox1.Items.Add('MoveLeftRightAll triggered');
end;

procedure TForm92.AdvDualListBox1MoveRightLeft(Sender: TObject; Index: Integer;
  var Allow: Boolean);
begin
  ListBox1.Items.Add('MoveRightLeft: ' + AdvDualListBox1.ListRight.Items[Index]);
end;

procedure TForm92.AdvDualListBox1MoveRightLeftAll(Sender: TObject;
  var Allow: Boolean);
begin
  ListBox1.Items.Add('MoverRightLeftAll triggered');
end;

procedure TForm92.CheckBox1Click(Sender: TObject);
begin
  AdvDualListBox1.ListLeft.MultiSelect := CheckBox1.Checked;
  AdvDualListBox1.ListRight.MultiSelect := CheckBox1.Checked;
end;

procedure TForm92.CheckBox2Click(Sender: TObject);
begin
  if (Sender as TCheckBox).Checked then
    AdvDualListBox1.MoveOptions := AdvDualListBox1.MoveOptions + [moMoveWithKey]
  else
    AdvDualListBox1.MoveOptions := AdvDualListBox1.MoveOptions - [moMoveWithKey];
end;

procedure TForm92.CheckBox3Click(Sender: TObject);
begin
  AdvDualListBox1.ListLeft.Sorted := CheckBox3.Checked;
  AdvDualListBox1.ListRight.Sorted := CheckBox3.Checked;
end;

procedure TForm92.CheckBox4Click(Sender: TObject);
begin
  if (Sender as TCheckBox).Checked then
    AdvDualListBox1.Buttons.VisibleButtons := AdvDualListBox1.Buttons.VisibleButtons + [vbRightAll, vbLeftAll]
  else
    AdvDualListBox1.Buttons.VisibleButtons := AdvDualListBox1.Buttons.VisibleButtons - [vbRightAll, vbLeftAll];
end;

procedure TForm92.Clear1Click(Sender: TObject);
begin
  ListBox1.Items.Clear;
end;

procedure TForm92.FormCreate(Sender: TObject);
begin
  AdvDualListBox1.ListLeft.Items.Add('Rome');
  AdvDualListBox1.ListLeft.Items.Add('Paris');
  AdvDualListBox1.ListLeft.Items.Add('Berlin');
  AdvDualListBox1.ListLeft.Items.Add('Vienna');
  AdvDualListBox1.ListLeft.Items.Add('Brussels');
end;

end.
