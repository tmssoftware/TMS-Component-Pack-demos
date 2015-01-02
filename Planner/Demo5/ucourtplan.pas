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
unit ucourtplan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, DBPlanner, DB, DBTables, DBGrids, Planner, ExtCtrls,
  StdCtrls, DBCtrls, Grids, ComCtrls, Spin, XPMan;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    Table1: TTable;
    DBDaySource1: TDBDaySource;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBPlanner1: TDBPlanner;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    MonthCalendar1: TMonthCalendar;
    ViewSel: TRadioGroup;
    NumDays: TSpinEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    TabSheet3: TTabSheet;
    Table2: TTable;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    DBNavigator2: TDBNavigator;
    ZoomSel: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure DBDaySource1GetResourceName(Sender: TObject;
      ResourceIndex: Integer; var ResourceName: String);
    procedure ViewSelClick(Sender: TObject);
    procedure MonthCalendar1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBDaySource1ItemToFields(Sender: TObject; Fields: TFields;
      Item: TPlannerItem);
    procedure DBDaySource1FieldsToItem(Sender: TObject; Fields: TFields;
      Item: TPlannerItem);
    procedure DBPlanner1ItemDelete(Sender: TObject; Item: TPlannerItem);
    procedure NumDaysChange(Sender: TObject);
    procedure DBPlanner1ItemLeftClick(Sender: TObject; Item: TPlannerItem);
    procedure DBPlanner1ItemControlComboList(Sender: TObject;
      Item: TPlannerItem; ControlID, ControlValue: String;
      var Edit: Boolean; Values: TStringList; var Dropheight: Integer);
    procedure DBPlanner1ItemControlComboSelect(Sender: TObject; X,
      Y: Integer; Item: TPlannerItem; ControlID, ControlValue: String;
      ComboIdx: Integer; ComboObject: TObject);
    procedure ZoomSelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TIDObject = class(TObject)
  private
    FID1: Integer;
    FID4: Integer;
    FID2: Integer;
    FID3: Integer;
  published
    property ID1: Integer read FID1 write FID1;
    property ID2: Integer read FID2 write FID2;
    property ID3: Integer read FID3 write FID3;
    property ID4: Integer read FID4 write FID4;
  end;


var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  // Initialize the players database
  Table2.Active := False;
  Table2.DatabaseName := GetCurrentDir;
  Table2.TableName := 'playerdb.db';
  Table2.Active := True;

  // Initialize the court reservation database
  Table1.Active := False;
  DBDaysource1.Day := EncodeDate(2001,12,2);
  MonthCalendar1.Date := EncodeDate(2001,12,2);
  Table1.DatabaseName := GetCurrentDir;
  Table1.TableName := 'courtdb.db';
  Table1.Active := True;
end;

procedure TForm1.DBDaySource1GetResourceName(Sender: TObject;
  ResourceIndex: Integer; var ResourceName: String);
begin
  ResourceName := 'Court ' + IntToStr(ResourceIndex);
end;

procedure TForm1.ViewSelClick(Sender: TObject);
begin
  case ViewSel.ItemIndex of
  0: DBDaysource1.Mode := dmMultiDay;
  1: DBDaysource1.Mode := dmMultiResource;
  2: DBDaysource1.Mode := dmMultiDayRes;
  3: DBDaysource1.Mode := dmMultiResDay;
  end;
end;

procedure TForm1.MonthCalendar1Click(Sender: TObject);
begin
  DBDaysource1.Day := MonthCalendar1.Date;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  sib,sie,sip: Integer;
  Txt: string;

begin
  sib := DBPlanner1.SelItemBegin;
  sie := DBPlanner1.SelItemEnd;
  sip := DBPlanner1.SelPosition;

  if not (DBPlanner1.Items.HasItem(sib,sie,sip) or DBPlanner1.Items.HasItem(sib,sie,sip)) then
  begin
    with DBPlanner1.CreateItemAtSelection do
    begin
      ItemEnd := ItemBegin + 2;

      case (Sender as TButton).Tag of
      0: begin
           Color := clAqua;
           Txt := '<b>Single game</b><br>Player 1 : <control id="PL1" type="COMBO" width="90" value=""><BR>Player 2 : <control ID="PL2" type="COMBO" width="90" value="">';
         end;
      1: begin
           Color := clLime;
           Txt := '<b>Double game</b><br>Player 1 : <control id="PL1" type="COMBO" width="90" value=""><BR>Player 2 : <control ID="PL2" type="COMBO" width="90" value=""><BR>';
           Txt := Txt + 'Player 3 : <control id="PL3" type="COMBO" width="90" value=""><BR>Player 4 : <control ID="PL4" type="COMBO" width="90" value="">';
         end;
      2: begin
           Color := clYellow;
           Txt := '<b>Tournament</b>';
         end;
      3: begin
           Color := clWhite;
           Txt := '<b>Training</b><br>Teacher : <control id="PL1" type="COMBO" width="90" value="">';
         end;
      end;

      ItemObject := TIDObject.Create;
      OwnsItemObject := True;

      Text.Text := Txt;
      Update;

    end;
  end;

end;

procedure TForm1.DBDaySource1ItemToFields(Sender: TObject; Fields: TFields;
  Item: TPlannerItem);
