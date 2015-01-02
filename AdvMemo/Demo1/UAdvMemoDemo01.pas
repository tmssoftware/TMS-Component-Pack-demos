{*************************************************************************}
{ TAdvMemo demo application                                               }
{                                                                         }
{ written by TMS Software                                                 }
{            copyright © 1998-2012                                        }
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
unit UAdvMemoDemo01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, AdvMemo, Menus, DBAdvMemo, advmphp, Advmxml, AdvmINIs,
  AdvCodeList, AdvmES, AdvmPLS, AdvmPYS, AdvmSQLS, AdvmCSHS, AdvmWS, AdvmCSS,
  AdvmBS, AdvmPS, AdvMemoStylerManager, ImgList, XPMan, ExtDlgs, Grids, AdvStyleIF;

type
  TFAdvMemoDemo01 = class(TForm)
    AdvMemo1: TAdvMemo;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    OpenFile1: TMenuItem;
    SaveFile1: TMenuItem;
    Exit1: TMenuItem;
    AdvHTMLMemoStyler1: TAdvHTMLMemoStyler;
    AdvJSMemoStyler1: TAdvJSMemoStyler;
    AdvPascalMemoStyler1: TAdvPascalMemoStyler;
    AdvBasicMemoStyler1: TAdvBasicMemoStyler;
    AdvCSSMemoStyler1: TAdvCSSMemoStyler;
    AdvWebMemoStyler1: TAdvWebMemoStyler;
    AdvCSharpMemoStyler1: TAdvCSharpMemoStyler;
    AdvSQLMemoStyler1: TAdvSQLMemoStyler;
    AdvPythonMemoStyler1: TAdvPythonMemoStyler;
    AdvPerlMemoStyler1: TAdvPerlMemoStyler;
    AdvEmoticonMemoStyler1: TAdvEmoticonMemoStyler;
    AdvMemoFindDialog1: TAdvMemoFindDialog;
    AdvMemoFindReplaceDialog1: TAdvMemoFindReplaceDialog;
    AdvCodeList1: TAdvCodeList;
    AdvINIMemoStyler1: TAdvINIMemoStyler;
    AdvXMLMemoStyler1: TAdvXMLMemoStyler;
    AdvMemoCapitalChecker1: TAdvMemoCapitalChecker;
    AdvPHPMemoStyler1: TAdvPHPMemoStyler;
    AdvMemoSource1: TAdvMemoSource;
    AdvMemoStylerManager1: TAdvMemoStylerManager;
    MarkerImageList1: TImageList;
    AutoCompletionImageList1: TImageList;
    AdvMemoPopupMenu1: TPopupMenu;
    CodeListImages1: TImageList;
    CodeListPopupMenu1: TPopupMenu;
    SaveAs1: TMenuItem;
    Print1: TMenuItem;
    N2: TMenuItem;
    Edit1: TMenuItem;
    Undo1: TMenuItem;
    Redo1: TMenuItem;
    N3: TMenuItem;
    Find1: TMenuItem;
    Find2: TMenuItem;
    N4: TMenuItem;
    Style1: TMenuItem;
    Basic1: TMenuItem;
    CSharp1: TMenuItem;
    CSS1: TMenuItem;
    Emotixon1: TMenuItem;
    HTML1: TMenuItem;
    INI1: TMenuItem;
    JavaScript1: TMenuItem;
    Pascal1: TMenuItem;
    PHP1: TMenuItem;
    Python1: TMenuItem;
    Perl1: TMenuItem;
    SQL1: TMenuItem;
    Web1: TMenuItem;
    Xml1: TMenuItem;
    None1: TMenuItem;
    AdvMemoSettings1: TMenuItem;
    AcceptFiles1: TMenuItem;
    ActiveLineSettings1: TMenuItem;
    AutoCompletion1: TMenuItem;
    AutoCorrect1: TMenuItem;
    AutoExpand1: TMenuItem;
    AutoIndent1: TMenuItem;
    BandColor1: TMenuItem;
    BlockShow1: TMenuItem;
    AdvCodeList3: TMenuItem;
    SubMenu2: TMenuItem;
    CaseSensitive1: TMenuItem;
    ClipBoardFormats1: TMenuItem;
    cfText1: TMenuItem;
    cfRTF1: TMenuItem;
    cfHTML1: TMenuItem;
    CodeFolding1: TMenuItem;
    Gutter1: TMenuItem;
    ShowRightMargin1: TMenuItem;
    SmartTabs1: TMenuItem;
    rimTrailingspaces1: TMenuItem;
    UrlAware1: TMenuItem;
    UseStyler1: TMenuItem;
    WantTab1: TMenuItem;
    AutoDisplay1: TMenuItem;
    AutoWidth1: TMenuItem;
    PrintOptions1: TMenuItem;
    ClipboardView1: TMenuItem;
    MultiSelect1: TMenuItem;
    ShowSelection1: TMenuItem;
    Sorted1: TMenuItem;
    SyntaxStyles2: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    New1: TMenuItem;
    StatusBar1: TStatusBar;
    ColorDialog1: TColorDialog;
    FontDialog1: TFontDialog;
    N5: TMenuItem;
    EditAutoCompleteList1: TMenuItem;
    CuttoClipboard1: TMenuItem;
    CopytoClipboard1: TMenuItem;
    PastefromClipboard: TMenuItem;
    AddBreakPoint1: TMenuItem;
    ClearAllBreakpoints1: TMenuItem;
    DeleteBreakpoint1: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    AddBookmark1: TMenuItem;
    DeleteBookmark1: TMenuItem;
    ClearAllBookmarks1: TMenuItem;
    N8: TMenuItem;
    AddaMarker1: TMenuItem;
    DeletaMarker1: TMenuItem;
    ClearAllMarkers1: TMenuItem;
    AddBookmark2: TMenuItem;
    AddBreakPoint2: TMenuItem;
    AddMarker1: TMenuItem;
    ClearAllCodeBlocks2: TMenuItem;
    ShowEvents1: TMenuItem;
    MemoAutoCorrectSetup1: TMenuItem;
    Normal1: TMenuItem;
    Uppercase1: TMenuItem;
    Lowercase1: TMenuItem;
    N1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure OpenFile1Click(Sender: TObject);
    procedure SaveFile1Click(Sender: TObject);
    procedure SaveAs1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Preview1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Undo1Click(Sender: TObject);
    procedure Redo1Click(Sender: TObject);
    procedure Find2Click(Sender: TObject);
    procedure Find1Click(Sender: TObject);
    procedure MemoStylerClick(Sender: TObject);
    procedure Xml1Click(Sender: TObject);
    procedure None1Click(Sender: TObject);
    procedure AdvMemo1Enter(Sender: TObject);
    procedure New1Click(Sender: TObject);
    procedure AcceptFiles1Click(Sender: TObject);
    procedure AdvMemo1CursorChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure AdvMemo1Click(Sender: TObject);
    procedure SubMenu2Click(Sender: TObject);
    procedure AutoDisplay1Click(Sender: TObject);
    procedure AutoWidth1Click(Sender: TObject);
    procedure MemoAutoCorrectSetupClick(Sender: TObject);
    procedure EditAutoCompleteList1Click(Sender: TObject);
    procedure AutoExpand1Click(Sender: TObject);
    procedure AutoHintParamterPosition1Click(Sender: TObject);
    procedure AutoIndent1Click(Sender: TObject);
    procedure AutoHintParameters1Click(Sender: TObject);
    procedure BandColor1Click(Sender: TObject);
    procedure BlockShow1Click(Sender: TObject);
    procedure AdvMemo1DblClick(Sender: TObject);
    procedure CuttoClipboard1Click(Sender: TObject);
    procedure CopytoClipboard1Click(Sender: TObject);
    procedure PastefromClipboardClick(Sender: TObject);
    procedure cfText1Click(Sender: TObject);
    procedure cfRTF1Click(Sender: TObject);
    procedure cfHTML1Click(Sender: TObject);
    procedure AddBreakPoint1Click(Sender: TObject);
    procedure DeleteBreakpoint1Click(Sender: TObject);
    procedure ClearAllBreakpoints1Click(Sender: TObject);
    procedure ShowRightMargin1Click(Sender: TObject);
    procedure SmartTabs1Click(Sender: TObject);
    procedure abSize1Click(Sender: TObject);
    procedure rimTrailingspaces1Click(Sender: TObject);
    procedure UrlAware1Click(Sender: TObject);
    procedure UseStyler1Click(Sender: TObject);
    procedure WantTab1Click(Sender: TObject);
    procedure ClipboardView1Click(Sender: TObject);
    procedure MultiSelect1Click(Sender: TObject);
    procedure ShowSelection1Click(Sender: TObject);
    procedure Sorted1Click(Sender: TObject);
    procedure SyntaxStyles2Click(Sender: TObject);
    procedure AddBookmark1Click(Sender: TObject);
    procedure DeleteBookmark1Click(Sender: TObject);
    procedure ClearAllBookmarks1Click(Sender: TObject);
    procedure AddaMarker1Click(Sender: TObject);
    procedure Lines2Click(Sender: TObject);
    procedure Name1Click(Sender: TObject);
    procedure ReadOnly1Click(Sender: TObject);
    procedure Extensions1Click(Sender: TObject);
    procedure Font3Click(Sender: TObject);
    procedure extColor1Click(Sender: TObject);
    procedure exstColor1Click(Sender: TObject);
    procedure HintCharDelimiter1Click(Sender: TObject);
    procedure HintCharEnd1Click(Sender: TObject);
    procedure HinitCharStart1Click(Sender: TObject);
    procedure HintCharWriteDelimiter1Click(Sender: TObject);
    procedure Parameters1Click(Sender: TObject);
    procedure LineComment1Click(Sender: TObject);
    procedure MultiCommentLeft1Click(Sender: TObject);
    procedure MultiCommentRight1Click(Sender: TObject);
    procedure Name6Click(Sender: TObject);
    procedure AdvCodeList1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure AdvCodeList1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure AdvMemo1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure AdvMemo1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure RefreshAdvMemo1Click(Sender: TObject);
    procedure AdvMemo1ActiveLineChange(CurYPos: Integer);
    procedure ShowEvents1Click(Sender: TObject);
    procedure AdvMemo1AutoCompletion(Sender: TObject);
    procedure AdvMemo1BeforeAutoCompletion(Sender: TObject; AToken: string;
      var Show: Boolean);
    procedure AdvMemo1CancelAutoCompletion(Sender: TObject);
    procedure AdvMemo1Change(Sender: TObject);
    procedure AdvMemo1ClipboardAction(Sender: TObject;
      ClipboardAction: TMemoClipboardAction; var Allow: Boolean);
    procedure AdvMemo1ColumnChange(CurXPos: Integer);
    procedure AdvMemo1EndDock(Sender, Target: TObject; X, Y: Integer);
    procedure AdvMemo1EndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure AdvMemo1Exit(Sender: TObject);
    procedure AdvMemo1FileDrop(Sender: TObject; FileName: string;
      var DefaultHandler: Boolean);
    procedure AdvMemo1Find(Sender: TObject);
    procedure AdvMemo1GetAutoCompletionList(Sender: TObject; AToken: string;
      AList: TStringList);
    procedure AdvMemo1GetAutoCompletionListIndex(Sender: TObject;
      AToken: string; AList: TStringList; var AIndex: Integer);
    procedure AdvMemo1GetParameterHint(Sender: TObject; AToken: string;
      var AParameterHint: string; var Handled: Boolean);
    procedure AdvMemo1GutterClick(Sender: TObject; LineNo: Integer);
    procedure AdvMemo1GutterDblClick(Sender: TObject; LineNo: Integer);
    procedure AdvMemo1GutterRightClick(Sender: TObject; LineNo: Integer);
    procedure AdvMemo1HintForToken(Sender: TObject; X, Y: Integer;
      AValue: string; var AHint: string; var Show: Boolean);
    procedure AdvMemo1HintForWord(Sender: TObject; X, Y: Integer;
      AValue: string; var AHint: string; var Show: Boolean);
    procedure AdvMemo1InsertAutoCompletionEntry(Sender: TObject;
      var AEntry: string);
    procedure AdvMemo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdvMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure AdvMemo1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure AdvMemo1LineBkColor(Sender: TObject; LineNo: Integer;
      var BkColor: TColor);
    procedure AdvMemo1MarkerAdded(LnNo: Integer; MarkerText: string);
    procedure AdvMemo1MarkerRemoved(LnNo: Integer);
    procedure AdvMemo1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AdvMemo1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure AdvMemo1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AdvMemo1OverwriteToggle(Sender: TObject; var Allow: Boolean);
    procedure AdvMemo1Replace(Sender: TObject);
    procedure AdvMemo1ScrollHint(Sender: TObject; ARow: Integer;
      var hintstr: string);
    function AdvMemo1SortAutoCompletionList(Sender: TObject; List: TStringList;
      Index1, Index2: Integer): Integer;
    procedure AdvMemo1StartAutoCompletion(Sender: TObject);
    procedure AdvMemo1StartDock(Sender: TObject;
      var DragObject: TDragDockObject);
    procedure AdvMemo1StartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure AdvMemo1StatusChange(Sender: TObject);
    procedure AdvMemo1TextFound(Sender: TObject; X, Y: Integer);
    procedure AdvMemo1TopLeftChanged(Sender: TObject);
    procedure AdvMemo1UndoChange(Sender: TObject; CanUndo, CanRedo: Boolean);
    procedure AdvMemo1URLClick(Sender: TObject; URL: string);
    procedure AdvMemo1WordComplete(Sender: TObject; CurrentWord: string;
      var NewWord: string);
    procedure AdvCodeList1BlockClick(Sender: TObject; ACodeBlock: TCodeBlock);
    procedure AdvCodeList1BlockDblClick(Sender: TObject;
      ACodeBlock: TCodeBlock);
    procedure AdvCodeList1BlockDelete(Sender: TObject; ACodeBlock: TCodeBlock;
      var Allow: Boolean);
    procedure AdvCodeList1BlockDropped(Sender: TObject; ACodeBlock: TCodeBlock);
    procedure AdvCodeList1BlockInsertFromClipboard(Sender: TObject;
      ACodeBlock: TCodeBlock);
    procedure AdvCodeList1BlockRightClick(Sender: TObject;
      ACodeBlock: TCodeBlock);
    procedure AdvCodeList1Click(Sender: TObject);
    procedure AdvCodeList1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure AdvCodeList1DblClick(Sender: TObject);
    procedure AdvCodeList1DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure AdvCodeList1EndDock(Sender, Target: TObject; X, Y: Integer);
    procedure AdvCodeList1EndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure AdvCodeList1Enter(Sender: TObject);
    procedure AdvCodeList1Exit(Sender: TObject);
    procedure AdvCodeList1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdvCodeList1KeyPress(Sender: TObject; var Key: Char);
    procedure AdvCodeList1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdvCodeList1MeasureItem(Control: TWinControl; Index: Integer;
      var Height: Integer);
    procedure AdvCodeList1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AdvCodeList1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AdvCodeList1StartDock(Sender: TObject;
      var DragObject: TDragDockObject);
    procedure AdvCodeList1StartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure Gutter1Click(Sender: TObject);
    procedure CodeFolding1Click(Sender: TObject);
    procedure ActiveLineSettings1Click(Sender: TObject);
    procedure PrintOptions1Click(Sender: TObject);
    procedure Normal1Click(Sender: TObject);
    procedure Uppercase1Click(Sender: TObject);
    procedure Lowercase1Click(Sender: TObject);
    procedure DeletaMarker1Click(Sender: TObject);
    procedure ClearAllMarkers1Click(Sender: TObject);
    procedure ClearAllCodeBlocks2Click(Sender: TObject);
    procedure AdvMemo1CustomizeContextMenu(Sender: TObject; CurX, CurY: Integer;
      ContextMenu: TPopupMenu);
  private
    { Private declarations }
    procedure HintHandler(Sender: TObject);
    procedure LogEvent(S: string);
    procedure UpdateStatusBar;
  public
    { Public declarations }
    kar: string;
    function OpenMyFile(AdvMemoStyler: TAdvCustomMemoStyler):boolean;
    procedure StylerStyleType(Sender: TObject; Tag: Integer);
  end;

