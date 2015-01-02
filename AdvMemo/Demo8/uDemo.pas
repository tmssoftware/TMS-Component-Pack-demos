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

unit uDemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  AdvMemo, StdCtrls, ExtCtrls, Menus, Buttons, ExtDlgs, Printers, Advmps,
  advmsqls, advmws, ActnList
  {$IFDEF VER150}
  , xpman
  {$ENDIF}
  ;

type
  TForm1 = class(TForm)
    AdvMemo1: TAdvMemo;
    Panel1: TPanel;
    spbCut: TSpeedButton;
    spbPaste: TSpeedButton;
    spbSave: TSpeedButton;
    spbOpen: TSpeedButton;
    spbCopy: TSpeedButton;
    spbUndo: TSpeedButton;
    spbRedo: TSpeedButton;
    spbNew: TSpeedButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Label1: TLabel;
    ComboBox1: TComboBox;
    AdvHTMLMemoStyler1: TAdvHTMLMemoStyler;
    AdvJSMemoStyler1: TAdvJSMemoStyler;
    AdvWebMemoStyler1: TAdvWebMemoStyler;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SaveDialog2: TSaveDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;
    AdvSQLMemoStyler1: TAdvSQLMemoStyler;
    AdvMemoFindDialog1: TAdvMemoFindDialog;
    AdvMemoFindReplaceDialog1: TAdvMemoFindReplaceDialog;
    SpeedButton5: TSpeedButton;
    AdvPascalMemoStyler1: TAdvPascalMemoStyler;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Edit1: TMenuItem;
    New1: TMenuItem;
    Open1: TMenuItem;
    Save1: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    ActionList1: TActionList;
    AdvMemoCut1: TAdvMemoCut;
    AdvMemoCopy1: TAdvMemoCopy;
    AdvMemoPaste1: TAdvMemoPaste;
    N1: TMenuItem;
    Undo1: TMenuItem;
    AdvMemoUndo1: TAdvMemoUndo;
    AdvMemoRedo1: TAdvMemoRedo;
    AdvMemoRedo11: TMenuItem;
    procedure spbNewClick(Sender: TObject);
    procedure spbOpenClick(Sender: TObject);
    procedure spbSaveClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure New1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation



{$R *.DFM}

procedure TForm1.spbNewClick(Sender: TObject);
begin
  AdvMemo1.Clear;
end;

procedure TForm1.spbOpenClick(Sender: TObject);
var
  filename:string;
  extension:string;
  length_filename:Integer;

begin
  if OpenDialog1.Execute then
  begin
    filename := OpenDialog1.FileName;
    AdvMemo1.Lines.LoadFromFile(filename);
    //determine the extension of the filename
    length_filename := Length(filename);
    extension := Copy(filename,length_filename - 2,3);
    if extension = 'htm' then
      begin
        AdvMemo1.SyntaxStyles := AdvHTMLMemoStyler1;
        Combobox1.ItemIndex := 0;
      end
    else if extension = 'pas' then
      begin
        AdvMemo1.SyntaxStyles := AdvPascalMemoStyler1;
        ComboBox1.ItemIndex := 3;
      end
    else
      begin
        AdvMemo1.SyntaxStyles := nil;
        ComboBox1.ItemIndex := 4;
      end
  end;
end;

procedure TForm1.spbSaveClick(Sender: TObject);
var
  filename: string;

begin
  if ComboBox1.ItemIndex = 0 then
    begin
      SaveDialog1.Filename := '.htm';
      SaveDialog1.Filter := 'HTML file (*.htm)';
    end
  else if ComboBox1.ItemIndex = 3 then
    begin
      SaveDialog1.FileName := '.pas';
      SaveDialog1.Filter := 'Pascal file (*.pas)';
    end
  else
    begin
      SaveDialog1.FileName := '';
      SaveDialog1.Filter := '';
    end;
  if SaveDialog1.Execute then
  begin
    filename := SaveDialog1.FileName;
    AdvMemo1.Lines.SaveToFile(SaveDialog1.FileName);
  end;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
  0:AdvMemo1.SyntaxStyles := AdvHTMLMemoStyler1;
  1:AdvMemo1.SyntaxStyles := AdvJSMemoStyler1;
  2:AdvMemo1.SyntaxStyles := AdvWebMemoStyler1;
  3:AdvMemo1.SyntaxStyles := AdvPascalMemoStyler1;
  4:AdvMemo1.SyntaxStyles := AdvSQLMemoStyler1;
  5:AdvMemo1.SyntaxStyles := nil;
  end;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  if savedialog2.Execute then
     AdvMemo1.SaveToHTML(SaveDialog2.FileName);
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  if PrinterSetupDialog1.Execute then
    AdvMemo1.Print;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  AdvMemoFindDialog1.Execute;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  AdvMemoFindReplaceDialog1.Execute;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
  AdvMemo1.CopyHTMLToClipboard;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  if paramcount > 0 then
    advmemo1.Clear;
end;

procedure TForm1.New1Click(Sender: TObject);
begin
  AdvMemo1.Clear;
end;

end.



