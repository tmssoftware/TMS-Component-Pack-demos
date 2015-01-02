unit Usimple;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, treelist, StdCtrls, Spin, ImgList;

type
  TForm1 = class(TForm)
    TreeList1: TTreeList;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ListBox1: TListBox;
    Button4: TButton;
    SpinEdit1: TSpinEdit;
    ImageList1: TImageList;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
 tn:ttreenode;
begin
 // ; separates the columns as this is the Separator property.
 tn:=treelist1.Items.add(nil,'c:\;test.dat;123');
 tn.ImageIndex := 0; // sets the image index to 0 for this node in column 2
 tn:=treelist1.Items.add(nil,'c:\;test.dat;456');
 tn.ImageIndex := 1; // sets the image index to 1 for this node in column 2
 treelist1.Items.addchild(tn,'c:\windows\;win.ini;5655');
 tn:=treelist1.Items.add(nil,'c:\;config.sys;2223');

 tn:=treelist1.Items.add(nil,'hello');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 // set one treelist column item only
 treelist1.SetNodeColumn(treelist1.Items.Item[0],1,'other.bat');

 treelist1.SetNodeColumn(treelist1.Items.Item[4],2,'2nd');
end;

procedure TForm1.Button3Click(Sender: TObject);
var
 s:string;
begin
 // get one treelist column item only
 s := treelist1.GetNodeColumn(treelist1.Items.Item[0],0) +
      treelist1.GetNodeColumn(treelist1.Items.Item[0],1);

 listbox1.items.Add(s);

 s := treelist1.GetNodeColumn(treelist1.Items.Item[1],0) +
      treelist1.GetNodeColumn(treelist1.Items.Item[1],1);

 listbox1.items.Add(s);

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  treelist1.Columns[0].Width := spinedit1.value;
end;

end.
