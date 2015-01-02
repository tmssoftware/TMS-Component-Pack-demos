{*************************************************************************}
{ TTodoList demo application                                              }
{ for Delphi 5.0,6.0,7.0,2005 & C++Builder 5.0,6.0                        }
{ version 1.2                                                             }
{                                                                         }
{ written by TMS Software                                                 }
{           copyright © 2001 - 2004                                       }
{           Email : info@tmssoftware.com                                  }
{           Web : http://www.tmssoftware.com                              }
{*************************************************************************}
unit Utododemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, TodoList, ExtCtrls, Spin
  {$IFDEF VER140}
  , Variants
  {$ENDIF}
  {$IFDEF VER150}
  , XPMan, ImgList
  {$ENDIF}
  ;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    TodoList1: TTodoList;
    Panel2: TPanel;
    FieldList: TCheckListBox;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    FontDialog1: TFontDialog;
    CheckBox4: TCheckBox;
    SpinEdit1: TSpinEdit;
    Label2: TLabel;
    Button3: TButton;
    Button4: TButton;
    Label3: TLabel;
    CurItem: TLabel;
    Button5: TButton;
    Button6: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Button7: TButton;
    ImageList1: TImageList;
    ImageList2: TImageList;
    procedure FieldListClickCheck(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure TodoList1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure TodoList1ItemSelect(Sender: TObject; ATodoItem: TTodoItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FieldListClickCheck(Sender: TObject);
var
  Chk: Boolean;

begin
  Chk := FieldList.Checked[FieldList.ItemIndex];

  case FieldList.ItemIndex of
  0:if Chk then
      TodoList1.AddColumn(tdSubject,'Subject')
    else
      TodoList1.RemoveColumn(tdSubject);
  1:if Chk then
      TodoList1.AddColumn(tdNotes,'Notes')
    else
      TodoList1.RemoveColumn(tdNotes);
  2:if Chk then
      TodoList1.AddColumn(tdResource,'Resource')
    else
      TodoList1.RemoveColumn(tdResource);
  3:if Chk then
      TodoList1.AddColumn(tdStatus,'Status')
    else
      TodoList1.RemoveColumn(tdStatus);
  4:if Chk then
      TodoList1.AddColumn(tdPriority,'Priority')
    else
      TodoList1.RemoveColumn(tdPriority);
  5:if Chk then
      TodoList1.AddColumn(tdComplete,'Complete')
    else
      TodoList1.RemoveColumn(tdComplete);
  6:if Chk then
      TodoList1.AddColumn(tdCompletion,'Completion')
    else
      TodoList1.RemoveColumn(tdCompletion);
  7:if Chk then
      TodoList1.AddColumn(tdCreationDate,'Create Date')
    else
      TodoList1.RemoveColumn(tdCreationDate);
  8:if Chk then
      TodoList1.AddColumn(tdDueDate,'Due Date')
    else
      TodoList1.RemoveColumn(tdDueDate);
  9:if Chk then
      TodoList1.AddColumn(tdCompletionDate,'Compl. Date')
    else
      TodoList1.RemoveColumn(tdCompletionDate);
  10:if Chk then
      TodoList1.AddColumn(tdTotalTime,'Total Time')
    else
      TodoList1.RemoveColumn(tdTotalTime);
  end;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  TodoList1.AutoInsertItem := CheckBox2.Checked;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
  TodoList1.AutoDeleteItem := CheckBox3.Checked;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
  begin
    TodoList1.Preview := True;
    if FieldList.Checked[1] then
      TodoList1.RemoveColumn(tdNotes);
  end
  else
  begin
    TodoList1.Preview := False;
    if FieldList.Checked[1] then
      TodoList1.AddColumn(tdNotes,'Notes');
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  FontDialog1.Font.Assign(TodoList1.PreviewFont);
  if FontDialog1.Execute then
    TodoList1.PreviewFont.Assign(FontDialog1.Font);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FontDialog1.Font.Assign(TodoList1.PriorityFont);
  if FontDialog1.Execute then
    TodoList1.PriorityFont.Assign(FontDialog1.Font);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FieldList.Checked[0] := True;
  FieldList.Checked[1] := True;
  FieldList.Checked[2] := True;
  FieldList.Checked[4] := True;
  FieldList.Checked[5] := True;
  FieldList.Checked[6] := True;
  SpinEdit1.Value := TodoList1.PreviewHeight;
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
  TodoList1.Sorted := CheckBox4.Checked;
  if TodoList1.Sorted then
    TodoList1.SortColumn := 1;
end;

procedure TForm1.SpinEdit1Change(Sender: TObject);
begin
   TodoList1.PreviewHeight := SpinEdit1.Value;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  with TodoList1.Items.Add do
  begin
    Subject := 'New task';
    Notes.Text := 'Programmatically created';
    Completion := Random(100);
    DueDate := Now + 60;
    CreationDate := Now;
    Priority := tpNormal;
    Resource := 'Unassigned';
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if Assigned(TodoList1.Selected) then
    TodoList1.Selected.Free;
end;

procedure TForm1.TodoList1Click(Sender: TObject);
begin
  if Assigned(TodoList1.Selected) then
    CurItem.Caption := TodoList1.Selected.Subject;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
    TodoList1.SaveToFile(SaveDialog1.Filename);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    TodoList1.LoadFromFile(OpenDialog1.Filename);
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  TodoList1.Items.Clear;
end;

procedure TForm1.TodoList1ItemSelect(Sender: TObject;
  ATodoItem: TTodoItem);
begin
   showmessage('here');
end;

end.
