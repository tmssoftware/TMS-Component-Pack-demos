unit UAdvCheckTreeViewDemo;

interface

uses
  Windows, Messages, SysUtils, Variants,
  Classes, Graphics, Math,
  Controls, Forms, Dialogs, ComCtrls, AdvCheckTreeView,
  ImgList, StdCtrls;

type
  TForm92 = class(TForm)
    AdvCheckTreeView1: TAdvCheckTreeView;
    ImageList1: TImageList;
    Button1: TButton;
    CheckBox1: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure AdvCheckTreeView1NodeCheckedChanged(Sender: TObject;
      Node: TTreeNode; NewState: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure AdvCheckTreeView1DblClick(Sender: TObject);
  private
    procedure AddImageToChildren(Node: TTreeNode);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form92: TForm92;

implementation

{$R *.dfm}

procedure TForm92.AdvCheckTreeView1DblClick(Sender: TObject);
var
  p: TPoint;
  t: TTreeNode;
begin
  p := Mouse.CursorPos;
  p := AdvCheckTreeView1.ScreenToClient(p);
  t := AdvCheckTreeView1.GetNodeAt(p.X, p.Y);
  if Assigned(t) then
    AdvCheckTreeView1NodeCheckedChanged(nil, t, AdvCheckTreeView1.Checked[t]);
end;

procedure TForm92.AdvCheckTreeView1NodeCheckedChanged(Sender: TObject;
  Node: TTreeNode; NewState: Boolean);
var
  I: Integer;
begin
  if CheckBox1.Checked and Node.HasChildren then
  begin
    for I := 0 to Node.Count - 1 do
    begin
      AdvCheckTreeView1.Checked[Node[I]] := AdvCheckTreeView1.Checked[Node];
      if Node[I].HasChildren then
        AdvCheckTreeView1NodeCheckedChanged(nil, Node[I], NewState);
    end;
  end;
end;

procedure TForm92.Button1Click(Sender: TObject);
var
  Node : TTreeNode;
begin
  Node := AdvCheckTreeView1.Items.Add(nil, 'France');

  AdvCheckTreeView1.Items.AddChild(Node, 'Calais');
  AdvCheckTreeView1.Items.AddChild(Node, 'Nice');
  AdvCheckTreeView1.Items.AddChild(Node, 'Paris');
  AdvCheckTreeView1.Items.AddChild(Node, 'Rouen');

  AddImageToChildren(Node);
  Button1.Enabled := false;
end;

procedure TForm92.AddImageToChildren(Node: TTreeNode);
var
  I: Integer;
begin
  for I := 0 to Node.Count - 1 do
  begin
    Node[I].ImageIndex := RandomRange(1, 5);
  end;
  Node.Expand(true);
end;

procedure TForm92.FormCreate(Sender: TObject);
var
  Node: TTreeNode;
begin
  Node := AdvCheckTreeView1.Items.Add(nil, 'Belgium');
  Node.ImageIndex := 0;

  AdvCheckTreeView1.Items.AddChild(Node, 'Antwerp');
  AdvCheckTreeView1.Items.AddChild(Node, 'Brussels');
  AdvCheckTreeView1.Items.AddChild(Node, 'Charleroi');

  AddImageToChildren(Node);

  Node := AdvCheckTreeView1.Items.Add(nil, 'Germany');
  Node.ImageIndex := 0;

  AdvCheckTreeView1.Items.AddChild(Node, 'Bonn');
  //add 'Berlin' to the top of the list and add 2 children
  Node := AdvCheckTreeView1.Items.AddChildFirst(Node, 'Berlin');
  AdvCheckTreeView1.Items.AddChild(Node, 'Brandenburger Tor');
  AdvCheckTreeView1.Items.AddChildFirst(Node, 'Bahnhof');
  AddImageToChildren(Node);
  Node := Node.Parent;
  AdvCheckTreeView1.Items.AddChild(Node, 'Frankfurt');
  AdvCheckTreeView1.Items.AddChild(Node, 'Leipzig');
  AdvCheckTreeView1.Items.AddChild(Node, 'Stuttgart');

  AddImageToChildren(Node);
end;

end.