var
  FAdvMemoDemo01: TFAdvMemoDemo01;

implementation

uses
  UMemoInput, Uevents, UGridInput;

{$R *.dfm}

procedure TFAdvMemoDemo01.abSize1Click(Sender: TObject);
begin
  AdvMemo1.TabSize := StrToInt(InputBox('Please Enter ', 'TabSize : ', '2'));
end;

procedure TFAdvMemoDemo01.AcceptFiles1Click(Sender: TObject);
begin
  AdvMemo1.AcceptFiles := (Sender as TMenuItem).Checked;
end;

procedure TFAdvMemoDemo01.AddaMarker1Click(Sender: TObject);
begin
  AdvMemo1.AddMarker(AdvMemo1.ActiveLine, 7);
  UpdateStatusBar;
end;

procedure TFAdvMemoDemo01.AddBookmark1Click(Sender: TObject);
begin
  AdvMemo1.BookmarkIndex[AdvMemo1.ActiveLine] := AdvMemo1.BookmarkCount + 1;
end;

procedure TFAdvMemoDemo01.AddBreakPoint1Click(Sender: TObject);
begin
  AdvMemo1.BreakPoint[AdvMemo1.ActiveLine] := True ;
end;

procedure TFAdvMemoDemo01.AdvCodeList1BlockClick(Sender: TObject;
  ACodeBlock: TCodeBlock);