begin
  case Item.Color of
  clAqua: Fields.FieldByName('RESTYPE').AsInteger := 0;
  clLime: Fields.FieldByName('RESTYPE').AsInteger := 1;
  clYellow: Fields.FieldByName('RESTYPE').AsInteger := 2;
  clWhite: Fields.FieldByName('RESTYPE').AsInteger := 3;
  end;
  if Assigned(Item.ItemObject) then
    with TIDObject(Item.ItemObject) do
    begin
      Fields.FieldByName('PLAYER1').AsInteger := TIDObject(Item.ItemObject).ID1;
      Fields.FieldByName('PLAYER2').AsInteger := TIDObject(Item.ItemObject).ID2;
      Fields.FieldByName('PLAYER3').AsInteger := TIDObject(Item.ItemObject).ID3;
      Fields.FieldByName('PLAYER4').AsInteger := TIDObject(Item.ItemObject).ID4;
    end;
end;

procedure TForm1.DBDaySource1FieldsToItem(Sender: TObject; Fields: TFields;
  Item: TPlannerItem);
var
  Txt: string;
  ID,i: Integer;
begin
  case Fields.FieldByName('RESTYPE').AsInteger of
  0: begin
       Item.Color := clAqua;
       Txt := '<b>Single game</b><br>Player 1 : <control id="PL1" type="COMBO" width="90" value=""><BR>Player 2 : <control ID="PL2" type="COMBO" width="90" value="">';
     end;
  1: begin
       Item.Color := clLime;
       Txt := '<b>Double game</b><br>Player 1 : <control id="PL1" type="COMBO" width="90" value=""><BR>Player 2 : <control ID="PL2" type="COMBO" width="90" value=""><BR>';
       Txt := Txt + 'Player 3 : <control id="PL3" type="COMBO" width="90" value=""><BR>Player 4 : <control ID="PL4" type="COMBO" width="90" value="">';
     end;
  2: begin
       Item.Color := clYellow;
       Txt := '<b>Tournament</b>';
     end;
  3: begin
       Item.Color := clWhite;
       Txt := '<b>Training</b><br>Teacher : <control id="PL1" type="COMBO" width="90" value="">';
     end;
  end;

  if not Assigned(Item.ItemObject) then
  begin
    Item.ItemObject := TIDObject.Create;
    Item.OwnsItemObject := True;
  end;

  Item.Text.Text := Txt;

  for i := 1 to 4 do
  begin
    ID := Fields.FieldByName('PLAYER'+IntToStr(i)).AsInteger;
    if  ID > 0 then
    begin
      if Table2.Locate('PLAYERID',ID,[]) then
        Item.SetValue('PL'+IntToStr(i),Table2.Fields.FieldByName('PLAYERNAME').AsString);
     case i of
     1: TIDObject(Item.ItemObject).ID1 := ID;
     2: TIDObject(Item.ItemObject).ID2 := ID;
     3: TIDObject(Item.ItemObject).ID3 := ID;
     4: TIDObject(Item.ItemObject).ID4 := ID;
     end;
    end;
  end;


end;

procedure TForm1.DBPlanner1ItemDelete(Sender: TObject; Item: TPlannerItem);
begin
  DBPlanner1.FreeItem(Item);
end;

procedure TForm1.NumDaysChange(Sender: TObject);
begin
  DBDaySource1.NumberOfDays := NumDays.Value;
end;

procedure TForm1.DBPlanner1ItemLeftClick(Sender: TObject;
  Item: TPlannerItem);
begin
  DBPlanner1.ZoomPosition(Item.ItemPos);
end;

procedure TForm1.DBPlanner1ItemControlComboList(Sender: TObject;
  Item: TPlannerItem; ControlID, ControlValue: String; var Edit: Boolean;
  Values: TStringList; var Dropheight: Integer);
begin
  Table2.First;
  while not Table2.Eof do
  begin
    Values.AddObject(Table2.Fields.FieldByName('PLAYERNAME').AsString,TObject(Table2.Fields.FieldByName('PLAYERID').AsInteger));
    Table2.Next;
  end;

  Edit := False;
  DropHeight := 150;
end;

procedure TForm1.DBPlanner1ItemControlComboSelect(Sender: TObject; X,
  Y: Integer; Item: TPlannerItem; ControlID, ControlValue: String;
  ComboIdx: Integer; ComboObject: TObject);
begin
  if ControlID = 'PL1' then
    TIDObject(Item.ItemObject).ID1 := Integer(ComboObject);
  if ControlID = 'PL2' then
    TIDObject(Item.ItemObject).ID2 := Integer(ComboObject);
  if ControlID = 'PL3' then
    TIDObject(Item.ItemObject).ID3 := Integer(ComboObject);
  if ControlID = 'PL4' then
    TIDObject(Item.ItemObject).ID4 := Integer(ComboObject);

  Item.Update;
end;

procedure TForm1.ZoomSelClick(Sender: TObject);
begin
  case ZoomSel.ItemIndex of
  0: begin
       DBPlanner1.PositionWidth := 0;
       DBPlanner1.PositionZoomWidth := 0;
     end;
  1: begin
       DBPlanner1.PositionWidth := 60;
       DBPlanner1.PositionZoomWidth := 180;
     end;
  2: begin
       DBPlanner1.PositionWidth := 180;
       DBPlanner1.PositionZoomWidth := 0;
     end;
  end;

end;

end.
