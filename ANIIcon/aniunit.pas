{********************************************************************}
{ TANIICON DEMO                                                      }
{ written by TMS Software                                            }
{            copyright © 1998-20012                                  }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit aniunit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FileCtrl, StdCtrls, ExtCtrls, shellapi, aniicon;

const
  anicursor = 2000;

type
  Tfrm_Main = class(TForm)
    FileListBox1: TFileListBox;
    DirectoryListBox1: TDirectoryListBox;
    Panel1: TPanel;
    chk_Animated: TCheckBox;
    DriveComboBox1: TDriveComboBox;
    Button1: TButton;
    AniIcon1: TAniIcon;
    Label1: TLabel;
    chk_Cursor: TCheckBox;
    Label2: TLabel;
    AniIcon2: TAniIcon;
    Label3: TLabel;
    AniIcon3: TAniIcon;
    CheckBox1: TCheckBox;
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chk_AnimatedClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FileListBox1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DeleteItem;
    procedure FileListBox1Change(Sender: TObject);
    procedure chk_CursorClick(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Main: Tfrm_Main;

implementation

{$R *.DFM}

{==============================================================================}
function TheWindowsDirectory: string;
var
   WinDir: PChar;
   WindowsDirectory: string;
begin
   GetMem(WinDir, 144);
   GetWindowsDirectory(WinDir, 144);
   WindowsDirectory := StrPas(WinDir);
   FreeMem(WinDir, 144);
   result := WindowsDirectory;
end;
{==============================================================================}
procedure Tfrm_Main.DirectoryListBox1Change(Sender: TObject);
begin
   FileListBox1.Directory := DirectoryListBox1.Directory;
end;
{==============================================================================}
procedure Tfrm_Main.FormCreate(Sender: TObject);
var
   StartParam: string;
begin
   StartParam := UpperCase(ParamStr(1));
   if StartParam <> '' then
      begin
         AniIcon1.AniFile.LoadFromFile(StartParam);
         DirectoryListBox1.Directory := ExtractFileDir(StartParam);
         FileListBox1.FileName := StartParam;
      end
   else
      DirectoryListBox1.Directory := TheWindowsDirectory + '\CURSORS\';

  screen.cursors[anicursor+1]:=aniicon2.AniFile.getcursorhandle;
  screen.cursors[anicursor+2]:=aniicon3.AniFile.getcursorhandle;
  label2.cursor:=anicursor+1;
  label3.cursor:=anicursor+2;
end;
{==============================================================================}
procedure Tfrm_Main.chk_AnimatedClick(Sender: TObject);
begin
   AniIcon1.Animated := chk_Animated.Checked;
end;
{==============================================================================}
procedure Tfrm_Main.Button1Click(Sender: TObject);
begin
   Close;
end;
{==============================================================================}
procedure Tfrm_Main.FileListBox1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      46:   DeleteItem;
      113:  ShowMessage(FileListBox1.FileName);
   end;
end;
{==============================================================================}
procedure Tfrm_Main.DeleteItem;
var
   TempIndex: Integer;
begin
   TempIndex := FileListBox1.ItemIndex;
   DeleteFile(FileListBox1.FileName);
   FileListBox1.Update;
   FileListBox1.ItemIndex := TempIndex;
   FileListBox1Change(nil);
end;
{==============================================================================}
procedure Tfrm_Main.FileListBox1Change(Sender: TObject);
begin
   AniIcon1.AniFile.LoadFromFile(FileListBox1.FileName);
   screen.cursors[anicursor]:=AniIcon1.AniFile.GetCursorHandle;
   if chk_Cursor.Checked then self.Cursor:=anicursor;
   panel1.cursor:=anicursor;
   aniicon1.cursor:=anicursor;
end;
{==============================================================================}
procedure Tfrm_Main.chk_CursorClick(Sender: TObject);
begin
  if chk_Cursor.checked then self.Cursor:=anicursor else self.Cursor:=crDefault;
end;

procedure Tfrm_Main.Label2Click(Sender: TObject);
begin
 ShellExecute(Application.Handle,'open','http://www.tmssoftware.com', nil, nil, SW_NORMAL);
end;

procedure Tfrm_Main.Label3Click(Sender: TObject);
begin
 ShellExecute(Application.Handle,'open','mailto:info@tmssoftware.com', nil, nil, SW_NORMAL);
end;

procedure Tfrm_Main.CheckBox1Click(Sender: TObject);
begin
 aniicon1.buttonstyle:=checkbox1.checked;
end;

end.
