{********************************************************************}
{ TMS TAdvExplorerTreeview Demo                                      }
{ for Delphi & C++Builder                                            }
{                                                                    }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2012                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit UDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvExplorerTreeview, AdvStyleIF, ImgList, ExtCtrls, ShlObj, ActiveX,
  ComCtrls, FileCtrl;

type
  TForm146 = class(TForm)
    ImageList1: TImageList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    AdvExplorerTreeview5: TAdvExplorerTreeview;
    Label4: TLabel;
    Panel1: TPanel;
    Image1: TImage;
    Edit1: TEdit;
    Button1: TButton;
    AdvExplorerTreeview3: TAdvExplorerTreeview;
    AdvExplorerTreeview4: TAdvExplorerTreeview;
    CheckBox3: TCheckBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox4: TCheckBox;
    AdvExplorerTreeview6: TAdvExplorerTreeview;
    FileListBox1: TFileListBox;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button2: TButton;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AdvExplorerTreeview5Select(Sender: TObject; Node: TAdvTreeNode);
    procedure AdvExplorerTreeview6Select(Sender: TObject; Node: TAdvTreeNode);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    PepsiNode: TAdvTreeNode;
  end;

var
  Form146: TForm146;

implementation

{$R *.dfm}

procedure FreePidl( pidl: PItemIDList );
var
  Allocator: IMalloc;
begin
  if Succeeded(SHGetMalloc(Allocator)) then
    Allocator.Free(pidl);
end;

function GetMyDocuments: string;
var
  pidl: PItemIDList;
  Path: array [0..MAX_PATH-1] of char;
begin
  Result := '';

  if Succeeded(
       SHGetSpecialFolderLocation(0, CSIDL_PERSONAL, pidl)
     ) then
  begin
    if SHGetPathFromIDList(pidl, Path) then
      Result := StrPas(Path);
    FreePidl(pidl);
  end;
end;


procedure TForm146.AdvExplorerTreeview5Select(Sender: TObject; Node: TAdvTreeNode);
var
  bmp: TBitmap;
begin
  bmp := TBitmap.create;
  Label4.Caption := 'Selected item: ' + Node.Text;
  ImageList1.GetBitmap(Node.ImageIndex, bmp);
  Image1.Picture.Assign(bmp);
  bmp.free;
end;

procedure TForm146.AdvExplorerTreeview6Select(Sender: TObject; Node: TAdvTreeNode);
begin
  Caption := AdvExplorerTreeview6.GetSelectedFolder;

  if DirectoryExists(Caption) then
  begin
    filelistbox1.Directory := Caption;
    filelistbox1.Update;
  end
  else
  begin
    filelistbox1.Directory := '';
    filelistbox1.Update;
  end;

end;

procedure TForm146.Button1Click(Sender: TObject);
begin
  try
    AdvExplorerTreeview3.FolderPath := Edit1.Text;
    AdvExplorerTreeview4.FolderPath := Edit1.Text;
  except
    ShowMessage('Folder does not exist');
  end;
end;

procedure TForm146.Button2Click(Sender: TObject);
begin
  AdvExplorerTreeView5.SelectedNode :=  PepsiNode;
end;

procedure TForm146.CheckBox1Click(Sender: TObject);
begin
  AdvExplorerTreeview4.ShowImage := CheckBox1.Checked;
end;

procedure TForm146.CheckBox2Click(Sender: TObject);
begin
  AdvExplorerTreeview4.AutoComplete := CheckBox2.Checked;
end;

procedure TForm146.CheckBox3Click(Sender: TObject);
begin
  AdvExplorerTreeview3.EditorEnabled := CheckBox3.Checked;
end;

procedure TForm146.CheckBox4Click(Sender: TObject);
begin
  AdvExplorerTreeview3.RefreshButton := CheckBox4.Checked;
end;

procedure TForm146.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0: AdvExplorerTreeview6.SetComponentStyle(tsOffice2003Blue);
    1: AdvExplorerTreeview6.SetComponentStyle(tsOffice2003Olive);
    2: AdvExplorerTreeview6.SetComponentStyle(tsOffice2003Silver);
    3: AdvExplorerTreeview6.SetComponentStyle(tsOffice2007Luna);
    4: AdvExplorerTreeview6.SetComponentStyle(tsOffice2007Obsidian);
    5: AdvExplorerTreeview6.SetComponentStyle(tsOffice2007Silver);
  end;
end;

procedure TForm146.FormCreate(Sender: TObject);
var
  nodeTop, nodeVegetables, nodeBread, nodeGroceries, nodeDrinks, nodeCandy: TAdvTreeNode;
  nodeBread_1, nodeBread_2: TAdvTreeNode;
  nodeVeg_1, nodeVeg_2, nodeVeg_3: TAdvTreeNode;
  nodeGroc_1, nodeGroc_2, nodeGroc_3: TAdvTreeNode;
  nodeDrinks_1, nodeDrinks_2, nodeDrinks_3: TAdvTreeNode;
  nodeCandy_1, nodeCandy_2: TAdvTreeNode;
  docs: string;

