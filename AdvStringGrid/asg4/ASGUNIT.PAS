{*************************************************************************}
{ TAdvStringGrid demo application                                         }
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
unit Asgunit;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls, XPMan,
  Forms, Dialogs, Grids, AdvGrid, BaseGrid, StdCtrls, Buttons, ExtCtrls, AdvObj,
  Menus, ClipBrd, asprev, asabout, asfind, ComCtrls, JPEG, AdvGridRTF, ImgList,
  asgprev;

type
  TDemo = class(TForm)
    FontDialog1: TFontDialog;
    MainMenu1: TMainMenu;
    Loaddata1: TMenuItem;
    Loadfromfile1: TMenuItem;
    Savetofile1: TMenuItem;
    SavetoHTML1: TMenuItem;
    SavetoCSV1: TMenuItem;
    SaveasXLS1: TMenuItem;
    Clipboard1: TMenuItem;
    Print1: TMenuItem;
    Copytoclipboard2: TMenuItem;
    Pastefromclipboard2: TMenuItem;
    Copyselectiontoclipboard1: TMenuItem;
    Print2: TMenuItem;
    Printpreview1: TMenuItem;
    Setselection1: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    Pastefromclipboard1: TMenuItem;
    LoadfromCSV1: TMenuItem;
    LoadfromXLS1: TMenuItem;
    Hide1: TMenuItem;
    Column11: TMenuItem;
    Column21: TMenuItem;
    Column31: TMenuItem;
    Column41: TMenuItem;
    Search1: TMenuItem;
    Findfirst1: TMenuItem;
    Findnext1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    AdvStringGrid2: TAdvStringGrid;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Button8: TButton;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Button3: TButton;
    Button6: TButton;
    RadioGroup1: TRadioGroup;
    fixedsort: TCheckBox;
    multiline: TCheckBox;
    colro: TCheckBox;
    AdvStringGrid1: TAdvStringGrid;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SavetoASCII1: TMenuItem;
    TabSheet3: TTabSheet;
    editgrid: TAdvStringGrid;
    Label6: TLabel;
    Column51: TMenuItem;
    Column61: TMenuItem;
    Column71: TMenuItem;
    ImageList1: TImageList;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Label8: TLabel;
    TabSheet4: TTabSheet;
    AdvStringGrid3: TAdvStringGrid;
    SavetoDOC1: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    RadioGroup2: TRadioGroup;
    Exit1: TMenuItem;
    CheckBox7: TCheckBox;
    SavetoXML1: TMenuItem;
    colfix: TCheckBox;
    Memo1: TMemo;
    Printpreviewwithgraphics1: TMenuItem;
    Printwithgraphics1: TMenuItem;
    Timer1: TTimer;
    TabSheet5: TTabSheet;
    AdvStringGrid4: TAdvStringGrid;
    Label9: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label10: TLabel;
    TabSheet6: TTabSheet;
    AdvStringGrid5: TAdvStringGrid;
    Label11: TLabel;
    Label12: TLabel;
    CheckBox9: TCheckBox;
    TabSheet7: TTabSheet;
    asg: TAdvStringGrid;
    ImageList2: TImageList;
    Label13: TLabel;
    AdvGridRTFIO1: TAdvGridRTFIO;
    SavetoRTF1: TMenuItem;
    AdvPreviewDialog1: TAdvPreviewDialog;
    PrintDialog1: TPrintDialog;
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure AdvStringGrid1GetCellColor(Sender: TObject; ARow,
      ACol: Longint; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1GridHint(Sender: TObject; Arow, Acol: Longint;
      var hintstr: string);
    procedure Loadfromfile1Click(Sender: TObject);
    procedure Savetofile1Click(Sender: TObject);
    procedure SavetoHTML1Click(Sender: TObject);
    procedure SavetoCSV1Click(Sender: TObject);
    procedure AdvStringGrid1AutoInsertRow(Sender: TObject; ARow: Longint);
    procedure AdvStringGrid1AutoDeleteRow(Sender: TObject; aRow: Longint);
    procedure AdvStringGrid1ClickSort(Sender: TObject; aCol: Longint);
    procedure CopytoExcel1Click(Sender: TObject);
    procedure SaveasXLS1Click(Sender: TObject);
    procedure Copytoclipboard2Click(Sender: TObject);
    procedure Pastefromclipboard2Click(Sender: TObject);
    procedure Print2Click(Sender: TObject);
    procedure Printpreview1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure Setselection1Click(Sender: TObject);
    procedure fixedsortClick(Sender: TObject);
    procedure Copyselectiontoclipboard1Click(Sender: TObject);
    procedure Pastefromclipboard1Click(Sender: TObject);
    procedure LoadfromCSV1Click(Sender: TObject);
    procedure LoadfromXLS1Click(Sender: TObject);
    procedure AdvStringGrid1PrintPage(Sender: TObject; Canvas: TCanvas;
      pagenr, pagexsize, pageysize: Integer);
    procedure Column11Click(Sender: TObject);
    procedure Findfirst1Click(Sender: TObject);
    procedure Findnext1Click(Sender: TObject);
    procedure multilineClick(Sender: TObject);
    procedure AdvStringGrid1CanEditCell(Sender: TObject; Arow,
      Acol: Integer; var canedit: Boolean);
    procedure SavetoASCII1Click(Sender: TObject);
    procedure editgridGetEditorType(Sender: TObject; aCol, aRow: Integer;
      var aEditor: TEditorType);
    procedure editgridEllipsClick(Sender: TObject; aCol, aRow: Integer;
      var S: string);
    procedure AdvStringGrid1GetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aPostfix: string);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure AdvStringGrid1PrintStart(Sender: TObject; NrOfPages: Integer;
      var FromPage, ToPage: Integer);
    procedure SavetoDOC1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure SavetoXML1Click(Sender: TObject);
    procedure AdvStringGrid1IsFixedCell(Sender: TObject; Arow,
      Acol: Integer; var isfixed: Boolean);
    procedure colfixClick(Sender: TObject);
    procedure AdvStringGrid1CanSort(Sender: TObject; aCol: Integer;
      var dosort: Boolean);
    procedure Printpreviewwithgraphics1Click(Sender: TObject);
    procedure Printwithgraphics1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure AdvStringGrid2ButtonClick(Sender: TObject; aCol,
      aRow: Integer);
    procedure CheckBox9Click(Sender: TObject);
    procedure AdvStringGrid5GetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: string);
    procedure AdvStringGrid1GetAlignment(Sender: TObject; ARow,
      ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure AdvStringGrid2GetAlignment(Sender: TObject; ARow,
      ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure asgCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure asgGetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
    procedure asgAnchorClick(Sender: TObject; ARow, ACol: Integer;
      Anchor: string; var AutoHandle: Boolean);
    procedure SavetoRTF1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    procedure InitGraphicGrid;
    procedure SetPrintOptions;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Demo: TDemo;

implementation

{$R *.DFM}
{$R iehand.res}
{$R icons.res}

procedure TDemo.Button3Click(Sender: TObject);
begin
  AdvStringGrid1.autosize := true;
end;

procedure TDemo.Button6Click(Sender: TObject);
begin
  if radiogroup1.itemindex = 0 then
    AdvStringGrid1.SortSettings.Direction := sdAscending
  else
    AdvStringGrid1.SortSettings.Direction := sdDescending;
  AdvStringGrid1.SortSettings.Column := 1;
  AdvStringGrid1.QSort;
end;

procedure TDemo.Button7Click(Sender: TObject);
var
  PagePreview: TPagePreview;
begin
  AdvStringGrid1.Printsettings.titlelines.Assign(memo1.lines);

  if checkbox2.Checked then
    AdvStringGrid1.Printsettings.time := ppTopLeft
  else
    AdvStringGrid1.Printsettings.time := ppNone;

  if checkbox2.Checked then
    AdvStringGrid1.Printsettings.date := ppTopRight
  else
    AdvStringGrid1.Printsettings.date := ppNone;

  if checkbox3.Checked then
    AdvStringGrid1.Printsettings.pagenr := ppBottomCenter
  else
    AdvStringGrid1.Printsettings.pagenr := ppNone;

  if checkbox4.Checked then
    AdvStringGrid1.Printsettings.borders := pbSingle
  else
    AdvStringGrid1.Printsettings.borders := pbNoborder;

  PagePreview := TPagePreview.CreatePreview(self, AdvStringGrid1);
  try
    PagePreview.ShowModal;
  finally
    PagePreview.Free;
  end;

end;

procedure TDemo.Button8Click(Sender: TObject);
begin
  fontdialog1.font := AdvStringGrid1.Printsettings.font;
  if fontdialog1.execute then
    AdvStringGrid1.Printsettings.font := fontdialog1.font;
end;

procedure TDemo.AdvStringGrid1GetCellColor(Sender: TObject; ARow,
  ACol: Longint; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  if (acol = 1) and (arow > 0) and
    (arow < AdvStringGrid1.rowcount - AdvStringGrid1.fixedfooters) and
    (not (gdSelected in AState) or (gdFocused in AState)) then
  begin
    ABrush.Color := clYellow;
    AFont.Color := clRed;
  end;
  if ARow = 0 then
  begin
    AFont.Style := [fsBold];
  end;

end;

procedure TDemo.InitGraphicGrid;
begin
  with AdvStringGrid2 do
  begin
    with CreateIcon(1, 1, AdvGrid.haCenter, vaUnderText) do handle := LoadIcon(hinstance, 'ICON_1');
    with CreateIcon(1, 2, AdvGrid.haCenter, vaAboveText) do handle := LoadIcon(hinstance, 'ICON_2');
    with CreateIcon(1, 3, AdvGrid.haCenter, vaAboveText) do handle := LoadIcon(hinstance, 'ICON_3');
    with CreateIcon(1, 4, AdvGrid.haCenter, vaAboveText) do handle := LoadIcon(hinstance, 'ICON_4');
    with CreateIcon(1, 5, AdvGrid.haCenter, vaAboveText) do handle := LoadIcon(hinstance, 'ICON_5');


    AddRotated(1, 0, 90, 'Icons');

    Cells[1, 1] := 'cpu';
    Cells[1, 2] := 'trashcan';
    Cells[1, 3] := 'icon';
    Cells[1, 4] := 'floppy';
    Cells[1, 5] := 'audio';

    AddImageidx(2, 1, 0, habeforetext, AdvGrid.vaCenter);
    AddImageidx(2, 2, 1, haBeforeText, AdvGrid.vaCenter);
    AddImageidx(2, 3, 2, haBeforeText, AdvGrid.vaCenter);
    AddImageidx(2, 4, 3, haBeforeText, AdvGrid.vaCenter);
    AddImageidx(2, 5, 4, haBeforeText, AdvGrid.vaCenter);

    AddRotated(2, 0, 90, 'Imagelist');

    Cells[2, 1] := 'mail';
    Cells[2, 2] := 'note';
    Cells[2, 3] := 'cancel';
    Cells[2, 4] := 'home';
    Cells[2, 5] := 'web';

    with CreateBitmap(3, 1, false, AdvGrid.haright, AdvGrid.vabottom) do LoadFromResourceName(hinstance, 'BITMAP_1');
    with CreateBitmap(3, 2, false, AdvGrid.haright, AdvGrid.vabottom) do LoadFromResourceName(hinstance, 'BITMAP_2');
    with CreateBitmap(3, 3, false, AdvGrid.haright, AdvGrid.vabottom) do LoadFromResourceName(hinstance, 'BITMAP_3');
    with CreateBitmap(3, 4, false, AdvGrid.haright, AdvGrid.vabottom) do LoadFromResourceName(hinstance, 'BITMAP_4');
    with CreateBitmap(3, 5, false, AdvGrid.haright, AdvGrid.vabottom) do LoadFromResourceName(hinstance, 'BITMAP_5');

    Cells[3, 1] := '';
    Cells[3, 2] := '';
    Cells[3, 3] := '';
    Cells[3, 4] := '';
    Cells[3, 5] := '';

    AddRotated(3, 0, 90, 'Bitmaps');

    AutoNumberCol(0);

    AddRotated(4, 0, 90, 'Text');

    AddRotated(4, 1, 45, 'One');

    AddRotated(4, 2, 135, 'Two');

    AddRotated(4, 3, 225, 'Three');

    AddRotated(4, 4, 315, 'Four');

    AddRotated(4, 5, 180, 'Five');

    AddRotated(5, 0, 90, 'Multi Image');

    AddRotated(6, 0, 90, 'Rich text');

    AddMultiImage(5, 1, 0, haBeforeText, AdvGrid.vaCenter);

    with CellImages[5, 1] do
    begin
      Add(0);
      Add(1);
    end;

    AddMultiImage(5, 2, 0, haBeforeText, AdvGrid.vaCenter);


    with CellImages[5, 2] do
    begin
      Add(2);
      Add(3);
      Add(4);
    end;

    AddMultiImage(5, 3, 0, haBeforeText, AdvGrid.vaCenter);

    with CellImages[5, 3] do
    begin
      Add(0);
    end;

    AddMultiImage(5, 4, 0, haBeforeText, AdvGrid.vaCenter);

    with CellImages[5, 4] do
    begin
      Add(1);
      Add(3);
      Add(4);
      Add(2);
    end;

    AddMultiimage(5, 5, 0, haBeforeText, AdvGrid.vaCenter);

    with CellImages[5, 5] do
    begin
      Add(4);
      Add(1);
    end;

    richedit.text := 'Rich text';
    richedit.Selstart := 0;
    richedit.Sellength := 4;
    richedit.Selattributes.Color := clRed;
    richedit.Selattributes.Style := [fsBold];
    richedit.Selstart := 5;
    richedit.Sellength := 4;
    richedit.Selattributes.Color := clBlue;
    richedit.Selattributes.Style := [fsItalic];

    richtocell(6, 1, richedit);

    richedit.Clear;
    richedit.Selattributes.Style := [];
    richedit.Selattributes.Color := clBlack;

    richedit.text := 'Superscript';

    richedit.Selstart := 0;
    richedit.Sellength := 5;
    richedit.Selsuperscript;
    richedit.Selattributes.Color := clBlue;

    richtocell(6, 2, richedit);

    richedit.Clear;
    richedit.Selattributes.Style := [];
    richedit.Selattributes.Color := clBlack;

    richedit.text := 'Subscript';
    richedit.Selstart := 0;
    richedit.Sellength := 3;
    richedit.Selsubscript;
    richedit.Selattributes.Color := clBlue;

    richtocell(6, 3, richedit);

    richedit.Clear;
    richedit.Selattributes.Style := [];
    richedit.Selattributes.Color := clBlack;
    richedit.Selnormal;
    richedit.paragraph.Numbering := nsBullet;

    richedit.lines.Add('One'#13'Two'#13'Three');
    richedit.paragraph.Numbering := nsNone;

    richtocell(6, 4, richedit);


    AddRotated(7, 0, 90, 'HTML');

    Cells[7, 1] := 'Easy <B>HTML</B><BR><I>formatting</I>';
    Cells[7, 2] := 'Including <IMG src="idx:0"><FONT color="clred">everywhere</FONT>';
    Cells[7, 3] := 'Enjoy<HR><B>miniHTML</B>';
    Cells[7, 4] := '<A href="http://www.tmssoftware.Com/minihtml.htm">Click here</A><BR>for more';
    Cells[7, 5] := '125 <SUP>9</SUP>/<SUB>16</SUB>';

    AddRotated(8, 0, 90, 'Various');

    Ints[8, 1] := 50;
    AddProgress(8, 1, clRed, clSilver);

    Ints[8, 2] := 75;
    AddProgress(8, 2, clBlue, clWhite);

    AddComment(8, 3, 'This is a custom'#13'comment for this cell');

    Cells[8, 3] := 'Cell with<BR><I>comment</I>';

    Cells[8, 4] := '<A href="CELL://R2C1">Link to cell 1,2</A>';
    Cells[8, 5] := '<A href="CELL://R1C2">Link to cell 2,1</A>';

    ints[6, 5] := 1;

    AddButton(6, 5, 45, 20, 'Push me', haBeforeText, AdvGrid.vaCenter);
  end;
end;

procedure TDemo.FormCreate(Sender: TObject);
var
  i: integer;
begin
  PageControl1.ActivePageIndex := 0;

  AdvStringGrid1.Clear;
  AdvStringGrid1.LoadFromFile('test.txt');
  AdvStringGrid3.LoadFromFile('test.txt');
  AdvStringGrid4.LoadFromFile('test.txt');
  AdvStringGrid5.LoadFromFile('test.txt');
  AdvStringGrid5.AutoSizeColumns(False, 15);

  AdvStringGrid1.SortSettings.Column := 1;
  EditGrid.Clear;
  EditGrid.loadfromfile('test.txt');

  EditGrid.ClearComboString;
  EditGrid.AddComboString('BMW');
  EditGrid.AddComboString('Mercedes Benz');
  EditGrid.AddComboString('Audi');
  EditGrid.AddComboString('Porsche');
  EditGrid.AddComboString('Ferrari');
  EditGrid.AddComboString('Opel');
  EditGrid.AddComboString('Lamborghini');
  EditGrid.Combobox.Sorted := True;
  InitGraphicGrid;


  for i := 1 to editgrid.rowcount - 1 do
    Editgrid.AddCheckBox(5, i, false, false);

  EditGrid.datetimepicker.Calcolors.titlebackcolor := clRed;
  EditGrid.datetimepicker.Calcolors.monthbackcolor := clYellow;

  EditGrid.Spinedit.MinValue := 0;
  EditGrid.Spinedit.MaxValue := 100;
  EditGrid.Spinedit.Increment := 2;

  with AdvStringGrid3 do
  begin
    FixedColWidth := 20;
    FixedCols := 0;
    ClearCols(0, 1);
    AddNode(2, 4);
    AddNode(7, 2);
    AddNode(13, 4);
  end;

  combobox1.itemindex := 0;
  combobox2.itemindex := 0;

  asg.RowCount := 25;
  asg.ColCount := 12;

  asg.MergeCells(1, 1, 2, 2);
  asg.MergeCells(1, 0, 2, 1);
  asg.MergeCells(0, 2, 1, 2);


  asg.Cells[1, 1] := '<p align="center"><font color="clred">This</font> is <b>bold</b></p>';
  asg.Cells[1, 0] := '<img src="idx:0"><font face="tahoma">This is <b>Tahoma</b></font>';

  asg.Cells[0, 2] := 'Fixed col'#13'merged';

  asg.MergeCells(2, 3, 2, 2);
  asg.Cells[2, 3] := 'Here we have the <a href="action">link</a>';
  asg.Colors[2, 3] := clYellow;

  asg.MergeCells(0, 8, asg.ColCount - 1, 1);
  asg.Cells[0, 8] := 'This is a fixed merged cell across the grid';

  asg.MergeCells(4, 2, 4, 6);


  asg.CreatePicture(4, 2, True, ShrinkWithAspectRatio, 0, AdvGrid.haLeft, AdvGrid.vaTop).LoadFromFile('slr.jpg');

  asg.MergeCells(1, 6, 2, 2);
  asg.Cells[1, 6] := 'Wordwrapped text in a merged cell displayed here';

  asg.MergeCells(1, 10, 3, 1);
  asg.AddCheckBox(1, 10, False, False);
  asg.Cells[1, 10] := 'Checkbox 1';
  asg.MergeCells(1, 11, 3, 1);
  asg.AddCheckBox(1, 11, True, False);
  asg.Cells[1, 11] := 'Checkbox 2';

  asg.Cells[0, 12] := 'Combo';

  asg.MergeCells(1, 12, 3, 1);
  asg.AddComboString('BMW');
  asg.AddComboString('Audi');
  asg.AddComboString('Porsche');
  asg.AddComboString('Ferrari');


  DecimalSeparator := ',';
  ThousandSeparator := '.';
  DateSeparator := '/';
  ShortDateFormat := 'dd/mm/yy';

end;

procedure TDemo.AdvStringGrid1GridHint(Sender: TObject; Arow,
  Acol: Longint; var hintstr: string);
begin
  case acol of
    1: hintstr := 'Name of car company';
    2: hintstr := 'Car model';
    3: hintstr := '# of cylinders';
    4: hintstr := 'Year of introduction';
    5: hintstr := 'Engine power';
    6: hintstr := 'Price';
    7: hintstr := 'Website';
  end;
end;

procedure TDemo.Loadfromfile1Click(Sender: TObject);
begin
  AdvStringGrid1.Clear;
  AdvStringGrid1.loadfromfile('test.txt');
end;

procedure TDemo.Savetofile1Click(Sender: TObject);
begin
  AdvStringGrid1.Savetofile('test.txt');
end;

procedure TDemo.SavetoHTML1Click(Sender: TObject);
begin
  AdvStringGrid1.Savetohtml('test.htm');
end;

procedure TDemo.SavetoCSV1Click(Sender: TObject);
begin
  AdvStringGrid1.SavefixedCells := false;
  AdvStringGrid1.Savetocsv('test.Csv');
end;

procedure TDemo.LoadfromCSV1Click(Sender: TObject);
begin
  AdvStringGrid1.SavefixedCells := false;
  AdvStringGrid1.loadfromcsv('test.Csv');
end;

procedure TDemo.AdvStringGrid1AutoInsertRow(Sender: TObject;
  ARow: Longint);
begin
  AdvStringGrid1.autonumbercol(0);
end;

procedure TDemo.AdvStringGrid1AutoDeleteRow(Sender: TObject;
  aRow: Longint);
begin
  AdvStringGrid1.autonumbercol(0);
end;

procedure TDemo.AdvStringGrid1ClickSort(Sender: TObject; aCol: Longint);
begin
  if not AdvStringGrid1.SortSettings.FixedCols then
    AdvStringGrid1.AutoNumberCol(0);
end;

procedure TDemo.CopytoExcel1Click(Sender: TObject);
begin
  AdvStringGrid1.Savetoxls('test.xls');
end;

procedure TDemo.SaveasXLS1Click(Sender: TObject);
begin
  AdvStringGrid1.Savetoxls('test.xls');
end;

procedure TDemo.Copytoclipboard2Click(Sender: TObject);
begin
  AdvStringGrid1.Copytoclipboard;
end;

procedure TDemo.Copyselectiontoclipboard1Click(Sender: TObject);
begin
  AdvStringGrid1.Copyselectiontoclipboard;
end;

procedure TDemo.Pastefromclipboard2Click(Sender: TObject);
begin
  AdvStringGrid1.PasteSelectionFromClipboard;
end;

procedure TDemo.Pastefromclipboard1Click(Sender: TObject);
begin
  AdvStringGrid1.PasteFromClipboard;
end;

procedure TDemo.SetPrintOptions;
begin
  AdvStringGrid1.Printsettings.TitleLines.Assign(memo1.lines);

  if checkbox2.Checked then
    AdvStringGrid1.Printsettings.Time := ppTopLeft
  else
    AdvStringGrid1.Printsettings.Time := ppNone;

  if checkbox1.Checked then
    AdvStringGrid1.Printsettings.Date := ppTopRight
  else
    AdvStringGrid1.Printsettings.Date := ppNone;

  if checkbox3.Checked then
    AdvStringGrid1.Printsettings.Pagenr := ppBottomCenter
  else
    AdvStringGrid1.Printsettings.Pagenr := ppNone;

  if checkbox4.Checked then
  begin
    if radiobutton1.Checked then
      AdvStringGrid1.PrintSettings.Borders := advgrid.pbVertical;
    if radiobutton2.Checked then
      AdvStringGrid1.PrintSettings.Borders := advgrid.pbHorizontal;
    if radiobutton3.Checked then
      AdvStringGrid1.PrintSettings.Borders := advgrid.pbSingle;
  end
  else
    AdvStringGrid1.Printsettings.borders := advgrid.pbNoborder;

  if checkbox5.Checked then
    AdvStringGrid1.Printsettings.FitToPage := fpAlways
  else
    AdvStringGrid1.Printsettings.FitToPage := fpNever;

  AdvStringGrid1.Printsettings.NoAutoSize := not checkbox7.Checked;

  AdvStringGrid1.Printsettings.Centered := checkbox6.Checked;
end;

procedure TDemo.Print2Click(Sender: TObject);
begin
  SetPrintOptions;
  AdvStringGrid1.Print;
end;

procedure TDemo.Printpreview1Click(Sender: TObject);
begin
  SetPrintOptions;
  AdvPreviewDialog1.Execute;
end;

procedure TDemo.About1Click(Sender: TObject);
var
  About: TAbout;
begin
  About := TAbout.Create(self);
  try
    About.ShowModal;
  finally
    About.Free;
  end;
end;

procedure TDemo.Setselection1Click(Sender: TObject);
var
  gridrect: tgridrect;
begin
  gridrect.left := 1;
  gridrect.top := 5;
  gridrect.right := AdvStringGrid1.Colcount - 1;
  gridrect.bottom := AdvStringGrid1.rowcount - 1;
  AdvStringGrid1.Printrect(gridrect);
end;

procedure TDemo.fixedsortClick(Sender: TObject);
begin
  AdvStringGrid1.SortSettings.Fixedcols := fixedsort.Checked;
end;

procedure TDemo.LoadfromXLS1Click(Sender: TObject);
begin
  AdvStringGrid1.loadfromxls('test.xls');
end;

procedure TDemo.AdvStringGrid1PrintPage(Sender: TObject; Canvas: TCanvas;
  pagenr, pagexsize, pageysize: Integer);
var
  savefont: tfont;
  ts, tw: integer;

const
  myowntitle: string = 'Your company name can go here using custom drawing';

begin
  if AdvStringGrid1.PrintColStart <> 0 then exit;
  with canvas do
  begin
    savefont := tfont.Create;
    savefont.assign(font);

    font.name := 'Arial';
    font.Style := [fsBold];
    font.height := AdvStringGrid1.mapfontheight(12);
    font.Color := clRed;

    ts := AdvStringGrid1.Printcoloffset[0];
    tw := AdvStringGrid1.Printpagewidth;

    moveto(ts, -5);
    lineto(ts + tw, -5);
    lineto(ts + tw, -AdvStringGrid1.Printsettings.headersize + 5);
    lineto(ts, -AdvStringGrid1.Printsettings.headersize + 5);
    lineto(ts, -5);

    ts := ts + ((tw - textwidth(myowntitle)) shr 1);

    textout(ts, -10, myowntitle);

    font.assign(savefont);
    savefont.free;
  end;
end;

procedure TDemo.Column11Click(Sender: TObject);
var
  ACol: longint;
begin
  PageControl1.ActivePageIndex:= 0;
  ACol := (sender as tmenuitem).tag;
  with AdvStringGrid1 do
  begin
    if IsHiddenColumn(ACol) then
      UnHideColumn(ACol)
    else
      HideColumn(ACol);
    (Sender as TMenuItem).Checked := IsHiddenColumn(ACol);
  end;
end;

procedure TDemo.ComboBox1Change(Sender: TObject);
begin
  AdvStringGrid4.FilterActive := false;
  AdvStringGrid4.Filter.Clear;
  with AdvStringGrid4.Filter.Add do
  begin
    condition := combobox1.Items[combobox1.itemindex];
    column := 1;
    operation := foNone;
  end;

  with AdvStringGrid4.Filter.Add do
  begin
    condition := combobox2.Items[combobox2.itemindex];
    column := 3;
    operation := foAND;
  end;

  AdvStringGrid4.FilterActive := true;
end;

procedure TDemo.Findfirst1Click(Sender: TObject);
var
  res: TPoint;
  finddlg: TFinddlg;
  findparams: TFindparams;

begin
  PageControl1.ActivePage := TabSheet1;

  FindDlg := TFindDlg.Create(self);
  try
    if (finddlg.Showmodal = mrOk) then
    begin
      findparams := [];

      if finddlg.Chkcase.Checked then findparams := findparams + [fnMatchCase];
      if finddlg.Chkfull.Checked then findparams := findparams + [fnMatchFull];
      if finddlg.Chkregular.Checked then findparams := findparams + [fnMatchRegular];
      if finddlg.dir.itemindex = 1 then findparams := findparams + [fnDirectionLeftRight];
      if finddlg.where.itemindex = 1 then findparams := findparams + [fnFindInCurrentCol];
      if finddlg.where.itemindex = 2 then findparams := findparams + [fnFindInCurrentRow];

      res := AdvStringGrid1.FindFirst(finddlg.findtext.text, findparams);

      if res.x >= 0 then
      begin
        AdvStringGrid1.Col := res.x;
        AdvStringGrid1.row := res.y;
      end
      else
        MessageDlg('Text not found', mtinformation, [mbOK], 0);
    end;
  finally
    FindDlg.free;
  end;
end;

procedure TDemo.Findnext1Click(Sender: TObject);
var
  res: tpoint;
begin
  res := AdvStringGrid1.findnext;
  if (res.x >= 0) and (res.y >= 0) then
  begin
    AdvStringGrid1.Col := res.x;
    AdvStringGrid1.row := res.y;
  end
  else
    MessageDlg('Text not found', mtinformation, [mbOK], 0);
end;

procedure TDemo.multilineClick(Sender: TObject);
begin
  if MultiLine.Checked then
    AdvStringGrid1.DefaultRowheight := 32
  else
    AdvStringGrid1.DefaultRowheight := 16;

  AdvStringGrid1.FixedRowheight := 24;
  AdvStringGrid1.MultiLineCells := MultiLine.Checked;
end;

procedure TDemo.AdvStringGrid1CanEditCell(Sender: TObject; Arow,
  Acol: Integer; var canedit: Boolean);
begin
  canedit := (acol <> 3) or (colro.Checked = false);
end;

procedure TDemo.SavetoASCII1Click(Sender: TObject);
begin
  AdvStringGrid1.Savetoascii('test.asc');
end;

procedure TDemo.editgridGetEditorType(Sender: TObject; aCol, aRow: Integer;
  var aEditor: TEditorType);
begin
  case acol of
    1: aEditor := edComboList;
    2: aEditor := edEditBtn;
    3: aEditor := edSpinEdit;
    4: aEditor := edDateEdit;
  end;
end;

procedure TDemo.editgridEllipsClick(Sender: TObject; aCol, aRow: Integer;
  var S: string);
var
  tmp: string;
begin
  tmp := s;
  if inputquery('Edit (' + inttostr(aCol) + ':' + inttostr(aRow) + ')', 'Cell value', tmp) then
    s := tmp;
end;

procedure TDemo.AdvStringGrid1GetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aPostfix: string);
begin
  case acol of
    2: AStyle := ssAlphabetic;
    3: AStyle := ssNumeric;
    4: AStyle := ssDate;
    5: begin
        AStyle := ssNumeric;
        APostfix := 'pk';
      end;
    6: begin
        AStyle := ssFinancial;
        APrefix := '$ ';
      end;
  end;
end;

procedure TDemo.RadioButton1Click(Sender: TObject);
begin
  Radiobutton3.Checked := false;
  Radiobutton2.Checked := false;
  Radiobutton1.Checked := true;
end;

procedure TDemo.RadioButton3Click(Sender: TObject);
begin
  Radiobutton2.Checked := false;
  Radiobutton1.Checked := false;
  Radiobutton3.Checked := true;
end;

procedure TDemo.RadioButton2Click(Sender: TObject);
begin
  radiobutton1.Checked := false;
  radiobutton3.Checked := false;
  radiobutton2.Checked := true;
end;

procedure TDemo.AdvStringGrid1PrintStart(Sender: TObject;
  NrOfPages: Integer; var FromPage, ToPage: Integer);
begin
  if not AdvStringGrid1.IsPrintPreview then
  begin
    printdialog1.FromPage := frompage;
    printdialog1.ToPage := toPage;
    printdialog1.Maxpage := toPage;
    printdialog1.minpage := 1;
    printdialog1.Options := printdialog1.Options + [poSelection, poPageNums];

    if printdialog1.Execute then
    begin
      frompage := printdialog1.FromPage;
      topage := printdialog1.ToPage;
    end
    else
    begin
      frompage := 0;
      topage := 0;
    end;
  end;
end;

procedure TDemo.SavetoDOC1Click(Sender: TObject);
begin
  AdvStringGrid1.SavetoDOC('test.doc');
end;

procedure TDemo.Button1Click(Sender: TObject);
begin
  AdvStringGrid3.expandall;
end;

procedure TDemo.Button2Click(Sender: TObject);
begin
  AdvStringGrid3.Contractall;
end;

procedure TDemo.RadioGroup1Click(Sender: TObject);
begin
  Button6Click(Sender);
end;

procedure TDemo.RadioGroup2Click(Sender: TObject);
begin
  case radiogroup2.itemindex of
    0: AdvStringGrid3.Cellnode.nodetype := cnFlat;
    1: AdvStringGrid3.Cellnode.nodetype := cn3D;
    2: AdvStringGrid3.Cellnode.nodetype := cnGlyph;
  end;
end;

procedure TDemo.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TDemo.SavetoXML1Click(Sender: TObject);
var
  sl: TStringList;
begin
  sl := TStringList.Create;
  sl.Add('Nr');
  sl.Add('Car');
  sl.Add('Type');
  sl.Add('Cylinders');
  sl.Add('Intro');
  sl.Add('Power');
  sl.Add('Price');
  sl.Add('Web');

  AdvStringGrid1.SaveToXML('test.xml', 'CARLIST', 'CAR', sl);
  sl.free;
end;

procedure TDemo.AdvStringGrid1IsFixedCell(Sender: TObject; Arow,
  Acol: Integer; var isfixed: Boolean);
begin
  IsFixed := ColFix.Checked and (acol = 3);
end;

procedure TDemo.ColfixClick(Sender: TObject);
begin
  colro.Checked := true;
  AdvStringGrid1.repaint;
end;

procedure TDemo.AdvStringGrid1CanSort(Sender: TObject; ACol: Integer;
  var dosort: Boolean);
begin
  dosort := not ((ACol = 3) and ColFix.Checked);
end;

procedure TDemo.Printpreviewwithgraphics1Click(Sender: TObject);
begin
  AdvStringGrid2.previewpage := 1;

  PagePreview := TPagePreview.CreatePreview(self, AdvStringGrid2);
  try
    PagePreview.Showmodal;
  finally
    PagePreview.free;
  end;

end;

procedure TDemo.Printwithgraphics1Click(Sender: TObject);
begin
  SetPrintOptions;
  AdvStringGrid2.Print;
end;

procedure TDemo.Timer1Timer(Sender: TObject);
begin
  AdvStringGrid2.ints[8, 1] := random(100);
  AdvStringGrid2.ints[8, 2] := random(100);
end;

procedure TDemo.AdvStringGrid2ButtonClick(Sender: TObject; aCol,
  aRow: Integer);
begin
  with AdvStringGrid2 do ints[6, 5] := ints[6, 5] + 1;
end;

procedure TDemo.CheckBox9Click(Sender: TObject);
begin
  AdvStringGrid1.URLFull := checkbox9.Checked;
end;

procedure TDemo.AdvStringGrid5GetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
  {make sure some model nummers with numeric only data do not confuse the
   automatic format detection}
  if acol = 2 then aStyle := ssAlphabetic else aStyle := ssAutomatic;
end;

procedure TDemo.AdvStringGrid1GetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  if acol in [3, 4] then HAlign := taRightJustify;
end;

procedure TDemo.AdvStringGrid2GetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  if (ACol < 4) and (ACol <> 2) then HAlign := taCenter;

  if (ARow = 0) then HAlign := taCenter;
end;

procedure TDemo.asgCanEditCell(Sender: TObject; ARow, ACol: Integer;
  var CanEdit: Boolean);
begin
  CanEdit := (ARow >= 5) and (ACol < 4);
end;

procedure TDemo.asgGetEditorType(Sender: TObject; ACol, ARow: Integer;
  var AEditor: TEditorType);
begin
  if (ARow = 12) and (ACol = 1) then
  begin
    AEditor := edComboList;
    asg.ClearComboString;
    asg.AddComboString('BMW');
    asg.AddComboString('Audi');
    asg.AddComboString('Porsche');
    asg.AddComboString('Mercedes');
  end;
end;

procedure TDemo.asgAnchorClick(Sender: TObject; ARow, ACol: Integer;
  Anchor: string; var AutoHandle: Boolean);
begin
  ShowMessage('Anchor : ' + Anchor + ' clicked');
end;

procedure TDemo.SavetoRTF1Click(Sender: TObject);
begin
  advgridrtfio1.AdvStringGrid := nil;

  case pagecontrol1.TabIndex of
    0: advgridrtfio1.AdvStringGrid := Advstringgrid1;
    1: advgridrtfio1.AdvStringGrid := Advstringgrid2;
    2: advgridrtfio1.AdvStringGrid := editgrid;
    6: advgridrtfio1.AdvStringGrid := asg;
  end;

  if assigned(advgridrtfio1.AdvStringGrid) then
    advgridrtfio1.ExportRTF('test.rtf');
end;

end.
