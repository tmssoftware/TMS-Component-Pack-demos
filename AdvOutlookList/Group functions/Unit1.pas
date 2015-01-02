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
  Dialogs, AdvOutlookList, StdCtrls, OutlookGroupedList, ComCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    AdvOutlookList1: TAdvOutlookList;
    Button3: TButton;
    StatusBar1: TStatusBar;
    Button4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure AdvOutlookList1ItemClick(Sender: TObject; Item: POGLItem;
      Column: Integer);
    procedure AdvOutlookList1GroupClick(Sender: TObject; Item: POGLItem);
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

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  olg1,olg2: TOutlookGroup;
  sl: TStrings;
begin
  olg1 := advoutlooklist1.AddGroup('Email');
  olg2 := advoutlooklist1.AddGroup('Documents');

  sl := advoutlooklist1.AddItem(olg1);
  sl.Add('21202');
  sl.Add(datetostr(now));
  sl.Add('Meeting new VCL components');

  sl := advoutlooklist1.AddItem(olg1);
  sl.Add('41256');
  sl.Add(datetostr(now-2));
  sl.Add('Announce TAdvOutlookList');

  sl := advoutlooklist1.AddItem(olg2);
  sl.Add('522263');
  sl.Add(datetostr(now-1));
  sl.Add('TAdvOutlookList.zip');

  sl := advoutlooklist1.AddItem(olg2);
  sl.Add('309566');
  sl.Add(datetostr(now-2));
  sl.Add('TAdvStringGrid.zip');
end;

procedure TForm1.AdvOutlookList1ItemClick(Sender: TObject; Item: POGLItem;
  Column: Integer);
var
  sl: tstrings;
begin
  sl := advoutlooklist1.GetItemData(item);

end;

procedure TForm1.AdvOutlookList1GroupClick(Sender: TObject;
  Item: POGLItem);
var
  sl: tstrings;
  s: string;
begin
  sl := advoutlooklist1.GetItemData(item);
  if (OutlookGroupedList.nsExpanded in Item.States) then
    statusbar1.SimpleText := sl.Strings[0] + ' expanded'
  else
    statusbar1.SimpleText := sl.Strings[0] + ' contracted';
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  olg: TOutlookGroup;
begin
  with AdvOutlookList1 do
  begin
    // add something in the first group
    with AddItem(Groups[0]) do
    begin
      Add('633669');
      Add(datetostr(now+1));
      Add('Development TPlanner/TDBPlanner');
    end;

    // add something in the second group
    with AddItem(Groups[1]) do
    begin
      Add('1576336');
      Add(datetostr(now-10));
      Add('Icons.zip');
    end;

  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  with AdvOutlookList1 do
  begin
    Groups[0].ChildItem[1].Strings[0] := '111111';
    Groups[1].ChildItem[1].Strings[1] := datetostr(now);
    Invalidate;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  with AdvOutlookList1.Groups[0].InsertChild(1) do
  begin
    Add('52256');
    Add(DateToStr(now-4));
    Add('Update website');
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  with AdvOutlookList1 do
  begin
    if Groups[0].ChildCount >= 2 then
      AdvOutlookList1.Groups[0].RemoveChild(1)
    else
      ShowMessage('Item 1 group already removed');  
  end;


end;

end.