begin
  //Tab System
  AdvExplorerTreeview6.SetSelectedFolder(GetCurrentDir);
  filelistbox1.Directory := GetCurrentDir;
  filelistbox1.Update;

  //
  //Tab Folder
  AdvExplorerTreeview3.Mode := aeFolder;
  AdvExplorerTreeview4.Mode := aeFolder;
  docs := GetMyDocuments;
  AdvExplorerTreeview3.FolderPath := docs;
  AdvExplorerTreeview4.FolderPath := docs;
  //
  //Tab Custom
  nodeTop := AdvExplorerTreeview5.Items.Add('Shopping List');
  nodeTop.ImageIndex := 0;

  nodeBread := nodeTop.AddChild('Bread');
  nodeBread.ImageIndex := 0;  
  nodeBread_1 := nodeBread.AddChild('Normal bread');
  nodeBread_1.ImageIndex := 3;
  nodeBread_2 := nodeBread.AddChild('Croissant');
  nodeBread_2.ImageIndex := 6;

  nodeVegetables := nodeTop.AddChild('Vegetables');
  nodeVegetables.ImageIndex := 0;
  nodeVeg_1 := nodeVegetables.AddChild('Tomate');
  nodeVeg_1.ImageIndex := 13;
  nodeVeg_2 := nodeVegetables.AddChild('Mushroom');
  nodeVeg_2.ImageIndex := 11;
  nodeVeg_3 := nodeVegetables.AddChild('Carrot');
  nodeVeg_3.ImageIndex := 1;

  nodeGroceries := nodeTop.AddChild('Groceries');
  nodeGroceries.ImageIndex := 0;
  nodeGroc_1 := nodeGroceries.AddChild('Ketchup');
  nodeGroc_1.ImageIndex := 8;
  nodeGroc_2 := nodeGroceries.AddChild('Milk');
  nodeGroc_2.ImageIndex := 9;
  nodeGroc_3 := nodeGroceries.AddChild('Mayonaise');
  nodeGroc_3.ImageIndex := 10;

  nodeDrinks := nodeTop.AddChild('Drinks');
  nodeDrinks.imageIndex := 0;
  nodeDrinks_1 := nodeDrinks.AddChild('7-Up');
  nodeDrinks_1.ImageIndex := 7;
  nodeDrinks_2 := nodeDrinks.AddChild('Coke');
  nodeDrinks_2.ImageIndex := 4;
  nodeDrinks_3 := nodeDrinks.AddChild('Pepsi');
  nodeDrinks_3.ImageIndex := 12;

  PepsiNode := nodeDrinks_3;

  nodeCandy := nodeTop.AddChild('Candy');
  nodeCandy.ImageIndex := 0;
  nodeCandy_1 := nodeCandy.AddChild('Chocolate Donut');
  nodeCandy_1.ImageIndex := 2;
  nodeCandy_2 := nodeCandy.AddChild('Cotton candy');
  nodeCandy_2.ImageIndex := 5;

  AdvExplorerTreeview5.AddToDropDownList(nodeTop);
  AdvExplorerTreeview5.AddToDropDownList(nodeVegetables);
  AdvExplorerTreeview5.AddToDropDownList(nodeVeg_1);
  AdvExplorerTreeview5.AddToDropDownList(nodeVeg_2);
  AdvExplorerTreeview5.AddToDropDownList(nodeVeg_3);
  AdvExplorerTreeview5.AddToDropDownList(nodeBread);
  AdvExplorerTreeview5.AddToDropDownList(nodeBread_1);
  AdvExplorerTreeview5.AddToDropDownList(nodeBread_2);
  AdvExplorerTreeview5.AddToDropDownList(nodeGroceries);
  AdvExplorerTreeview5.AddToDropDownList(nodeGroc_1);
  AdvExplorerTreeview5.AddToDropDownList(nodeGroc_2);
  AdvExplorerTreeview5.AddToDropDownList(nodeGroc_3);
  AdvExplorerTreeview5.AddToDropDownList(nodeDrinks);
  AdvExplorerTreeview5.AddToDropDownList(nodeDrinks_1);
  AdvExplorerTreeview5.AddToDropDownList(nodeDrinks_2);
  AdvExplorerTreeview5.AddToDropDownList(nodeDrinks_3);
  AdvExplorerTreeview5.AddToDropDownList(nodeCandy);
  AdvExplorerTreeview5.AddToDropDownList(nodeCandy_1);
  AdvExplorerTreeview5.AddToDropDownList(nodeCandy_2);
  AdvExplorerTreeview5.SelectedNode := nodeTop;
  //
end;

end.
