{********************************************************************}
{ TMS TAdvSmartMessageBox Demo                                       }
{                                                                    }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2012                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit AdvSmartMessageBoxDEMO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvSmartMessageBox, StdCtrls, OleCtrls, SHDocVw, ExtCtrls, ImgList,
  ComCtrls, Buttons, Clipbrd, PictureContainer, jpeg, AdvStyleIF ;

type
  TForm2 = class(TForm)
    AdvSmartMessageBox1: TAdvSmartMessageBox;
    Timer1: TTimer;
    Image2: TImage;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ScrollBar1: TScrollBar;
    Label7: TLabel;
    ColorBox1: TColorBox;
    ColorBox2: TColorBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Memo1: TMemo;
    ListBox1: TListBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ComboBox3: TComboBox;
    PictureContainer1: TPictureContainer;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ShowSmartMessage(str: String; action: String; title: String);
    procedure FormCreate(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  i: Integer;
  options: Boolean = true;
  NextWnd: HWND;  // handle of window we are registering
  bClipBoard, bAutoSave, bSpelling, bDemoEvents, bHTMLTags: Boolean;

implementation

{$R *.dfm}

procedure TForm2.ScrollBar1Change(Sender: TObject);
begin
  Label7.Caption := inttostr(ScrollBar1.Position);
end;

function ReadWordUnderCursor(S: String; Col:Integer): String;
const
  wordchars = ['a'..'z','A'..'Z','0'..'9','<','/'];   { a set of char }
  {add other chars that are allowed in a word}
var
  theWord: String;
  wordstart, wordend: Integer;
begin
  if S = '' then
  begin
    Result := '';
    Exit;
  end;

  theWord := EmptyStr;

  if not (S[Col + 1] in wordchars) then
  begin
    { Ok caret is not on a word, check if the next character to the left
      is the end of a word }
    If (Col > 0) and (S[Col] in wordchars) then
    begin
      { It is, find the start of this word }
      wordEnd := Col;
      wordStart := Col-1;
      while (wordStart >= 1) and (S[wordStart] in wordchars) do
        Dec( wordStart );
      { We moved one character to far down }
     Inc( wordStart );
     theWord := Copy(S, wordStart, wordEnd - wordStart + 1);
    end;
  end;
  if Length( theWord ) > 0 then
    Result := theWord;
end;

procedure TForm2.ShowSmartMessage(str: String; action: String; title: String);
var
  CustomColor: Boolean;
begin
  if str = '' then
    Exit;

  if ComboBox3.ItemIndex <> 0 then
  begin
    case ComboBox3.ItemIndex of
      1: AdvSmartMessageBox1.SetComponentStyle(tsOffice2003Blue);
      2: AdvSmartMessageBox1.SetComponentStyle(tsOffice2003Olive);
      3: AdvSmartMessageBox1.SetComponentStyle(tsOffice2003Silver);
      4: AdvSmartMessageBox1.SetComponentStyle(tsOffice2003Classic);
      5: AdvSmartMessageBox1.SetComponentStyle(tsOffice2007Luna);
      6: AdvSmartMessageBox1.SetComponentStyle(tsOffice2007Obsidian);
      7: AdvSmartMessageBox1.SetComponentStyle(tsOffice2007Silver);
    end;
    CustomColor := false;
  end
  else
  begin
    CustomColor := true;
  end;

  With AdvSmartMessageBox1.Messages.Add do
  begin

  Text := Text + title;
  Text := Text + '<br />';
  Text := Text + '<hr />';
  Text := Text + '<br />';
  if action <> '' then
  begin
    if action <> 'nonaction' then
    begin
      Text := Text + action + ' : Clipboard actions message';
      Text := Text +   '<br />';
      Text := Text +   '<br />';
    end
  end;
    Text := text + str;
    Text := text + '<br />';

  if Pos('<A',str) <> 0 then
  begin
    Text := Text + '<FONT color="#FFFFFF">A : anchor tag';
    Text := Text + '<br />';
    Text := Text + '&lt;A href="value"&gt; : text after tag is an anchor. The "value" after the href identifier is the anchor.';
    Text := Text + '<br />';
    Text := Text + 'This can be an URL (with ftp,http,mailto,file identifier) or any text.';
    Text := Text + '<br />';
    Text := Text + 'If the value is an URL, the shellexecute function is called, otherwise, the anchor value can be found in the OnAnchorClick event';
    Text := Text + '<br />';
    Text := Text + '</A> : end of anchor';
    Text := Text + '<br />';
    Text := Text + 'Examples :';
    Text := Text + '<br />';
    Text := Text + 'This is a <A href="mailto:myemail@mail.com">test</A>';
    Text := Text + '<br />';
    Text := Text + 'This is a <A href="http://www.tmssoftware.com">test</A>';
    Text := Text + '<br />';
    Text := Text + 'This is a <A href="somevalue">test</A>';
    Text := Text + '<br /> </FONT>';
  end;

  if Pos('Saving',str) <> 0 then
  begin
    Text := Text + ': <img src="save" align="middle"/>  Document saved on ' + TimeToStr(Now);
    Text := Text + '<br />';
    Text := Text + '<br />';
    Text := Text + 'Autosave function generates message';
  end;

  if (Pos('<B', str) <> 0) or (Pos('</B>', str) <> 0) then
  begin
    Text := Text + 'B : Bold tag';
    Text := Text + '<BR />';
    Text := Text + '&lt;B&gt; : start bold text';
    Text := Text + '<BR />';
    Text := Text + '&lt;/B&gt; : end bold text';
    Text := Text + '<BR />';
    Text := Text + '<BR />';
    Text := Text + 'Example : This is a &lt;B&gt;test&lt;/B&gt;';
    Text := Text + '<BR />';
    Text := Text + 'Result : This is a <B>test</B>';
    Text := Text + '<BR />';
  end;
  if (Pos('<I', str) <> 0) or (Pos('</I>', str) <> 0) then
  begin
    Text := Text + 'I : Italic tag';
    Text := Text + '<BR />';
    Text := Text + '&lt;I&gt; : start italic text';
    Text := Text + '<BR />';
    Text := Text + '&lt;/I&gt; : end italic text';
    Text := Text + '<BR />';
    Text := Text + '<BR />';
    Text := Text + 'Example : This is a &lt;I&gt;test&lt;/I&gt;';
    Text := Text + '<BR />';
    Text := Text + 'Result : This is a <I>test</I>';
    Text := Text + '<BR />';
  end;
 if (Pos('<U', str) <> 0) or (Pos('</U>', str) <> 0) then
  begin
    Text := Text + 'U : Underline tag';
    Text := Text + '<BR />';
    Text := Text + '&lt;U&gt; : start underline text';
    Text := Text + '<BR />';
    Text := Text + '&lt;/U&gt; : end underline text';
    Text := Text + '<BR />';
    Text := Text + '<BR />';
    Text := Text + 'Example : This is a &lt;U&gt;test&lt;/U&gt;';
    Text := Text + '<BR />';
    Text := Text + 'Result : This is a <U>test</U>';
    Text := Text + '<BR />';
  end;
  if (Pos('<img', str) <> 0) or (Pos('</img>', str) <> 0) then
  begin
    Text := Text + 'IMG : image tag';
    Text := Text + '<BR />';
    Text := Text + '&lt;IMG src="specifier:name" [align="specifier"] [width="width"] [height="height"] [alt="specifier:name"] &gt; : inserts an image at the location';
    Text := Text + '<BR />';
    Text := Text + 'specifier can be :';
    Text := Text + '<BR />';
    Text := Text + 'idx : name is the index of the image in the associated imagelist';
    Text := Text + '<BR />';
    Text := Text + 'Optionally, an alignment tag can be included. If no alignment is included, the text alignment with respect to the image is bottom. Other possibilities are : align="top" and align="middle"';
    Text := Text + '<BR />';
    Text := Text + 'The width & height to render the image can be specified as well. If the image is embedded in anchor tags, a different image can be displayed when the mouse is in the image area through the Alt attribute.';
    Text := Text + '<BR />';
    Text := Text + 'Examples :';
    Text := Text + '<BR />';
    Text := Text + 'This is an image <IMG src="clock" align="middle">';
    Text := Text + '<BR />';
    Text := Text + 'This is an image <IMG src="question" align="middle">';
    Text := Text + '<BR />';
    Text := Text + 'This is an image <IMG src="email" align="middle">';
    Text := Text + '<BR />';
  end;

  if CustomColor then
  begin
    Color := ColorBox1.Selected;
    ColorTo := ColorBox2.Selected;
  end
  else
  begin
    Font.Color := clBlack;
  end;

  Opacity := strtoint(Label7.Caption);
  if Index = 100 then
    ListBox1.Items.Clear;
  
  ListBox1.Items.Add('Message : ' + Text);
  Show;
end;
end;


procedure TForm2.Timer1Timer(Sender: TObject);
begin
  if bAutoSave then
    ShowSmartMessage('Saving','nonaction', 'Saving the document');
end;

procedure TForm2.Memo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
const
  arrWords : array[0..4] of String = ('BEHAVIOR','ADRESS','DISSAPPOINTED','CHANGABLE','ACCELARATE');
  arrSuggestions : array[0..4] of String = ('Behaviour','Address','Disappointed','Changeable','Accelerate');
var
  i, Row, Col: integer;
  S, W: String;
begin
  if (chr(key) in ['a'..'z','A'..'Z']) then
  begin
    for I := 0 to 4 do
    begin
      Row := Memo1.PerForm(EM_LINEFROMCHAR,Memo1.SelStart,0);
      Col := Memo1.SelStart-Memo1.Perform(EM_LINEINDEX,Row,0);
      S:= Memo1.lines[Row];
      w := ReadWordUnderCursor(S,Col);

      if UpperCase(w) = arrwords[i] then
      begin
        if bSpelling then
          ShowSmartMessage('Spelling suggestion<br />'+arrSuggestions[i],'nonaction','Checking for spelling suggestions');
      end;
    end;
  end;

  if bClipBoard then
  begin
    if ((Key = ord('V')) and (ssCtrl in Shift)) then begin
      ShowSmartMessage(Clipboard.AsText , '<img src="paste" align="middle"/> paste','Action Paste');
      key := 0;
    end;
    if ((Key = ord('C')) and (ssCtrl in Shift)) then begin
      Memo1.CopyToClipboard;
      ShowSmartMessage(Clipboard.AsText , '<img src="copy" align="middle"/> copy','Action Copy');
      key := 0;
    end;
    if ((Key = ord('X')) and (ssCtrl in Shift)) then begin
      Memo1.CutToClipboard;
      ShowSmartMessage(Clipboard.AsText , '<img src="cut" align="middle"/> cut','Action Cut');
      key := 0;
    end;
  end;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
    ShowSmartMessage('Current selected text:<br><i>'+Memo1.SelText+'</i>','nonaction','Selected text message');
end;

procedure TForm2.Button2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if bDemoEvents then
    ShowSmartMessage('Button MouseUp event','nonaction','Event message');
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  if bDemoEvents then
    ShowSmartMessage('Button Click event','nonaction','Event message');
end;

procedure TForm2.CheckBox4Click(Sender: TObject);
var
  bCheck: Boolean;
begin
  bCheck := TCheckBox(Sender).Checked;
  case (TCheckBox(Sender).Tag) of
  1: begin
       bClipBoard := bCheck;
       showsmartmessage('Clipboard Actions enabled = ' + BoolToStr(bCheck,true),'ClipBoard Actions','Event Message');
     end;
  2:
     begin
       bAutoSave := bCheck;
       showsmartmessage('Autosave Events enabled = ' + BoolToStr(bCheck,true),'AutoSave Events','Event Message');
     end;
  3:
     begin
       bSpelling := bCheck;
       showsmartmessage('Spelling Events enabled = ' + BoolToStr(bCheck,true),'Spelling Events','Event Message');
     end;
  4:
     begin
       bDemoEvents := bCheck;
       showsmartmessage('Demo Events enabled = ' + BoolToStr(bCheck,true),'Demo Events','Event Message');
     end;
  5:
     begin
       bHTMLTags := bCheck;
       showsmartmessage('Context Help on HTML Tags enabled = ' + BoolToStr(bCheck,true),'Context Help on HTML Tags','Event Message');
     end;
  end;
end;

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0:AdvSmartMessageBox1.DisplayStyle := dsFadeInOut;
    1:AdvSmartMessageBox1.DisplayStyle := dsRollInOut;
  end;
end;

procedure TForm2.ComboBox2Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0:AdvSmartMessageBox1.DisplayType := dtSequence;
    1:AdvSmartMessageBox1.DisplayType := dtStackedInOut;
  end;
end;

procedure TForm2.ComboBox3Change(Sender: TObject);
var
  Custom: Boolean;
begin
  if ComboBox3.ItemIndex = 0 then
    Custom := true
  else
    Custom := false;

  ColorBox1.Enabled := Custom;
  ColorBox2.Enabled := Custom;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  bClipBoard := true;
  bSpelling := true;
  bDemoEvents := true;
  AdvSmartMessageBox1.DisplayPointY := Button1.Top;
  advSmartMessageBox1.DisplayPointX := CheckBox5.Left + CheckBox5.Width ;
  NextWnd := SetClipboardViewer(Self.Handle);
//  DoubleBuffered := true;
end;

procedure TForm2.ListBox1DblClick(Sender: TObject);
begin
  AdvSmartMessageBox1.Messages[ListBox1.ItemIndex].Show;
end;

procedure TForm2.Memo1Change(Sender: TObject);
var
  Row: Integer;
  Col: Integer;
  S: String;
begin
  if bHTMLTags then
  begin
    Row := Memo1.PerForm(EM_LINEFROMCHAR,Memo1.SelStart,0);
    Col := Memo1.SelStart-Memo1.Perform(EM_LINEINDEX,Row,0);
    S:= Memo1.lines[Row];
    if (Pos('>',ReadWordUnderCursor(S,Col)) = 0)  then // or ((Pos('<',ReadWordUnderCursor(S,Col)) <> 0) and (Pos('><',ReadWordUnderCursor(S,Col)) <> 0)) then
    begin
      if Pos(UpperCase('<a'),UpperCase(ReadWordUnderCursor(S, Col))) <> 0 then
      begin
        ShowSmartMessage('<A','nonaction','Anchor Tag');
      end;
      if Pos(UpperCase('<b'),UpperCase(ReadWordUnderCursor(S, Col))) <> 0 then
      begin
        ShowSmartMessage('<B','nonaction','Bold Tag');
      end;
      if Pos('<I',ReadWordUnderCursor(S, Col)) <> 0 then
      begin
        ShowSmartMessage('<I','nonaction','Italic Tag');
      end;
      if Pos(UpperCase('<u'),UpperCase(ReadWordUnderCursor(S, Col))) <> 0 then
      begin
        ShowSmartMessage('<U','nonaction','Underline Tag');
      end;
      if Pos('<img',ReadWordUnderCursor(S, Col)) <> 0 then
      begin
        ShowSmartMessage('<img','nonaction','Image Tag');
      end;
    end;
  end;
end;


end.



