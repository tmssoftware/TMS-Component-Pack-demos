unit Uricheditordock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvRichEditorToolBar, AdvToolBar, AdvScrollControl,
  AdvRichEditorBase, AdvRichEditor, ExtDlgs, StdCtrls, AdvScrollBox, ComCtrls,
  Spin, ExtCtrls, AdvGlowButton, AdvToolBarStylers, AdvOfficeComboBox, AdvOfficeHint,
  AdvOfficeSelectors, AdvRichEditorIO, AdvStyleIF, AdvToolBarExt, TMSLogger;

type
  TForm5 = class(TForm)
    AdvRichEditor1: TAdvRichEditor;
    AdvDockPanel1: TAdvDockPanel;
    AdvRichEditorEditToolBar1: TAdvRichEditorEditToolBar;
    AdvRichEditorFormatToolBar1: TAdvRichEditorFormatToolBar;
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvOfficeHint1: TAdvOfficeHint;
    PrinterSetupDialog1: TPrinterSetupDialog;
    AdvRichEditorEditingToolBar1: TAdvRichEditorEditingToolBar;
    AdvToolBar1: TAdvToolBar;
    AdvOfficeSelector1: TAdvOfficeSelector;
    AdvGlowButton1: TAdvGlowButton;
    ListBox1: TListBox;
    procedure RadioGroup1Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvRichEditor1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure AdvRichEditor1DrawGraphic(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; AID: string);
    procedure AdvRichEditor1EnterWord(Sender: TObject; AWord: string);
    procedure AdvOfficeSelector1Select(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SampleIndent;
    procedure SampleFile;
    procedure SampleBullet;
    procedure SampleAlignment;
    procedure SampleFormat;
    procedure SampleImages;
    procedure SampleManyLines;
    procedure SampleClear;
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}
uses
  Menus;

procedure TForm5.AdvGlowButton1Click(Sender: TObject);
begin
  if PrinterSetupDialog1.Execute then
    AdvRichEditor1.Print;
end;

procedure TForm5.AdvOfficeSelector1Select(Sender: TObject);
begin
  case AdvOfficeSelector1.ItemIndex of
  0: AdvToolBarOfficeStyler1.Style := bsOffice2003Blue;
  1: AdvToolBarOfficeStyler1.Style := bsOffice2007Luna;
  2: AdvToolBarOfficeStyler1.Style := bsOffice2010Blue;
  3: AdvToolBarOfficeStyler1.Style := bsOffice2013White;
  4: AdvToolBarOfficeStyler1.Style := bsWindowsXP;
  5: AdvToolBarOfficeStyler1.Style := bsWindows7;
  6: AdvToolBarOfficeStyler1.Style := bsWindows8;
  end;

  case AdvOfficeSelector1.ItemIndex of
  0: AdvOfficeHint1.SetComponentStyle(tsOffice2003Blue);
  1: AdvOfficeHint1.SetComponentStyle(tsOffice2007Luna);
  2: AdvOfficeHint1.SetComponentStyle(tsOffice2010Blue);
  3: AdvOfficeHint1.SetComponentStyle(tsOffice2013White);
  4: AdvOfficeHint1.SetComponentStyle(tsWindowsXP);
  5: AdvOfficeHint1.SetComponentStyle(tsWindows7);
  6: AdvOfficeHint1.SetComponentStyle(tsWindows8);
  end;
end;

procedure TForm5.AdvRichEditor1DrawGraphic(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; AID: string);
begin
  ACanvas.Brush.Style := bsFDiagonal;
  ACanvas.Brush.Color := clYellow;
  ACanvas.Pen.Color := clRed;
  ACanvas.Pen.Style := psInsideFrame;
  ACanvas.Rectangle(ARect);
end;

procedure TForm5.AdvRichEditor1EnterWord(Sender: TObject; AWord: string);
begin
  outputdebugstring(pchar('enter word:'+aword));
end;

procedure TForm5.AdvRichEditor1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  s:string;
begin
  s := AdvRichEditor1.WordAtXY(X,Y);
  Caption := 'x='+inttostr(x)+' y='+inttostr(y)+' top='+inttostr(x+ advricheditor1.TopLeft.X) + ' word='+s;
end;

procedure TForm5.SampleAlignment;
var
  s: string;
  i,l: integer;
begin
  s := 'Left justified line';
  i := 0;

  AdvRichEditor1.AddText(s);
  AdvRichEditor1.AddLineBreak;

  l := Length(s);
  AdvRichEditor1.SelectText(0,i + l);

  i := i + l + 2;

  AdvRichEditor1.SetSelectionAttribute(taLeftJustify);

  s := 'Centered line';

  AdvRichEditor1.AddText(s);
  AdvRichEditor1.AddLineBreak;

  l := length(s);

  AdvRichEditor1.SelectText(i,i + l);

  AdvRichEditor1.SetSelectionAttribute(taCenter);

  i := i + l + 2;

  s := 'Right justified line';

  l := length(s);

  AdvRichEditor1.AddText(s);
  AdvRichEditor1.AddLineBreak;

  AdvRichEditor1.SelectText(i, i + l);

  AdvRichEditor1.SetSelectionAttribute(taRightJustify);

  AdvRichEditor1.ClearSelection;
  AdvRichEditor1.ClearCaret;
