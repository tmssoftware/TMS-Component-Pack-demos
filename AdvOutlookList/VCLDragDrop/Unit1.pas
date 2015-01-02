{********************************************************************}
{ TMS TAdvOutlookList Demo                                           }
{                                                                    }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2012                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvOutlookList, ImgList, OutLookGroupedList;

type
  TForm1 = class(TForm)
    ImageList1: TImageList;
    AdvOutlookList1: TAdvOutlookList;
    ListBox1: TListBox;
    Label1: TLabel;
    procedure ListBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ListBox1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure AdvOutlookList1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure AdvOutlookList1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  advoutlooklist1.AddGroup('TMS software components');
  advoutlooklist1.AddGroup('Borland components');
end;

procedure TForm1.ListBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
var
  it: poglitem;
  grp: TOutlookGroup;
  i: Integer;

begin
  it := AdvOutlookList1.FirstSelectedItem;

  if Assigned(it) then
  begin
    if not AdvOutlookList1.IsGroupItem(it) then
      listbox1.Items.Add(AdvOutlookList1.GetItemData(it).Strings[1])
    else
    begin
      grp := AdvOutlookList1.ItemGroup(it);
      for i := 1 to grp.ChildCount do
      listbox1.Items.Add(grp.ChildItem[i - 1].Strings[1]);
    end;

    repeat
      it := AdvOutlookList1.NextSelectedItem(it);
      if (it <> nil) and not AdvOutlookList1.IsGroupItem(it) then
        listbox1.Items.Add(AdvOutlookList1.GetItemData(it).Strings[1]);
    until (it = nil);
  end;

  AdvOutlooklist1.DeleteSelectedItems(true);
end;

procedure TForm1.ListBox1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TOutlookGroupedList);
end;

procedure TForm1.AdvOutlookList1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  grp: TOutlookGroup;
begin
  grp := AdvOutlookList1.GroupAtXY(x,y);

  if Assigned(grp) then
  begin
    with grp.AddChild do
    begin
      Add('0'); // checkbox column
      with (Source as TListBox) do
      begin
        Add(Items[ItemIndex]);
        Items.Delete(ItemIndex);
      end;
    end;
  end;

end;

procedure TForm1.AdvOutlookList1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept :=  (Source is TListBox);
end;

end.