begin
  LogEvent('TAdvCodeList.OnBlockClick');

end;

procedure TFAdvMemoDemo01.AdvCodeList1BlockDblClick(Sender: TObject;
  ACodeBlock: TCodeBlock);
begin
  LogEvent('TAdvCodeList.OnBlockDblClick');
end;

procedure TFAdvMemoDemo01.AdvCodeList1BlockDelete(Sender: TObject;
  ACodeBlock: TCodeBlock; var Allow: Boolean);
begin

  LogEvent('TAdvCodeList.OnBlockDelete');
end;

procedure TFAdvMemoDemo01.AdvCodeList1BlockDropped(Sender: TObject;
  ACodeBlock: TCodeBlock);
begin
  LogEvent('TAdvCodeList.OnBlockDropped');
end;

procedure TFAdvMemoDemo01.AdvCodeList1BlockInsertFromClipboard(Sender: TObject;
  ACodeBlock: TCodeBlock);
begin
  LogEvent('TAdvCodeList.OnBlockInsertFromClipboard');
end;

procedure TFAdvMemoDemo01.AdvCodeList1BlockRightClick(Sender: TObject;
  ACodeBlock: TCodeBlock);
begin
  LogEvent('TAdvCodeList.OnBlockRightClick');
end;

procedure TFAdvMemoDemo01.AdvCodeList1Click(Sender: TObject);
begin
  LogEvent('TAdvCodeList.OnClick');
end;

procedure TFAdvMemoDemo01.AdvCodeList1ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  LogEvent('TAdvCodeList.OnContextPopup');
end;

procedure TFAdvMemoDemo01.AdvCodeList1DblClick(Sender: TObject);
begin
  LogEvent('TAdvCodeList.OnDblClick');
end;

procedure TFAdvMemoDemo01.AdvCodeList1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  Advcodelist1.CodeBlocks.Add(advmemo1.Selection);
  AdvCodeList1.CodeBlocks[AdvCodeList1.CodeBlocks.Count - 1].ImageIndex := 0;
end;

procedure TFAdvMemoDemo01.AdvCodeList1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (source is TAdvMemo);
end;

procedure TFAdvMemoDemo01.AdvCodeList1DrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
  LogEvent('TAdvCodeList.OnDrawItem');
end;

procedure TFAdvMemoDemo01.AdvCodeList1EndDock(Sender, Target: TObject; X,
  Y: Integer);
begin
  LogEvent('TAdvCodeList.OnEndDock');
end;

procedure TFAdvMemoDemo01.AdvCodeList1EndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
  LogEvent('TAdvCodeList.OnEndDrag');
end;

procedure TFAdvMemoDemo01.AdvCodeList1Enter(Sender: TObject);
begin
  LogEvent('TAdvCodeList.OnEnter');
end;

procedure TFAdvMemoDemo01.AdvCodeList1Exit(Sender: TObject);
begin
  LogEvent('TAdvCodeList.OnExit');
end;

procedure TFAdvMemoDemo01.AdvCodeList1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  LogEvent('TAdvCodeList.OnKeyDown');
end;

procedure TFAdvMemoDemo01.AdvCodeList1KeyPress(Sender: TObject; var Key: Char);
begin
//  LogEvent('TAdvCodeList.OnKeyPress');
end;

procedure TFAdvMemoDemo01.AdvCodeList1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  LogEvent('TAdvCodeList.OnKeyUp');
end;

procedure TFAdvMemoDemo01.AdvCodeList1MeasureItem(Control: TWinControl;
  Index: Integer; var Height: Integer);
begin
  LogEvent('TAdvCodeList.OnMeasureItem');
  LogEvent('MeasureItem : ' + inttostr(Index)+ 'Height : ' + inttostr(Height));
end;

procedure TFAdvMemoDemo01.AdvCodeList1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  LogEvent('TAdvCodeList.OnMouseDown');
end;

