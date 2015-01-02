{*************************************************************************}
{ TPlanner demo application                                               }
{                                                                         }
{ written by TMS Software                                                 }
{            copyright © 1998-2011                                        }
{            Email : info@tmssoftware.Com                                 }
{            Web : http://www.tmssoftware.Com                             }
{                                                                         }
{ The source code is given as is. The author is not responsible           }
{ for any possible damage done due to the use of this code.               }
{ The component can be freely used in any application. The complete       }
{ source code remains property of the author and may not be distributed,  }
{ published, given or sold in any form as such. No parts of the source    }
{ code can be included in any other component or application without      }
{ written authorization of the author.                                    }
{*************************************************************************}

unit Uplanforms;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Planner, Buttons, ExtCtrls, ComCtrls, Menus,
  PictureContainer, XPMan;

{$R WINXP.RES}

type
  TForm1 = class(TForm)
    Planner1: TPlanner;
    Panel1: TPanel;
    Button5: TButton;
    PictureContainer1: TPictureContainer;
    ComboBox1: TComboBox;
    Button1: TButton;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    PopupMenu1: TPopupMenu;
    Setcolor1: TMenuItem;
    Showtime1: TMenuItem;
    Remove1: TMenuItem;
    ColorDialog1: TColorDialog;
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Planner1PlannerNext(Sender: TObject);
    procedure Planner1PlannerPrev(Sender: TObject);
    procedure Setcolor1Click(Sender: TObject);
    procedure Showtime1Click(Sender: TObject);
    procedure Remove1Click(Sender: TObject);
    procedure Planner1ItemControlComboList(Sender: TObject;
      Item: TPlannerItem; ControlID, ControlValue: String;
      var Edit: Boolean; Values: TStringList; var Dropheight: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    SelDate: TDateTime;
    procedure ChangeDay(OldDate,NewDate: TDateTime);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button5Click(Sender: TObject);
var
  s: string;
  img: string;
begin
  if Planner1.Items.HasItem(Planner1.SelItemBegin,Planner1.SelItemEnd,Planner1.SelPosition) then
  begin
    ShowMessage('Sorry, already car repair planned for selected time interval');
    Exit;
  end;

  case combobox1.ItemIndex of
  0: img := 'A';
  1: img := 'C';
  2: img := 'CL';
  3: img := 'SL';
  4: img := 'SLK';
  5: img := 'CLK';
  6: img := 'M';
  end;

  with planner1.createitematselection do
  begin
    s := '<img src="'+img+'"><br><b>';
    s := s + 'Owner : <ind x="50"><control id="1" value="" type="edit" width="60"><BR>';
    s := s + 'Year :<ind x="50"><control id="2" value="" type="combo" width="60"><BR>';
    s := s + '<control id="3" value="FALSE" type="check" width="30"> Avail. ';
    s := s + '<control id="4" value="Extra" type="check" width="40"> Ready</b>';
    Text.Text := s;
    ItemEnd := ItemBegin + 6;
  end;


end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if Assigned(Planner1.Items.Selected) then
    Planner1.FreeItem(Planner1.Items.Selected);
end;

procedure TForm1.ChangeDay(OldDate,NewDate:TDateTime);
var
  FileName:string;
begin
  FileName := FormatDateTime('yyyymmdd',OldDate)+'.PLA';
  Planner1.SaveToFile(FileName);

  FileName := FormatDateTime('yyyymmdd',NewDate)+'.PLA';
  if FileExists(FileName) then
    Planner1.LoadFromFile(FileName)
  else
    Planner1.Items.Clear;
  SelDate := NewDate;
end;

procedure TForm1.DateTimePicker1Change(Sender: TObject);
begin
  ChangeDay(SelDate,DateTimePicker1.Date);
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  FileName:string;
begin
  DateTimePicker1.Date := EncodeDate(2001,11,29);
  SelDate := DateTimePicker1.Date;
  FileName := FormatDateTime('yyyymmdd',SelDate)+'.PLA';
  if FileExists(FileName) then
    Planner1.LoadFromFile(FileName);
  ComboBox1.ItemIndex := 0;
end;

procedure TForm1.Planner1PlannerNext(Sender: TObject);
begin
  ChangeDay(SelDate,SelDate+1);
end;

procedure TForm1.Planner1PlannerPrev(Sender: TObject);
begin
  ChangeDay(SelDate,SelDate-1);
end;

procedure TForm1.Setcolor1Click(Sender: TObject);
begin
  if ColorDialog1.Execute then
    Planner1.PopupPlannerItem.Color := ColorDialog1.Color;
end;

procedure TForm1.Showtime1Click(Sender: TObject);
begin
  if Planner1.PopupPlannerItem.CaptionType = Planner.ctNone then
  begin
    (Sender as TMenuItem).Checked := True;
    Planner1.PopupPlannerItem.CaptionType := Planner.ctTime;
  end
  else
  begin
    (Sender as TMenuItem).Checked := False;
    Planner1.PopupPlannerItem.CaptionType := Planner.ctNone;
  end;
end;

procedure TForm1.Remove1Click(Sender: TObject);
begin
    Planner1.FreeItem(Planner1.PopupPlannerItem);
end;

procedure TForm1.Planner1ItemControlComboList(Sender: TObject;
  Item: TPlannerItem; ControlID, ControlValue: String; var Edit: Boolean;
  Values: TStringList; var Dropheight: Integer);
var
   i: Integer;
begin
  if ControlID = '2' then
    for i := 1992 to 2001 do
      values.Add(inttostr(i));
end;

end.
