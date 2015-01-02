{***************************************************************************}
{ TADVSPREADGRID DEMO application                                           }
{ for Delphi 4.0,5.0,6.0,7.0 & C++Builder 4.0,5.0,6.0                       }
{ version 2.1                                                               }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 1996-2004                                          }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{***************************************************************************}

unit Uaspg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, AdvGrid, advsprd, StdCtrls, Spin, ComCtrls, Buttons, Menus,
  ExtCtrls, asgprev, ESBMathsLib, AdvPars, MiscMathLib, Tabs, BaseGrid, AdvObj;

type
  TForm1 = class(TForm)
    StatusBar1: TStatusBar;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Open1: TMenuItem;
    New1: TMenuItem;
    Save1: TMenuItem;
    Edit1: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    About1: TMenuItem;
    About2: TMenuItem;
    Exit1: TMenuItem;
    N1: TMenuItem;
    Functions1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    AdvSpreadGrid1: TAdvSpreadGrid;
    Panel1: TPanel;
    ClearButton: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SetCellName: TSpeedButton;
    SumButton: TSpeedButton;
    Label1: TLabel;
    ShowForm: TCheckBox;
    Fmt: TSpinEdit;
    NameMode: TCheckBox;
    RangeDemo: TButton;
    NameDemo: TButton;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSet1: TTabSet;
    Notebook1: TNotebook;
    SpreadSheet1: TAdvSpreadGrid;
    SpreadSheet2: TAdvSpreadGrid;
    Panel2: TPanel;
    Button3: TButton;
    MiscMathLib1: TMiscMathLib;
    LibBinder1: TLibBinder;
    FinanceMathLib1: TFinanceMathLib;
    GridBinder1: TGridBinder;
    ESBMathsLib1: TESBMathsLib;
    LibGrid: TAdvSpreadGrid;
    Panel3: TPanel;
    Button1: TButton;
    TabSheet4: TTabSheet;
    StringGrid: TAdvSpreadGrid;
    Panel4: TPanel;
    Button2: TButton;
    StringMathLib1: TStringMathLib;
    LibBinder2: TLibBinder;
    procedure AdvSpreadGrid1FormulaError(Sender: TObject; aCol,
      aRow: Integer; S: String);
    procedure FormCreate(Sender: TObject);
    procedure ClearButtonClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ShowFormClick(Sender: TObject);
    procedure FmtChange(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure AdvSpreadGrid1AutoDeleteRow(Sender: TObject; aRow: Integer);
    procedure AdvSpreadGrid1AutoInsertRow(Sender: TObject; ARow: Integer);
    procedure AdvSpreadGrid1SelectCell(Sender: TObject; ACol,
      ARow: Integer; var CanSelect: Boolean);
    procedure AdvSpreadGrid1GridHint(Sender: TObject; Arow, Acol: Integer;
      var hintstr: String);
    procedure AdvSpreadGrid1CellFormat(Sender: TObject; ACol,
      Arow: Integer; var format: String; var datetype: Boolean);
    procedure AdvSpreadGrid1CalcCustomFunction(sender: TObject;
      var func: String; var param: Double);
    procedure AdvSpreadGrid1IsCustomFunction(sender: TObject;
      var func: String; var match: Boolean);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SetCellNameClick(Sender: TObject);
    procedure SumButtonClick(Sender: TObject);
    procedure NameModeClick(Sender: TObject);
    procedure About2Click(Sender: TObject);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure RangeDemoClick(Sender: TObject);
    procedure AdvSpreadGrid1ForumlaErrorInfo(Sender: TObject; ACol, ARow,
      ErrType, ErrPos, ErrParam: Integer; ErrStr: String);
    procedure Button3Click(Sender: TObject);
    procedure TabSet1Change(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure SpreadSheet1ForumlaErrorInfo(Sender: TObject; ACol, ARow,
      ErrType, ErrPos, ErrParam: Integer; ErrStr: String);
    procedure LibGridForumlaErrorInfo(Sender: TObject; ACol, ARow, ErrType,
      ErrPos, ErrParam: Integer; ErrStr: String);
    procedure LibGridCellValidate(Sender: TObject; Col, Row: Integer;
      var Value: String; var Valid: Boolean);
    procedure LibGridGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure StringGridCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    selcol,selrow:integer;

  public
    { Public declarations }
    procedure UpdateStatusBar(acol,arow:integer);
  end;

var
  Form1: TForm1;

implementation

uses Uhelp, Uabout;

{$R *.DFM}

procedure TForm1.AdvSpreadGrid1FormulaError(Sender: TObject; aCol,
  aRow: Integer; S: String);
begin
  Statusbar1.Panels[1].Text := s;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  // do not load or save the fixed cells
  Advspreadgrid1.SaveFixedCells := False;
  NoteBook1.PageIndex := 0;
  AdvSpreadGrid1.LoadFromCSV('spread.csv');
  PageControl1.ActivePage := TabSheet1;
  DecimalSeparator := '.';
  ThousandSeparator := ',';
end;

procedure TForm1.ClearButtonClick(Sender: TObject);
begin
  Advspreadgrid1.ClearNormalCells;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    with AdvSpreadGrid1 do
    begin
      ClearNormalCells;
      AutoRecalc := False;
      SaveFixedCells := False;
      LoadFromCSV(Opendialog1.FileName);
      AutoRecalc := True;
      Recalc;
    end;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
    Advspreadgrid1.SaveToCSV(SaveDialog1.FileName);
end;

procedure TForm1.ShowFormClick(Sender: TObject);
begin
  AdvSpreadGrid1.ShowFormula := ShowForm.checked;
end;

procedure TForm1.FmtChange(Sender: TObject);
begin
  AdvSpreadGrid1.CellFormat := '%.'+IntToStr(Fmt.Value)+'f';
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  Help.Show;
end;

procedure TForm1.AdvSpreadGrid1AutoDeleteRow(Sender: TObject;
  aRow: Integer);
begin
  AdvSpreadGrid1.AutoSpreadHeaders;
end;

procedure TForm1.AdvSpreadGrid1AutoInsertRow(Sender: TObject;
  ARow: Integer);
begin
  AdvSpreadGrid1.AutoSpreadHeaders;
end;

procedure TForm1.AdvSpreadGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  CanSelect := True;
  SelCol := ACol;
  SelRow := ARow;
  UpdateStatusbar(ACol,ARow);
end;

procedure TForm1.AdvSpreadGrid1GridHint(Sender: TObject; Arow,
  Acol: Integer; var hintstr: String);
begin
  if Pos('=',AdvSpreadGrid1.Cells[acol,arow]) = 1 then
    HintStr := AdvSpreadGrid1.Cells[acol,arow];
end;

procedure TForm1.AdvSpreadGrid1CellFormat(Sender: TObject; ACol,
  Arow: Integer; var format: String; var datetype: Boolean);
begin
  DateType := ACol = 7;
  if DateType then
    Format := 'ddd dd/mm/yyyy';
end;

procedure TForm1.AdvSpreadGrid1CalcCustomFunction(sender: TObject;
  var func: String; var param: Double);
begin
  if func = 'BFS' then
    param := param * 2;
  if func = 'SELECT' then
    param := 125;
end;

procedure TForm1.AdvSpreadGrid1IsCustomFunction(sender: TObject;
  var func: String; var match: Boolean);
begin
  match := pos('BFS',func) = 1;
  if match then
    func := 'BFS'
  else
  begin
    match := pos('SELECT',func) = 1;
    if match then
      func := 'SELECT';
  end;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
  NameMode.Checked := True;

  with advspreadgrid1 do
  begin
    ClearNormalCells;
    CellNameMode := nmRC;
    Cells[1,1] := 'Price';
    Cells[1,2] := 'Tax';
    Floats[2,1] := 100;
    Floats[2,2] := 15;
    CellName[2,1] := 'PRICE';
    CellName[2,2] := 'TAX';
    Cells[2,3] := '=PRICE+(PRICE*TAX/100)';
    Floats[3,1] := 100;
    Floats[3,2] := 15;
    Cells[3,3] := '=R1C3+(R1C3*R2C3/100)';
    Recalc;
  end;
end;

procedure TForm1.SetCellNameClick(Sender: TObject);
var
  s: string;
begin
  with AdvSpreadGrid1 do
  begin
    s := CellName[Col,Row];
    if Inputquery('Cell name','Name:',s) then
    begin
      CellName[Col,Row] := s;
      UpdateStatusbar(Col,Row);
    end;
  end;
end;

procedure TForm1.UpdateStatusBar(ACol,ARow:integer);
begin
  with AdvSpreadGrid1 do
  begin
    Statusbar1.Panels[0].Text := CellToName(ACol,ARow);
    if Cellname[ACol,ARow]<>'' then
      StatusBar1.Panels[0].Text := StatusBar1.panels[0].text+' ['+cellname[acol,arow]+']';
  end;
end;

procedure TForm1.SumButtonClick(Sender: TObject);
var
  i: Integer;
  gr: TGridRect;
begin
  with AdvSpreadGrid1 do
  for i := Selection.Left to Selection.Right do
  begin
    gr := Selection;
    gr.Left := i;
    gr.Right := i;
    Cells[i,Selection.Bottom + 1] := '=SUM('+RangeToName(gr)+')';
    Recalc;
  end;
end;

procedure TForm1.NameModeClick(Sender: TObject);
begin
  if NameMode.checked then
    AdvSpreadGrid1.CellNameMode := nmRC
  else
    AdvSpreadGrid1.CellNameMode := nmA1;
end;

procedure TForm1.About2Click(Sender: TObject);
begin
  About.Show;
end;

procedure TForm1.Cut1Click(Sender: TObject);
begin
  AdvSpreadGrid1.CutSelectionToClipboard;
end;

procedure TForm1.Copy1Click(Sender: TObject);
begin
  AdvspreadGrid1.CopySelectionToClipboard;
end;

procedure TForm1.Paste1Click(Sender: TObject);
begin
  AdvSpreadGrid1.PasteSelectionFromClipboard;
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.RangeDemoClick(Sender: TObject);
var
  i: Integer;
  COUNT: Integer;

begin
  COUNT := 100;
  NameMode.Checked := True;

  with AdvSpreadGrid1 do
  begin
    RowCount := COUNT + 1;
    ClearNormalCells;
    AutoRecalc := False;
    CellNameMode := nmRC;
    for i:=1 to COUNT do
    begin
      Ints[1,i] := i;
      Cells[2,i] := '=SUM(R'+IntToStr(i)+'C1:R'+IntToStr(COUNT)+'C1)';
      Cells[3,i] := '=AVERAGE(R'+IntToStr(i)+'C1:R'+IntToStr(COUNT)+'C1)';
      Cells[4,i] := '=MIN(R'+IntToStr(i)+'C1:R'+IntToStr(COUNT)+'C1)';
      Cells[5,i] := '=MAX(R'+IntToStr(i)+'C1:R'+IntToStr(COUNT)+'C1)';
      if i < Count then
        Cells[6,i] := '=STDEV(R'+IntToStr(i)+'C1:R'+IntToStr(COUNT)+'C1)';
    end;

    InsertRows(1,1);
    AutoHeaders := True;
    Cells[2,1] := 'SUM';
    Cells[3,1] := 'AVERAGE';
    Cells[4,1] := 'MIN';
    Cells[5,1] := 'MAX';
    Cells[6,1] := 'STDEV';

    ReCalc;
    AutoRecalc := True;
  end;
end;

procedure TForm1.AdvSpreadGrid1ForumlaErrorInfo(Sender: TObject; ACol,
  ARow, ErrType, ErrPos, ErrParam: Integer; ErrStr: String);
begin
  statusbar1.panels[1].Text  := AdvSpreadGrid1.ErrorToString(ErrType)+ ' at position '+inttostr(ErrPos)+' of cell ['+inttostr(ACol)+':'+inttostr(ARow)+']';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  NoteBook1.PageIndex := 0;
  SpreadSheet1.Floats[1,1] := 1;
  SpreadSheet1.Floats[1,2] := 2;
  SpreadSheet1.Floats[1,3] := 3;

  SpreadSheet2.Floats[1,1] := 4;
  SpreadSheet2.Floats[1,2] := 5;
  SpreadSheet2.Floats[1,3] := 6;

  SpreadSheet1.Cells[2,4] := '=SUM(A1:A3)';
  SpreadSheet2.Cells[2,4] := '=SUM(A1:A3)';

  SpreadSheet1.Cells[1,4] := 'Sum of sheet 1';
  SpreadSheet1.Cells[1,5] := 'Sum of sheet 2';

  SpreadSheet2.Cells[1,4] := 'Sum of sheet 2';
  SpreadSheet2.Cells[1,5] := 'Sum of sheet 1';

  SpreadSheet1.Cells[2,5] := '=SUM(Sheet2!A1:A3)';
  SpreadSheet2.Cells[2,5] := '=SUM(Sheet1!A1:A3)';

  SpreadSheet1.Cells[1,6] := 'Sum';
  SpreadSheet1.Cells[2,6] := '=B4 + B5';

  SpreadSheet2.Cells[1,6] := 'Sum';
  SpreadSheet2.Cells[2,6] := '=B4 + B5';

  SpreadSheet1.Recalc;
  SpreadSheet2.Recalc;
end;

procedure TForm1.TabSet1Change(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
  Notebook1.PageIndex := NewTab;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  with LibGrid do
  begin
    Cells[1,1] := 'Misc. lib';
    Cells[1,2] := '5';
    Cells[1,3] := '23';
    Cells[1,4] := '11';
    Cells[1,5] := '7';
    Cells[1,6] := 'Harmonic mean';
    Cells[1,7] := '=HARMEAN(A2:A5)';
    Cells[1,8] := 'Geometric mean';
    Cells[1,9] := '=GEOMEAN(A2:A5)';

    Cells[2,1] := 'ESB Functions';
    Cells[2,2] := '24';
    Cells[2,3] := '15';
    Cells[2,4] := '6';
    Cells[2,5] := '21';
    Cells[2,4] := 'GCD';
    Cells[2,5] := '=GCD(B2,B3)';
    Cells[2,6] := 'LCM';
    Cells[2,7] := '=LCM(B2,B3)';
    Cells[2,8] := 'Distance';
    Cells[2,9] := '=DISTANCE(A2:A5)';
    Cells[2,10] := 'Gamma';
    Cells[2,11] := '=GAMMA(0.75)';

    Cells[3,1] := 'ESB Constants';
    Cells[3,2] := 'Sqrt3';
    Cells[3,3] := '=Sqrt3';
    Cells[3,4] := 'SqrtPi';
    Cells[3,5] := '=SqrtPi';

    Cells[3,6] := 'InvPi';
    Cells[3,7] := '=InvPi';

    Cells[4,1] := 'Finance';
    Cells[4,2] := 'CTerm 4% 100/150';
    Cells[4,3] := '=Cterm(0.05,150,100)';

    Cells[4,4] := 'Rate 150/100 5';
    Cells[4,5] := '=Rate(150,100,5)';

    Cells[4,6] := 'Pmt 100 0.04 10';
    Cells[4,7] := '=Pmt(100,0.04,10)';

    Cells[4,9] := 'Forced error';
    Cells[4,10] := '=ErF(1)';
    Recalc;
  end;
end;

procedure TForm1.SpreadSheet1ForumlaErrorInfo(Sender: TObject; ACol, ARow,
  ErrType, ErrPos, ErrParam: Integer; ErrStr: String);
begin
  statusbar1.panels[1].Text  := AdvSpreadGrid1.ErrorToString(ErrType)+ ' at position '+inttostr(ErrPos)+' of cell ['+inttostr(ACol)+':'+inttostr(ARow)+']';
end;

procedure TForm1.LibGridForumlaErrorInfo(Sender: TObject; ACol, ARow,
  ErrType, ErrPos, ErrParam: Integer; ErrStr: String);
begin
  statusbar1.panels[1].Text  := AdvSpreadGrid1.ErrorToString(ErrType)+ ' at position '+inttostr(ErrPos)+' of cell ['+inttostr(ACol)+':'+inttostr(ARow)+']';
end;

procedure TForm1.LibGridCellValidate(Sender: TObject; Col, Row: Integer;
  var Value: String; var Valid: Boolean);
begin
  statusbar1.Panels[1].Text := '';
end;

procedure TForm1.LibGridGetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  if ARow = 1 then AFont.Style := [fsBold];
end;

procedure TForm1.StringGridCanEditCell(Sender: TObject; ARow,
  ACol: Integer; var CanEdit: Boolean);
begin
  canedit := (acol = 1) and (arow > 1);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i: Integer;
begin
  with StringGrid do
  begin
    Cells[1,1] := 'Type text'#13#10'in this column';
    RowHeights[1] := 40;
    Cells[1,2] := 'BMW';
    Cells[1,3] := 'Audi';
    Cells[1,4] := 'Porsche';
    Cells[1,5] := 'Ferrari';
    Cells[1,6] := 'Mercedes';

    Cells[2,1] := 'Length of text';
    Cells[3,1] := 'Lowercase';
    Cells[4,1] := 'Uppercase';
    Cells[5,1] := 'Reverse';    

    for i := 2 to RowCount - 1 do
      Cells[2,i] := '=LEN(A'+IntToStr(i)+')';

    for i := 2 to RowCount - 1 do
      Cells[3,i] := '=LOWER(A'+IntToStr(i)+')';

    for i := 2 to RowCount - 1 do
      Cells[4,i] := '=UPPER(A'+IntToStr(i)+')';

    for i := 2 to RowCount - 1 do
      Cells[5,i] := '=REVERSE(A'+IntToStr(i)+')';

    ReCalc;


  end;
end;

end.