procedure TFAdvMemoDemo01.AdvCodeList1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  LogEvent('TAdvCodeList.OnMouseUp');
end;

procedure TFAdvMemoDemo01.AdvCodeList1StartDock(Sender: TObject;
  var DragObject: TDragDockObject);
begin
  LogEvent('TAdvCodeList.OnStartDock');
end;

procedure TFAdvMemoDemo01.AdvCodeList1StartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  LogEvent('TAdvCodeList.OnStartDrag');
end;

procedure TFAdvMemoDemo01.AdvMemo1ActiveLineChange(CurYPos: Integer);
begin
//  LogEvent('TAdvMemo.OnActiveLineChange');
end;

procedure TFAdvMemoDemo01.AdvMemo1AutoCompletion(Sender: TObject);
begin
  LogEvent('TAdvMemo.OnAutoCompletion');
end;

procedure TFAdvMemoDemo01.AdvMemo1BeforeAutoCompletion(Sender: TObject;
  AToken: string; var Show: Boolean);
begin
  LogEvent('TAdvMemo.AdvMemo1BeforeAutoCompletion');
end;

procedure TFAdvMemoDemo01.AdvMemo1CancelAutoCompletion(Sender: TObject);
begin
  LogEvent('TAdvMemo.AdvMemo1CancelAutoCompletion');
end;

procedure TFAdvMemoDemo01.AdvMemo1Change(Sender: TObject);
begin
//  LogEvent('TAdvMemo.OnChange');
  LogEvent('TAdvMemo.Modified : ' + BoolToStr(AdvMemo1.Modified));
end;

procedure TFAdvMemoDemo01.AdvMemo1Click(Sender: TObject);
begin
  LogEvent('TAdvMemo.OnClick');
  AdvMemo1CursorChange(Sender);
end;

procedure TFAdvMemoDemo01.AdvMemo1ClipboardAction(Sender: TObject;
  ClipboardAction: TMemoClipboardAction; var Allow: Boolean);
begin
  LogEvent('TAdvMemo.OnClipBoardAction');
end;

procedure TFAdvMemoDemo01.AdvMemo1ColumnChange(CurXPos: Integer);
begin
//  LogEvent('TAdvMemo.OnColumnChange');
end;

procedure TFAdvMemoDemo01.AdvMemo1CursorChange(Sender: TObject);
begin
//  LogEvent('TAdvMemo.OnCursorChange');
  UpdateStatusBar;
end;

procedure TFAdvMemoDemo01.AdvMemo1CustomizeContextMenu(Sender: TObject; CurX,
  CurY: Integer; ContextMenu: TPopupMenu);
var
  i: integer;
  mnu: TMenuItem;
begin
  for i := 0 to AdvMemoPopupMenu1.Items.Count - 1 do
  begin
    mnu := TMenuItem.Create(ContextMenu);
    mnu.Caption := AdvMemoPopupMenu1.Items[i].Caption;
    mnu.OnClick := AdvMemoPopupMenu1.Items[i].OnClick;
    mnu.Break := AdvMemoPopupMenu1.Items[i].Break;
    mnu.Checked := AdvMemoPopupMenu1.Items[i].Checked;
    mnu.RadioItem := AdvMemoPopupMenu1.Items[i].RadioItem;

    if ContextMenu.Items.IndexOf(mnu) = -1 then
      ContextMenu.Items.Add(mnu);
  end;

end;

procedure TFAdvMemoDemo01.AdvMemo1DblClick(Sender: TObject);
begin
  LogEvent('TAdvMemo.OnDoubleClick');
end;

procedure TFAdvMemoDemo01.AdvMemo1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  LogEvent('TAdvMemo.OnDragDrop');
  if (source is tadvcodelist) then
    begin
      AdvMemo1.DropText(x,y,advcodelist1.CodeBlocks.Items[advcodelist1.itemindex].Code.Text);
    end;
end;

procedure TFAdvMemoDemo01.AdvMemo1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := true;
end;

procedure TFAdvMemoDemo01.AdvMemo1EndDock(Sender, Target: TObject; X,
  Y: Integer);
begin
  LogEvent('TAdvMemo.OnEndDock');
end;

procedure TFAdvMemoDemo01.AdvMemo1EndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
  LogEvent('TAdvMemo.OnEndDrag');
end;

procedure TFAdvMemoDemo01.AdvMemo1Enter(Sender: TObject);
var
  acol,arow, MyTextFromPos: integer;
  MyWordTillCursor, MyWordAtCursor, crlf: string;
  FPos: TFullPos;
begin
  crlf := #13 + #10;
  LogEvent('TAdvMemo.OnEnter');
  AdvMemo1.BeginUpdate;

  AdvMemo1.TabSize := 2;
  AdvMemo1.TabStop := True;
  AdvMemo1.AutoIndent := True;

//  ShowMessage((booltostr(AdvMemo1.IsEmpty);
//  AdvMemo1.SelectAll;
//  AdvMemo1.DeleteLine;
//  AdvMemo1.ClearModified;

  advMemo1.ActiveLine := 14;
  AdvMemo1.Lines.Insert(14, '//01');
  AdvMemo1.Lines.Insert(15, '//02');
  AdvMemo1.DropText(120,240,' AdvMemo1.DropText(120,240);');
  AdvMemo1.DropText(120,260,' AdvMemo1.DropText(120,260);');

  AdvMemo1.MouseToCursor(190,240, Acol,Arow);
  AdvMemo1.SetCursor(ACol, Arow);
  MyWordTillCursor := AdvMemo1.WordTillCursor;
  AdvMemo1.SetError(ARow, ACol-length(MyWordTillCursor), length(MyWordTillCursor));

  AdvMemo1.MouseToCursor(200,240, Acol, ARow);
  AdvMemo1.SetCursor(ACol, Arow);
  MyWordAtCursor := AdvMemo1.WordAtCursor;
  AdvMemo1.SetError(ARow, ACol, length(MyWordAtCursor));

//  AdvMemo1.ClearWordError(Arow,Acol);
//  AdvMemo1.ClearErrors;

  FPos := AdvMemo1.CharFromPos(198,240);
  AdvMemo1.TextFromPos(71, 10, MyTextFromPos);
  Acol := 20;
  AdvMemo1.SetCursor(Acol, Arow);

  LogEvent('WordAtCursorPos := ' + AdvMemo1.WordAtCursorPos(ACol));
  LogEvent('WordAtXY := ' + AdvMemo1.WordAtXY(ACol, Arow));
  LogEvent('FullWordAtXY := ' + AdvMemo1.FullWordAtXY(ACol, Arow));
  LogEvent('FullWordAtCursor := ' + AdvMemo1.FullWordAtCursor);

  LogEvent('FindTextPos(''DropText'', [frDown]) =  '+ inttostr(AdvMemo1.FindTextPos('DropText', [frDown])));
  LogEvent('FindTextCount(''DropText'', [frDown]) =  '+ inttostr(AdvMemo1.FindTextCount('DropText', [frDown])));
  LogEvent('FindText(''DropText'', [frDown]) =  '+ inttostr(AdvMemo1.FindText('DropText', [frDown])));
  LogEvent('FindTextInMemo(''DropText'', [frDown]) =  '+ inttostr(AdvMemo1.FindTextInMemo('DropText', [frDown])));

  AdvMemo1.SetCursor(1, 10);

  LogEvent('CurX = '+ inttostr(AdvMemo1.CurX));
  LogEvent('CurY = '+ inttostr(AdvMemo1.CurY));

  AdvMemo1.CurX:=50;

  AdvMemo1.TopLine := 11;
  LogEvent('TopLine = '+ inttostr(AdvMemo1.TopLine));
  LogEvent('LeftCol = '+ inttostr(AdvMemo1.LeftCol));

  AdvMemo1.WordWrap := wwRightMargin;