end;

procedure TForm5.SampleBullet;
begin
  AdvRichEditor1.AddText('First bullet type:');
  AdvRichEditor1.AddLineBreak;

  AdvRichEditor1.AddText('Item 1');
  AdvRichEditor1.AddLineBreak;
  AdvRichEditor1.AddText('Item 2');
  AdvRichEditor1.AddLineBreak;

  AdvRichEditor1.SelectText(20,16);
  AdvRichEditor1.SetSelectionBullets(btCircle);

  AdvRichEditor1.AddLineBreak;
  AdvRichEditor1.AddText('Second bullet type:');
  AdvRichEditor1.AddLineBreak;

  AdvRichEditor1.AddText('Item 1');
  AdvRichEditor1.AddLineBreak;
  AdvRichEditor1.AddText('Item 2');
  AdvRichEditor1.AddLineBreak;

  AdvRichEditor1.SelectText(60,16);
  AdvRichEditor1.SetSelectionBullets(btStar);

  AdvRichEditor1.ClearSelection;
  AdvRichEditor1.ClearCaret;
end;

procedure TForm5.SampleClear;
begin
  AdvRichEditor1.Clear;
end;

procedure TForm5.SampleFile;
begin
  AdvRichEditor1.LoadFromTextFile('.\bellogallico.txt');
end;

procedure TForm5.SampleFormat;
begin
  AdvRichEditor1.AddText('This is sample formatted text with bold, italic, underline, strikethrough');

  AdvRichEditor1.SelectText(35,4);
  AdvRichEditor1.SetSelectionBold(true);

  AdvRichEditor1.SelectText(41,6);
  AdvRichEditor1.SetSelectionItalic(true);

  AdvRichEditor1.SelectText(49,9);
  AdvRichEditor1.SetSelectionUnderline(true);

  AdvRichEditor1.SelectText(60,13);
  AdvRichEditor1.SetSelectionStrikeOut(true);

  AdvRichEditor1.SelectText(15,9);
  AdvRichEditor1.SetSelectionColor(clGreen);

  AdvRichEditor1.SelectText(25,4);
  AdvRichEditor1.SetSelectionColor(clRed);
  AdvRichEditor1.SetSelectionBkColor(clYellow);

  AdvRichEditor1.ClearSelection;
  AdvRichEditor1.ClearCaret;
end;

procedure TForm5.SampleImages;
begin
  AdvRichEditor1.AddText('Car (PNG)');
  AdvRichEditor1.AddLineBreak;
  AdvRichEditor1.AddImage('.\car.png');
  AdvRichEditor1.AddLineBreak;

  AdvRichEditor1.AddText('Grammophone (ICO)');
  AdvRichEditor1.AddLineBreak;
  AdvRichEditor1.AddImage('.\grammo.ico');
  AdvRichEditor1.AddLineBreak;

  AdvRichEditor1.AddText('Toothpaste (BMP)');
  AdvRichEditor1.AddLineBreak;
  AdvRichEditor1.AddImage('.\toothpaste.bmp');
  AdvRichEditor1.AddLineBreak;

  AdvRichEditor1.AddText('Beach (JPEG)');
  AdvRichEditor1.AddLineBreak;
  AdvRichEditor1.AddImage('.\beach.jpg');
  AdvRichEditor1.AddLineBreak;

  AdvRichEditor1.AddText('GIFImage (GIF)');
  AdvRichEditor1.AddLineBreak;
  AdvRichEditor1.AddImage('.\gifimage.gif');
  AdvRichEditor1.AddLineBreak;
end;

procedure TForm5.SampleIndent;
begin
  AdvRichEditor1.AddText('First indent');
  AdvRichEditor1.AddLineBreak;
  AdvRichEditor1.AddText('First indent');
  AdvRichEditor1.AddLineBreak;

  AdvRichEditor1.SelectText(0,24);
  AdvRichEditor1.SetSelectionIndent(50);

  AdvRichEditor1.AddText('Second larger indent');
  AdvRichEditor1.SelectText(26,20);
  AdvRichEditor1.SetSelectionIndent(150);

  AdvRichEditor1.ClearSelection;
  AdvRichEditor1.ClearCaret;
end;


procedure TForm5.SampleManyLines;
var
  i: integer;
begin
  AdvRichEditor1.BeginUpdate;
  for i := 0 to 400 do
    begin
      AdvRichEditor1.AddText('This is line nr. '+inttostr(i)+' in the rich text editor');
      AdvRichEditor1.AddLineBreak;
    end;
  AdvRichEditor1.EndUpdate;
end;


procedure TForm5.RadioGroup1Click(Sender: TObject);
begin
  AdvRichEditor1.Clear;

  case ListBox1.ItemIndex of
  0: SampleFile;
  1: SampleIndent;
  2: SampleBullet;
  3: SampleAlignment;
  4: SampleFormat;
  5: SampleManyLines;
  6: SampleImages;
  7: SampleClear;
  end;

  if AdvRichEditor1.Enabled then
    AdvRichEditor1.SetFocus;
end;


end.
