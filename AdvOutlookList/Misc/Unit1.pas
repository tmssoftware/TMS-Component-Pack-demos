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
  Dialogs, AdvOutlookList, StdCtrls, ImgList, Spin, OutLookGroupedList,
  AdvSelectors, ComCtrls, Menus;

type
  TForm1 = class(TForm)
    AdvOutlookList1: TAdvOutlookList;
    ImageList1: TImageList;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    SpinEdit2: TSpinEdit;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    PopupMenu1: TPopupMenu;
    ClearFlag1: TMenuItem;
    RedFlag1: TMenuItem;
    BlueFlag1: TMenuItem;
    procedure AddItems;
    procedure CheckBox1Click(Sender: TObject);
    procedure AdvOutlookList1URLClick(sender: TObject; item: POGLItem;
      columnIndex: Integer; URL: String; var Default: Boolean);
    procedure AdvOutlookList1HeaderClick(Sender: TObject; Column: Integer);
    procedure AdvOutlookList1HeaderDblClick(Sender: TObject;
      Column: Integer);
    procedure AdvOutlookList1HeaderRightClick(Sender: TObject;
      Column: Integer);
    procedure AdvOutlookList1ItemClick(Sender: TObject; Item: POGLItem;
      Column: Integer);
    procedure AdvOutlookList1ItemDblClick(Sender: TObject; Item: POGLItem);
    procedure AdvOutlookList1ItemRightClick(Sender: TObject;
      Item: POGLItem; Column: Integer);
    procedure AdvOutlookList1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdvOutlookList1KeyPress(Sender: TObject; var Key: Char);
    procedure AdvOutlookList1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdvOutlookList1AnchorClick(Sender: TObject; Item: POGLItem;
      Column: Integer; Anchor: String);
    procedure AdvOutlookList1AnchorEnter(Sender: TObject; Item: POGLItem;
      Column: Integer; Anchor: String);
    procedure AdvOutlookList1AnchorExit(Sender: TObject; Item: POGLItem;
      Column: Integer; Anchor: String);
    procedure AdvOutlookList1CheckBoxClick(Sender: TObject; Item: POGLItem;
      Column: Integer; NewValue: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure ClearFlag1Click(Sender: TObject);
    procedure RedFlag1Click(Sender: TObject);
    procedure BlueFlag1Click(Sender: TObject);
  private
    { Private declarations }
    FClickedItem: POGLItem;
    procedure ChangeFlag(Flag: Integer);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function RandomTime: TDateTime;
begin
  Result := encodetime(random(24),random(59),random(59),0);
end;

procedure TForm1.AddItems;
var
  olg: TOutlookGroup;
  sl: TStrings;

begin
  olg := advoutlooklist1.AddGroup('Business');

  sl := AdvOutlookList1.AddItem(olg);
  sl.Add('6');                                  // Envelop Image
  sl.Add('1');                                  // Attachement
  sl.Add('TMS Software');                       // From
  sl.Add('TAdvOutLookList');                    // Subject //<A href="http://www.tmssoftware.com">AdvOutLookList</A>');
  sl.Add('3');                                  // Flag
  sl.Add(TimeToStr(RandomTime));                      // Received
  sl.Add('20');                                 // Size
  sl.Add(' Note the URL of TAdvOutLookList <A href="http://www.tmssoftware.com/AdvOutLookList.htm">www.tmssoftware.com/AdvOutLookList</A>');

  sl := AdvOutlookList1.AddItem(olg);
  sl.Add('7');                                  // Envelop Image
  sl.Add('-1');                                 // Attachement
  sl.Add('TMS Software');                       // From
  sl.Add('TAdvOutLookList');                    // Subject
  sl.Add('4');                                  // flag
  sl.Add(TimeToStr(RandomTime));                      // Received
  sl.Add('5');                                  // size
  sl.Add(' TAdvOutLookList allows grouping, preview, sorting on any column');

  sl := AdvOutlookList1.AddItem(olg);
  sl.Add('7');                                  // Envelop Image
  sl.Add('-1');                                 // Attachement
  sl.Add('TMS Software');                       // From
  sl.Add('TAdvOutLookList Features');           // Subject
  sl.Add('5');                                  // Flag
  sl.Add(TimeToStr(RandomTime));                      // Received
  sl.Add('10');                                 // Size
  sl.Add(' Features of TAdvOutLookList includes <b><br> HTML Support, OLE Drag N Drop, Grouping etc</b>');

  sl := AdvOutlookList1.AddItem(olg);
  sl.Add('7');                                  // Envelop Image
  sl.Add('1');                                  // Attachement
  sl.Add('TMS Software');                       // From
  sl.Add('Attached is the TAdvOutLookList');    // Subject
  sl.Add('3');                                  // Flag
  sl.Add(TimeToStr(RandomTime));                      // Received
  sl.Add('30');                                 // Size
  sl.Add(' Kind Regards <br><A href="NoMail@OnlyMail.com"><B>TMS Software Team</B></A>');

  olg := advoutlooklist1.AddGroup('Leisure');

  sl := AdvOutlookList1.AddItem(olg);
  sl.Add('10');                                 // Envelop Image
  sl.Add('-1');                                 // Attachement
  sl.Add('Lino Tadros');                        // From
  sl.Add('SLR');                                // Subject
  sl.Add('3');                                  // Flag
  sl.Add(TimeToStr(RandomTime));                      // Received
  sl.Add('70');                                 // Size
  sl.Add('Have you see the new Brabus SLR ? Have a look at <br><A href="www.brabus.de"><B>Brabus</B></A>');

  sl := AdvOutlookList1.AddItem(olg);
  sl.Add('10');                                 // Envelop Image
  sl.Add('-1');                                 // Attachement
  sl.Add('Chad Hower');                        // From
  sl.Add('Cyprus');                                // Subject
  sl.Add('3');                                  // Flag
  sl.Add(TimeToStr(RandomTime));                      // Received
  sl.Add('90');                                 // Size
  sl.Add('What about coming a few days to Cyprus, I''m sure you''ll like the <font color="clred"><b>swimming</b></font> !!');

end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  AdvOutlookList1.PreviewSettings.Column := SpinEdit2.Value;
  AdvOutlookList1.PreviewSettings.Active := CheckBox1.Checked;
end;

procedure TForm1.AdvOutlookList1URLClick(sender: TObject; item: POGLItem;
  columnIndex: Integer; URL: String; var Default: Boolean);
begin
  showmessage('click');
  Default := false;
end;

procedure TForm1.AdvOutlookList1HeaderClick(Sender: TObject;
  Column: Integer);
begin
  StatusBar1.Panels[0].Text := 'HeaderClick';
end;

procedure TForm1.AdvOutlookList1HeaderDblClick(Sender: TObject;
  Column: Integer);
begin
  StatusBar1.Panels[0].Text := 'HeaderDblClick';
end;

procedure TForm1.AdvOutlookList1HeaderRightClick(Sender: TObject;
  Column: Integer);
begin
  StatusBar1.Panels[0].Text := 'HeaderRightClick';
end;

procedure TForm1.AdvOutlookList1ItemClick(Sender: TObject; Item: POGLItem;
  Column: Integer);
begin
  StatusBar1.Panels[0].Text := 'ItemClick: Col'+ inttostr(Column);
end;

procedure TForm1.AdvOutlookList1ItemDblClick(Sender: TObject;
  Item: POGLItem);
begin
  StatusBar1.Panels[0].Text := 'ItemDblClick: Col';
end;

procedure TForm1.AdvOutlookList1ItemRightClick(Sender: TObject;
  Item: POGLItem; Column: Integer);
var
  pt: Tpoint;
begin
  StatusBar1.Panels[0].Text := 'ItemRightClick: Col'+ inttostr(Column);
  if Column = 5 then
  begin
    FClickedItem := Item;
    GetCursorPos(pt);
    PopupMenu1.Popup(pt.X, pt.Y);
  end;
end;

procedure TForm1.ChangeFlag(Flag: Integer);
var
  S: TStrings;
begin
  S := AdvOutlookList1.GetItemData(FClickedItem);
  if (S <> nil) and (S.Count > 4) then
  begin
    S[4] := inttostr(Flag);
    AdvOutlookList1.Invalidate;
  end;
end;

procedure TForm1.ClearFlag1Click(Sender: TObject);
begin
  ChangeFlag(3);
end;

procedure TForm1.RedFlag1Click(Sender: TObject);
begin
  ChangeFlag(4);
end;

procedure TForm1.BlueFlag1Click(Sender: TObject);
begin
  ChangeFlag(5);
end;

procedure TForm1.AdvOutlookList1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  StatusBar1.Panels[0].Text := 'KeyDown: '+char(Key);
end;

procedure TForm1.AdvOutlookList1KeyPress(Sender: TObject; var Key: Char);
begin
  StatusBar1.Panels[0].Text := 'KeyPress: '+char(Key);
end;

procedure TForm1.AdvOutlookList1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  StatusBar1.Panels[0].Text := 'KeyUp: '+char(Key);
end;

procedure TForm1.AdvOutlookList1AnchorClick(Sender: TObject;
  Item: POGLItem; Column: Integer; Anchor: String);
begin
  ShowMessage(Anchor);
end;

procedure TForm1.AdvOutlookList1AnchorEnter(Sender: TObject;
  Item: POGLItem; Column: Integer; Anchor: String);
begin
  StatusBar1.Panels[0].Text := Anchor;
end;

procedure TForm1.AdvOutlookList1AnchorExit(Sender: TObject; Item: POGLItem;
  Column: Integer; Anchor: String);
begin
  StatusBar1.Panels[0].Text := '';
end;

procedure TForm1.AdvOutlookList1CheckBoxClick(Sender: TObject;
  Item: POGLItem; Column: Integer; NewValue: Boolean);
begin
  StatusBar1.Panels[0].Text := inttostr(Column) +' : '+BoolToStr(NewValue);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  CheckBox1Click(CheckBox1);
  AddItems;
end;

end.