//  AdvMemo1.LeftCol := 30;
  AdvCodeList1.ClipboardView:=True;

  AdvMemo1.SelectSingleLine := True;

  if AdvMemo1.WordIsURL('ttp://www.tmssoftware.com)') then showmessage('url ok');  //  AdvMemo1.clear;
  if AdvMemo1.AddCodeFolding(17, 25) then showmessage('codefolding item created');

  AdvMemo1.BlockIndent(30, 37, 10);

  AdvMemo1.AutoCodeFold;

  AdvMemo1.SaveToHTML('TestSaveToHTML.htm');

  LogEvent('GetVersionNr = '+ inttostr(AdvMemo1.GetVersionNr));
  LogEvent('GetVersionString = '+ AdvMemo1.GetVersionString);

  AdvMemo1.SetStyle(msOffice2010Black);
// AdvMemo1.SetComponentStyle(tsOffice2003Olive);

  AdvMemo1.EndUpdate;
end;

procedure TFAdvMemoDemo01.AdvMemo1Exit(Sender: TObject);
begin
  LogEvent('TAdvMemo.OnExit');
  LogEvent('SelStartX, SelStartY, SelEndX, SelEndY :'+
      inttostr(AdvMemo1.SelStartX)+'/'+inttostr(AdvMemo1.SelStartY)+'/'+inttostr(AdvMemo1.SelEndX)+'/'+inttostr(AdvMemo1.SelEndY));
end;

procedure TFAdvMemoDemo01.AdvMemo1FileDrop(Sender: TObject; FileName: string;
  var DefaultHandler: Boolean);
begin
  LogEvent('TAdvMemo.OnFileDrop');
end;

procedure TFAdvMemoDemo01.AdvMemo1Find(Sender: TObject);
begin
  LogEvent('TAdvMemo.OnFind');
end;

procedure TFAdvMemoDemo01.AdvMemo1GetAutoCompletionList(Sender: TObject;
  AToken: string; AList: TStringList);
begin
  LogEvent('TAdvMemo.OnGetAutoCompletionList');
  if pos('BUTTON',UpperCase(AToken)) > 0 then
  begin
    ALIst.AddObject('procedure Show;', TObject(ttMethod));
    ALIst.AddObject('procedure SetFocus;', TObject(ttMethod));
    ALIst.AddObject('property Caption string', TObject(ttProp));
    ALIst.AddObject('property Name string', TObject(ttProp));
    ALIst.AddObject('property Top integer', TObject(ttProp));
    ALIst.AddObject('property Left integer', TObject(ttProp));
    ALIst.AddObject('property Enabled boolean', TObject(ttProp));
    ALIst.AddObject('event OnCreate TNotifyEvent', TObject(ttEvent));
  end;
end;

procedure TFAdvMemoDemo01.AdvMemo1GetAutoCompletionListIndex(Sender: TObject;
  AToken: string; AList: TStringList; var AIndex: Integer);
begin
  LogEvent('TAdvMemo.OnGetAutoCompletionListIndex');
end;

procedure TFAdvMemoDemo01.AdvMemo1GetParameterHint(Sender: TObject;
  AToken: string; var AParameterHint: string; var Handled: Boolean);
begin
  LogEvent('TAdvMemo.OnGetParameterHint');
end;

procedure TFAdvMemoDemo01.AdvMemo1GutterClick(Sender: TObject; LineNo: Integer);
begin
  AdvMemo1.BreakPoint[LineNo] := not AdvMemo1.BreakPoint[LineNo];
  LogEvent('TAdvMemo.OnGutterClick');
end;

procedure TFAdvMemoDemo01.AdvMemo1GutterDblClick(Sender: TObject;
  LineNo: Integer);
begin
  LogEvent('TAdvMemo.OnGutterDoubleClick');
end;

procedure TFAdvMemoDemo01.AdvMemo1GutterRightClick(Sender: TObject;
  LineNo: Integer);
begin
  LogEvent('TAdvMemo.OnGutterRightClick');
end;

procedure TFAdvMemoDemo01.AdvMemo1HintForToken(Sender: TObject; X, Y: Integer;
  AValue: string; var AHint: string; var Show: Boolean);
begin
  LogEvent('TAdvMemo.OnHintForToken');
end;

procedure TFAdvMemoDemo01.AdvMemo1HintForWord(Sender: TObject; X, Y: Integer;
  AValue: string; var AHint: string; var Show: Boolean);
begin
  LogEvent('TAdvMemo.OnHintForWord');
end;

procedure TFAdvMemoDemo01.AdvMemo1InsertAutoCompletionEntry(Sender: TObject;
  var AEntry: string);
begin
  LogEvent('TAdvMemo.OnInsertAutoCompletionEntry');
end;

procedure TFAdvMemoDemo01.AdvMemo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  LogEvent('TAdvMemo.OnKeyDown');
end;

procedure TFAdvMemoDemo01.AdvMemo1KeyPress(Sender: TObject; var Key: Char);
begin
//  LogEvent('TAdvMemo.OnKeyPress');
end;

procedure TFAdvMemoDemo01.AdvMemo1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  LogEvent('TAdvMemo.OnKeyUp');
end;

procedure TFAdvMemoDemo01.AdvMemo1LineBkColor(Sender: TObject; LineNo: Integer;
  var BkColor: TColor);
begin
//  LogEvent('TAdvMemo.OnLineBkColor');
end;

procedure TFAdvMemoDemo01.AdvMemo1MarkerAdded(LnNo: Integer;
  MarkerText: string);
begin
  LogEvent('TAdvMemo.OnMarkerAdded');
end;

procedure TFAdvMemoDemo01.AdvMemo1MarkerRemoved(LnNo: Integer);
begin
  LogEvent('TAdvMemo.OnMarkerRemoved');
end;

procedure TFAdvMemoDemo01.AdvMemo1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  LogEvent('TAdvMemo.OnMouseDown');
end;

procedure TFAdvMemoDemo01.AdvMemo1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
//  LogEvent('TAdvMemo.OnMousMove');
end;

procedure TFAdvMemoDemo01.AdvMemo1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  LogEvent('TAdvMemo.OnMouseUp');
end;

procedure TFAdvMemoDemo01.AdvMemo1OverwriteToggle(Sender: TObject;
  var Allow: Boolean);
begin
  LogEvent('TAdvMemo.OnOverWriteToggle');
end;

procedure TFAdvMemoDemo01.AdvMemo1Replace(Sender: TObject);
begin
  LogEvent('TAdvMemo.OnReplace');
end;

