{********************************************************************}
{ TAdvMemo demo                                                      }
{ for Delphi 5,6,7 & C++Builder 5,6                                  }
{ version 1.5.0.7                                                    }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2001-2004                                   }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}
unit UEditor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvMemo, Advmps, StdCtrls, ExtCtrls, AdvCodeList, Buttons,
  ComCtrls, ImgList, Contnrs, ActnList
  {$IFDEF VER150}
  ,Xpman
  {$ENDIF}
  ;

type
  TForm1 = class(TForm)
    AdvPascalMemoStyler1: TAdvPascalMemoStyler;
    Panel1: TPanel;
    AdvMemoFindDialog1: TAdvMemoFindDialog;
    AdvMemoFindReplaceDialog1: TAdvMemoFindReplaceDialog;
    AdvCodeList1: TAdvCodeList;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    TabControl1: TTabControl;
    AdvMemo1: TAdvMemo;
    SpeedButton3: TSpeedButton;
    ImageList1: TImageList;
    OpenDialog1: TOpenDialog;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    ActionList1: TActionList;
    AdvMemoCut1: TAdvMemoCut;
    AdvMemoCopy1: TAdvMemoCopy;
    AdvMemoPaste1: TAdvMemoPaste;
    AdvMemoUndo1: TAdvMemoUndo;
    AdvMemoRedo1: TAdvMemoRedo;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    CheckBox1: TCheckBox;
    StatusBar1: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure AdvMemo1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure AdvMemo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdvCodeList1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure AdvCodeList1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure AdvMemo1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure AdvCodeList1BlockClick(Sender: TObject;
      ACodeBlock: TCodeBlock);
    procedure AdvCodeList1BlockInsertFromClipboard(Sender: TObject;
      ACodeBlock: TCodeBlock);
  private
    { Private declarations }
  public
    { Public declarations }
    SourceList: TObjectList;
    SourceIndex: Integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  SourceList := TObjectList.Create;
  SourceList.Add(TAdvMemoSource.Create(self));
  TAdvMemoSource(SourceList.Items[SourceIndex]).SyntaxStyler := AdvMemo1.SyntaxStyles;
  SourceIndex := 0;
  AdvMemo1.MemoSource := TAdvMemoSource(SourceList.Items[SourceIndex]);
end;

procedure TForm1.AdvMemo1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := true;
end;

procedure TForm1.AdvMemo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // shortcut key handling for find & replace
  
  if (key = ord('F')) and (ssCtrl in Shift) then
  begin
    AdvMemoFindDialog1.Execute;
  end;
  if (key = ord('H')) and (ssCtrl in Shift) then
  begin
    AdvMemoFindReplacedialog1.Execute;
  end;

  if key = vk_F3 then
  begin
    AdvMemo1.FindText(advmemofinddialog1.FindText, advmemofinddialog1.Options);
  end;
end;

procedure TForm1.AdvCodeList1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  Advcodelist1.CodeBlocks.Add(advmemo1.Selection);
  AdvCodeList1.CodeBlocks[AdvCodeList1.CodeBlocks.Count - 1].ImageIndex := 0;
end;

procedure TForm1.AdvCodeList1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (source is TAdvMemo);
end;

procedure TForm1.AdvMemo1DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  if (source is tadvcodelist) then
  begin
    AdvMemo1.DropText(x,y,advcodelist1.CodeBlocks.Items[advcodelist1.itemindex].Code.Text);
  end;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  advmemo1.Undo;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  advmemo1.Redo;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AdvMemo1.MemoSource := nil;
  SourceList.Free;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    SourceList.Add(TAdvMemoSource.Create(Self));

    TAdvMemoSource(SourceList.Items[SourceList.Count - 1]).Lines.LoadFromFile(opendialog1.filename);
    TAdvMemoSource(SourceList.Items[SourceList.Count - 1]).SyntaxStyler := AdvMemo1.SyntaxStyles;
    SourceIndex := SourceList.Count - 1;
    TabControl1.Tabs.Add(opendialog1.FileName);
    TabControl1.TabIndex := TabControl1.Tabs.Count - 1;
    AdvMemo1.MemoSource := TAdvMemoSource(SourceList.Items[SourceIndex]);
    AdvMemo1.CurX := 0;
    AdvMemo1.CurY := 0;
    AdvMemo1.SetFocus;
  end;
end;

procedure TForm1.TabControl1Change(Sender: TObject);
begin
  SourceIndex := TabControl1.TabIndex;
  AdvMemo1.MemoSource := TAdvMemoSource(SourceList.Items[SourceIndex]);
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
  AdvMemo1.Clear;
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
  Advmemofinddialog1.Execute;
end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
begin
  Advmemofindreplacedialog1.Execute;
end;

procedure TForm1.SpeedButton10Click(Sender: TObject);
begin
  AdvMemo1.MemoSource.Lines.SaveToFile(TabControl1.Tabs[TabControl1.TabIndex]);
end;

procedure TForm1.SpeedButton11Click(Sender: TObject);
var
  idx: Integer;
begin
  if SourceList.Count = 0 then
    Exit;

  idx := SourceIndex;

  AdvMemo1.MemoSource := nil;
  SourceList.Delete(SourceIndex);
  TabControl1.Tabs.Delete(SourceIndex);

  if (SourceIndex > 0) then
  begin
    dec(SourceIndex);
    AdvMemo1.MemoSource := TAdvMemoSource(SourceList.Items[SourceIndex]);
    TabControl1.TabIndex := SourceIndex;
  end
  else
    AdvMemo1.Clear;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  AdvCodeList1.ClipboardView := CheckBox1.Checked;
end;

procedure TForm1.AdvCodeList1BlockClick(Sender: TObject;
  ACodeBlock: TCodeBlock);
begin
  ShowMessage(ACodeBlock.Code.Text);
end;

procedure TForm1.AdvCodeList1BlockInsertFromClipboard(Sender: TObject;
  ACodeBlock: TCodeBlock);
begin
  // set image as clipboard icon
  ACodeBlock.ImageIndex := 1;
end;

end.
