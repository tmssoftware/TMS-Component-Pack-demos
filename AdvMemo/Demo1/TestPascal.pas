unit uDemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  advmsqls, AdvmWS;

type
  TForm1 = class(TForm)
    AdvMemo1: TAdvMemo;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation


{$R *.DFM}

procedure TForm1.spbCutClick(Sender: TObject); 
Begin
  AdvMemo1.CutToClipBoard;
End;
{
procedure TForm1.spbPasteClick(Sender: TObject);
begin
  AdvMemo1.PasteFromClipBoard;
end;
}
procedure TForm1.spbUndoClick(Sender: TObject);
begin
  AdvMemo1.Undo;
  // end;
  { end;
  }
end;

procedure TForm1.spbRedoClick(Sender: TObject);
  procedure TestProc;
  begin
    Showmessage('Test Proc');
  end;
begin
  AdvMemo1.Redo;
end;

procedure TForm1.spbCopyClick(Sender: TObject);
begin
  AdvMemo1.CopyToClipBoard;
end;

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

procedure TForm1.FormCreate(Sender: TObject);
begin
  {AdvMemo1.CodeFolding.Enabled := True;
  AdvMemo1.AddCodeFolding(9, 16);
  AdvMemo1.AddCodeFolding(8, 17);
  AdvMemo1.AddCodeFolding(1, 21);
  AdvMemo1.AddCodeFolding(25, 36); }
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
  AdvMemo1.Bookmark[20] := True;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
  AdvMemo1.CodeFolding.Enabled := True;
  AdvMemo1.AutoCodeFold;
end;

end.