procedure TFAdvMemoDemo01.AdvMemo1ScrollHint(Sender: TObject; ARow: Integer;
  var hintstr: string);
begin
  LogEvent('TAdvMemo.OnScrollHint');
end;

function TFAdvMemoDemo01.AdvMemo1SortAutoCompletionList(Sender: TObject;
  List: TStringList; Index1, Index2: Integer): Integer;
begin
  LogEvent('TAdvMemo.OnSortAutoCompletionList');
  Result := 0;
end;

procedure TFAdvMemoDemo01.AdvMemo1StartAutoCompletion(Sender: TObject);
begin
  LogEvent('TAdvMemo.OnStartAutoCompletion');
end;

procedure TFAdvMemoDemo01.AdvMemo1StartDock(Sender: TObject;
  var DragObject: TDragDockObject);
begin
  LogEvent('TAdvMemo.OnStartDock');
end;

procedure TFAdvMemoDemo01.AdvMemo1StartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  LogEvent('TAdvMemo.OnStartDrag');
end;

procedure TFAdvMemoDemo01.AdvMemo1StatusChange(Sender: TObject);
begin
  LogEvent('TAdvMemo.OnStatusChange');
end;

procedure TFAdvMemoDemo01.AdvMemo1TextFound(Sender: TObject; X, Y: Integer);
begin
  LogEvent('TAdvMemo.OnTextFound');
end;

procedure TFAdvMemoDemo01.AdvMemo1TopLeftChanged(Sender: TObject);
begin
  UpdateStatusBar;
end;

procedure TFAdvMemoDemo01.AdvMemo1UndoChange(Sender: TObject; CanUndo,
  CanRedo: Boolean);
begin
  LogEvent('TAdvMemo.OnUndoChange');
end;

procedure TFAdvMemoDemo01.AdvMemo1URLClick(Sender: TObject; URL: string);
begin
  LogEvent('TAdvMemo.OnUrlClick');
end;

procedure TFAdvMemoDemo01.AdvMemo1WordComplete(Sender: TObject;
  CurrentWord: string; var NewWord: string);
begin
  LogEvent('TAdvMemo.OnWordComplete');
end;

procedure TFAdvMemoDemo01.AutoDisplay1Click(Sender: TObject);
begin
  AdvMemo1.AutoCompletion.AutoDisplay := (Sender as TMenuItem).Checked;
end;

procedure TFAdvMemoDemo01.AutoExpand1Click(Sender: TObject);
begin
  AdvMemo1.AutoExpand := (Sender as TMenuItem).Checked;
end;

procedure TFAdvMemoDemo01.AutoHintParameters1Click(Sender: TObject);
begin
  AdvMemo1.AutoHintParameters := TAutoHintParameters((Sender as TMenuItem).Tag);
end;

procedure TFAdvMemoDemo01.AutoHintParamterPosition1Click(Sender: TObject);
begin
  AdvMemo1.AutoHintParameterPosition := TAutoHintParameterPosition((Sender as TMenuItem).Tag);
end;

procedure TFAdvMemoDemo01.AutoIndent1Click(Sender: TObject);
begin
  AdvMemo1.AutoIndent := (Sender as TMenuItem).Checked;
end;

procedure TFAdvMemoDemo01.AutoWidth1Click(Sender: TObject);
begin
  AdvMemo1.AutoCompletion.AutoWidth := (Sender as TMenuItem).Checked;
end;

function TFAdvMemoDemo01.OpenMyFile(AdvMemoStyler: TAdvCustomMemoStyler): boolean;
begin
  try
    Result := True;
    AdvMemo1.SyntaxStyles := AdvMemoStyler;
    AdvCodeList1.SyntaxStyles := AdvMemoStyler;
    OpenDialog1.Filter := AdvMemoStyler.Filter;
    OpenDialog1.DefaultExt := AdvMemoStyler.DefaultExtension;
    if OpenDialog1.Execute then
      AdvMemo1.Lines.LoadFromFile(OpenDialog1.FileName);
  except
    result := False;
  end;
end;

procedure TFAdvMemoDemo01.BandColor1Click(Sender: TObject);
begin
  if (Sender as TMenuItem).Checked then
    AdvMemo1.BandColor := clInfoBk
  else
    AdvMemo1.BandColor := clNone;
end;

procedure TFAdvMemoDemo01.MemoStylerClick(Sender: TObject);
begin
  OpenMyFile(AdvmemoStylerManager1.GetStyler((Sender as TMenuItem).Tag));
end;

procedure TFAdvMemoDemo01.BlockShow1Click(Sender: TObject);
begin
  AdvMemo1.BlockShow := (Sender as TMenuItem).Checked;
end;

procedure TFAdvMemoDemo01.cfHTML1Click(Sender: TObject);
begin
  if (Sender as TMenuItem).Checked then
    AdvMemo1.ClipBoardFormats := AdvMemo1.ClipBoardFormats + [cfHTML]
  else
    AdvMemo1.ClipBoardFormats := AdvMemo1.ClipBoardFormats - [cfHTML];
end;

procedure TFAdvMemoDemo01.cfRTF1Click(Sender: TObject);
begin
  if (Sender as TMenuItem).Checked then
    AdvMemo1.ClipBoardFormats := AdvMemo1.ClipBoardFormats + [cfRTF]
  else
    AdvMemo1.ClipBoardFormats := AdvMemo1.ClipBoardFormats - [cfRTF];
end;

procedure TFAdvMemoDemo01.cfText1Click(Sender: TObject);
begin
  if (Sender as TMenuItem).Checked then
    AdvMemo1.ClipBoardFormats := AdvMemo1.ClipBoardFormats + [cfText]
  else
    AdvMemo1.ClipBoardFormats := AdvMemo1.ClipBoardFormats - [cfText];
end;

procedure TFAdvMemoDemo01.ClearAllBookmarks1Click(Sender: TObject);
begin
  AdvMemo1.ClearBookMarks;
end;

procedure TFAdvMemoDemo01.ClearAllBreakpoints1Click(Sender: TObject);
begin
  AdvMemo1.ClearBreakPoints;
end;

procedure TFAdvMemoDemo01.ClearAllCodeBlocks2Click(Sender: TObject);
begin
  AdvCodeList1.CodeBlocks.Clear;
end;

procedure TFAdvMemoDemo01.ClearAllMarkers1Click(Sender: TObject);
begin
  AdvMemo1.ClearAllMarkers;
  UpdateStatusBar;
end;

procedure TFAdvMemoDemo01.ClipboardView1Click(Sender: TObject);
begin
  AdvCodeList1.ClipBoardView := (Sender as TMenuItem).Checked;
end;

procedure TFAdvMemoDemo01.CodeFolding1Click(Sender: TObject);
begin
  AdvMemo1.CodeFolding.Enabled := (Sender as TMenuItem).Checked;
end;

procedure TFAdvMemoDemo01.CopytoClipboard1Click(Sender: TObject);
begin
  AdvMemo1.CopyToClipBoard;
end;

procedure TFAdvMemoDemo01.CuttoClipboard1Click(Sender: TObject);
begin
  AdvMemo1.CutToClipBoard;
end;

procedure TFAdvMemoDemo01.DeletaMarker1Click(Sender: TObject);
begin
  AdvMemo1.RemoveMarker(Advmemo1.CurY);
  UpdateStatusBar;
end;

procedure TFAdvMemoDemo01.DeleteBookmark1Click(Sender: TObject);
begin
  AdvMemo1.Bookmark[AdvMemo1.ActiveLine] := False;
end;

procedure TFAdvMemoDemo01.DeleteBreakpoint1Click(Sender: TObject);
begin
  AdvMemo1.BreakPoint[AdvMemo1.ActiveLine] := False;
end;

procedure TFAdvMemoDemo01.EditAutoCompleteList1Click(Sender: TObject);
var
  ridx:integer;
begin
  with AdvPascalMemoStyler1.AutoCompletion do
  begin
     for ridx := 0 to AdvPascalMemoStyler1.AllStyles[0].KeyWords.Count - 1 do
       Add(AdvPascalMemoStyler1.AllStyles[0].KeyWords[ridx]);
     for ridx := 0 to Count - 1 do
       FMemoInput.AdvMemo1.Lines.add(AdvPascalMemoStyler1.AutoCompletion.Strings[ridx]);
  end;
  FMemoInput.Show;
end;

procedure TFAdvMemoDemo01.Exit1Click(Sender: TObject);
begin
  FAdvMemoDemo01.Close;
end;

procedure TFAdvMemoDemo01.exstColor1Click(Sender: TObject);
begin
  if ColorDialog1.Execute then
     AdvPascalMemoStyler1.HintParameter.TextColor := ColorDialog1.Color;
end;

procedure TFAdvMemoDemo01.extColor1Click(Sender: TObject);
begin
  if ColorDialog1.Execute then
     AdvPascalMemoStyler1.CommentStyle.TextColor := ColorDialog1.Color;
end;

procedure TFAdvMemoDemo01.Extensions1Click(Sender: TObject);
begin
  AdvPascalMemoStyler1.Extensions := InputBox('Please Enter ', 'Extensions : ', 'pas;dpr;dpk;inc');
end;

procedure TFAdvMemoDemo01.Find1Click(Sender: TObject);
begin
  AdvMemoFindReplaceDialog1.Execute;
end;

procedure TFAdvMemoDemo01.Find2Click(Sender: TObject);
begin
  AdvMemoFindDialog1.Execute;
end;

procedure TFAdvMemoDemo01.HinitCharStart1Click(Sender: TObject);
begin
  kar := InputBox('Please Enter ', 'HintCharStart : ', '(');
  AdvPascalMemoStyler1.HintParameter.HintCharStart := kar[1];
end;

procedure TFAdvMemoDemo01.HintCharDelimiter1Click(Sender: TObject);
begin
  kar := InputBox('Please Enter ', 'HintCharDelimiter : ', ';');
  AdvPascalMemoStyler1.HintParameter.HintCharDelimiter := kar[1];
end;

procedure TFAdvMemoDemo01.HintCharEnd1Click(Sender: TObject);
begin
  kar := InputBox('Please Enter ', 'HintCharEnd : ', ')');
  AdvPascalMemoStyler1.HintParameter.HintCharEnd := kar[1];
end;

procedure TFAdvMemoDemo01.HintCharWriteDelimiter1Click(Sender: TObject);
begin
  kar := InputBox('Please Enter ', 'HintCharWriteDelimiter : ', ',');
  AdvPascalMemoStyler1.HintParameter.HintCharWriteDelimiter := kar[1];
end;

procedure TFAdvMemoDemo01.HintHandler(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := Application.Hint;
end;

procedure TFAdvMemoDemo01.Font3Click(Sender: TObject);
begin
  if FontDialog1.Execute then
    AdvPascalMemoStyler1.AllStyles[0].Font := FontDialog1.Font;
end;

procedure TFAdvMemoDemo01.FormCreate(Sender: TObject);
begin
  AutoCompletionImageList1.AddImages(MarkerImageList1);
  CodeListImages1.AddImages(MarkerImageList1);
  StatusBar1.Panels[0].width := StatusBar1.Width-(StatusBar1.Panels[1].Width+StatusBar1.Panels[2].Width+StatusBar1.Panels[3].Width+StatusBar1.Panels[4].Width);
  Application.OnHint := HintHandler;
  AdvCodeList1.SyntaxStyles := AdvMemo1.SyntaxStyles;
  AdvMemo1.Lines.LoadFromFile('.\uAdvMemoDemo01.pas');
end;

procedure TFAdvMemoDemo01.FormResize(Sender: TObject);
begin
  StatusBar1.Panels[0].width := StatusBar1.Width-(StatusBar1.Panels[1].Width+StatusBar1.Panels[2].Width+StatusBar1.Panels[3].Width+StatusBar1.Panels[4].Width);
  AdvMemo1CursorChange(Sender);
end;

procedure TFAdvMemoDemo01.LineComment1Click(Sender: TObject);
begin
  AdvPascalMemoStyler1.LineComment := InputBox('Please Enter ', 'LineComment : ', '//');
end;

procedure TFAdvMemoDemo01.Lines2Click(Sender: TObject);
begin
  FMemoInput.AdvMemo1.MemoSource := FAdvMemoDemo01.AdvMemoSource1;
  FMemoInput.Show;
end;

procedure TFAdvMemoDemo01.LogEvent(S: string);
begin
  if Assigned(FEvents) then
    FEvents.MEvents.Lines.Add(S);
end;

procedure TFAdvMemoDemo01.Lowercase1Click(Sender: TObject);
begin
  AdvMemo1.CharCase := ecLowerCase;
end;

procedure TFAdvMemoDemo01.MultiCommentLeft1Click(Sender: TObject);
begin
  AdvPascalMemoStyler1.MultiCommentLeft := InputBox('Please Enter ', 'MultiCommentLeft : ', '{');
end;

procedure TFAdvMemoDemo01.MultiCommentRight1Click(Sender: TObject);
begin
  AdvPascalMemoStyler1.MultiCommentRight := InputBox('Please Enter ', 'MultiCommentRight : ', '}');
end;

procedure TFAdvMemoDemo01.MultiSelect1Click(Sender: TObject);
begin
  AdvCodeList1.MultiSelect := (Sender as TMenuItem).Checked;
end;

procedure TFAdvMemoDemo01.Xml1Click(Sender: TObject);
begin
//
end;

procedure TFAdvMemoDemo01.Name1Click(Sender: TObject);
begin
  AdvMemoSource1.Name := InputBox('Please Enter ', 'Name : ', '');
end;

procedure TFAdvMemoDemo01.Name6Click(Sender: TObject);
begin
  AdvPascalMemoStyler1.Name := InputBox('Please Enter ', 'Name : ', '');
end;

procedure TFAdvMemoDemo01.New1Click(Sender: TObject);
begin
  AdvMemo1.Clear;
end;

procedure TFAdvMemoDemo01.None1Click(Sender: TObject);
begin
AdvMemo1.SyntaxStyles := nil;
end;

procedure TFAdvMemoDemo01.Normal1Click(Sender: TObject);
begin
  AdvMemo1.CharCase := ecNormal;
end;

procedure TFAdvMemoDemo01.OpenFile1Click(Sender: TObject);
begin
try
  if OpenDialog1.Execute then
    AdvMemo1.Lines.LoadFromFile(OpenDialog1.FileName);
except
  end;

// Afhankelijk van de extensie de goede styler kiezen
end;

procedure TFAdvMemoDemo01.Parameters1Click(Sender: TObject);
begin
// lijst opvragen
end;

procedure TFAdvMemoDemo01.PastefromClipboardClick(Sender: TObject);
begin
  AdvMemo1.PasteFromClipBoard;
end;

procedure TFAdvMemoDemo01.Preview1Click(Sender: TObject);
begin
//
end;

procedure TFAdvMemoDemo01.Print1Click(Sender: TObject);
begin
  if PrinterSetupDialog1.Execute then
    AdvMemo1.Print;
end;

procedure TFAdvMemoDemo01.PrintOptions1Click(Sender: TObject);
begin
  AdvMemo1.PrintOptions.PrintLineNumbers := (Sender as TMenuItem).Checked;
end;

procedure TFAdvMemoDemo01.ReadOnly1Click(Sender: TObject);
begin
  AdvMemoSource1.ReadOnly := (Sender as TMenuItem).Checked;
end;

procedure TFAdvMemoDemo01.Redo1Click(Sender: TObject);
begin
  AdvMemo1.Redo;
end;

procedure TFAdvMemoDemo01.RefreshAdvMemo1Click(Sender: TObject);
begin
  AdvMemo1.RefreshMemo;
end;

procedure TFAdvMemoDemo01.rimTrailingspaces1Click(Sender: TObject);
begin
  AdvMemo1.TrimTrailingSpaces := (Sender as TMenuItem).Checked;
end;

procedure TFAdvMemoDemo01.SaveAs1Click(Sender: TObject);
begin
  try
    SaveDialog1.Filter := OpenDialog1.Filter;
    SaveDialog1.DefaultExt := OpenDialog1.DefaultExt;
    if SaveDialog1.Execute then
      AdvMemo1.Lines.SaveToFile(SaveDialog1.FileName);
  except
    Showmessage('Error saving to file '+SaveDialog1.FileName);
  end;
end;

procedure TFAdvMemoDemo01.SaveFile1Click(Sender: TObject);
begin
  try
    AdvMemo1.Lines.SaveToFile(OpenDialog1.FileName);
  except
    Showmessage('Error saving to file '+OpenDialog1.FileName);
  end;
end;

procedure TFAdvMemoDemo01.ShowEvents1Click(Sender: TObject);
begin
  FEvents.Show;
end;

procedure TFAdvMemoDemo01.ShowRightMargin1Click(Sender: TObject);
begin
  AdvMemo1.ShowRightMargin := (Sender as TMenuItem).Checked;
end;

procedure TFAdvMemoDemo01.ShowSelection1Click(Sender: TObject);
begin
  AdvCodeList1.ShowSelection := (Sender as TMenuItem).Checked;
end;

procedure TFAdvMemoDemo01.SmartTabs1Click(Sender: TObject);
begin
  AdvMemo1.SmartTabs := (Sender as TMenuItem).Checked;
end;

procedure TFAdvMemoDemo01.Sorted1Click(Sender: TObject);
begin
  AdvCodeList1.Sorted := (Sender as TMenuItem).Checked;
end;

procedure TFAdvMemoDemo01.StylerStyleType(Sender: TObject; Tag: Integer);
begin
  if (Sender as TMenuItem).Checked then
    AdvPascalMemoStyler1.AllStyles[Tag].StyleType := TStyleType((Sender as TMenuItem).Tag);
end;

procedure TFAdvMemoDemo01.SubMenu2Click(Sender: TObject);
begin
  AdvMemo1.AutoCompletion.Active := (Sender as TMenuItem).Checked;
end;

procedure TFAdvMemoDemo01.MemoAutoCorrectSetupClick(Sender: TObject);
var
  ridx:integer;
begin
  with AdvMemo1.AutoCorrect do
  begin
     OldValue.Clear;
     NewValue.Clear;

     FGridInput.InputGrid1.Cells[0,0] := 'Old Value';
     FGridInput.InputGrid1.cells[1,0] := 'New Value';

     OldValue.Add('teh'); NewValue.Add('the');
     OldValue.Add('qiuck'); NewValue.Add('quick');
     OldValue.Add('brovn'); NewValue.Add('brown');
     OldValue.Add('ox'); NewValue.Add('fox');
     OldValue.Add('jumbs'); NewValue.Add('jumps');
     OldValue.Add('ovr'); NewValue.Add('over');
     OldValue.Add('eth'); NewValue.Add('the');
     OldValue.Add('lazie'); NewValue.Add('lazy');
     OldValue.Add('frog'); NewValue.Add('dog');

     for ridx := 0 to OldValue.Count - 1 do
       begin
         FGridInput.InputGrid1.Cells[0, ridx + 1] := OldValue[ridx];
         FGridInput.InputGrid1.Cells[1, ridx + 1] := NewValue[ridx];
       end;
  end;
  FGridInput.Show;
end;

procedure TFAdvMemoDemo01.SyntaxStyles2Click(Sender: TObject);
begin
//  AdvCodeList1.UseStyler := TAdvCustomMemoStyler((Sender as TMenuItem).Tag);
  AdvCodeList1.UseStyler := (Sender as TMenuItem).Checked;
end;

procedure TFAdvMemoDemo01.Gutter1Click(Sender: TObject);
begin
  AdvMemo1.Gutter.Visible := (Sender as TMenuItem).Checked;
end;

procedure TFAdvMemoDemo01.ActiveLineSettings1Click(Sender: TObject);
begin
  AdvMemo1.ActiveLineSettings.ShowActiveLine := (Sender as TMenuItem).Checked;
  AdvMemo1.ActiveLineSettings.ActiveLineAtCursor := true; ;
end;

procedure TFAdvMemoDemo01.Undo1Click(Sender: TObject);
begin
  AdvMemo1.Undo;
end;

procedure TFAdvMemoDemo01.UpdateStatusBar;
begin
  StatusBar1.Panels[1].Text := 'Left col: '+inttostr(AdvMemo1.LeftCol);
  StatusBar1.Panels[2].Text := 'Top line: '+inttostr(AdvMemo1.TopLine);
  StatusBar1.Panels[3].Text := 'X: ' + inttostr(AdvMemo1.CurX + 1) + '  Y:'+  inttostr(AdvMemo1.CurY + 1);
  StatusBar1.Panels[4].Text := 'Markers: '+inttostr(AdvMemo1.MarkerCount);
end;

procedure TFAdvMemoDemo01.Uppercase1Click(Sender: TObject);
begin
  AdvMemo1.CharCase := ecUpperCase;
end;

procedure TFAdvMemoDemo01.UrlAware1Click(Sender: TObject);
begin
  AdvMemo1.UrlAware := (Sender as TMenuItem).Checked;
end;

procedure TFAdvMemoDemo01.UseStyler1Click(Sender: TObject);
begin
  AdvMemo1.UseStyler := (Sender as TMenuItem).Checked;
end;

procedure TFAdvMemoDemo01.WantTab1Click(Sender: TObject);
begin
  AdvMemo1.WantTab := (Sender as TMenuItem).Checked;
end;

end.



























