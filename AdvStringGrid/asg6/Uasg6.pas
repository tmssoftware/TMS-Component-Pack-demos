{*************************************************************************}
{ TAdvStringGrid demo application                                         }
{                                                                         }
{ written by TMS Software                                                 }
{            copyright © 1998-2011                                        }
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

unit Uasg6;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, AdvGrid, StdCtrls, ShellApi, BaseGrid, AdvObj, XPMan;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1GetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: string);
    procedure AdvStringGrid1CanSort(Sender: TObject; aCol: Integer;
      var dosort: Boolean);
    procedure AdvStringGrid1CustomCompare(Sender: TObject; str1,
      str2: string; var res: Integer);
    procedure Button2Click(Sender: TObject);
    procedure AdvStringGrid1DblClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure AdvStringGrid1GetAlignment(Sender: TObject; ARow,
      ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadCurDir;
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
  LoadCurDir;
end;

procedure TForm1.LoadCurDir;
var
  lpFindFileData: _WIN32_FIND_DATA;
  findhandle: THandle;
  i: Integer;
  dir: string;

  procedure FindDataToGrid(lpData: _WIN32_FIND_DATA);
  var
    systime: _SYSTEMTIME;
    SHFILEINFO: _SHFILEINFO;
  begin
    with AdvStringGrid1 do
    begin
      Cells[1, i] := StrPas(lpData.cFilename);

      if (Checkbox1.Checked) or (lpData.nFileSizeLow < 1024) then
        Cells[2, i] := Inttostr(lpData.nFileSizeLow)
      else
      begin
        Cells[2, i] := IntToStr(round(lpData.nFileSizeLow / 1024)) + 'Kb'
      end;

      FileTimeToSystemTime(lpData.ftLastAccessTime, systime);

      Cells[4, i] := DateToStr(EncodeDate(systime.wYear, systime.wMonth, systime.wDay));

      SHGetFileInfo(lpData.cFilename, 0, shfileinfo, sizeof(shfileinfo),
        SHGFI_TYPENAME or SHGFI_SYSICONINDEX);

      Cells[3, i] := StrPas(SHFileInfo.szTypeName);
      AddImageIdx(0, i, shFileInfo.iIcon, haLeft, vaTop);
      inc(i);
      if i > RowCount then
        Rowcount := i;
    end;
  end;

begin
  AdvStringgrid1.ClearNormalCells;
  AdvStringgrid1.RowCount := 2;
  i := 1;
  dir := GetCurrentDir;

  FindHandle := FindFirstFile('*.*', lpFindFileData);

  if FindHandle <> 0 then
  begin
    FindDataToGrid(lpFindFileData);
    while FindNextFile(FindHandle, lpFindFileData) do
    begin
      FindDataToGrid(lpFindFileData);
    end;
  end;
  AdvStringGrid1.AutoSizeColumns(False, 16);
end;



procedure TForm1.FormCreate(Sender: TObject);
var
  ShFileInfo: TSHFILEINFO;
begin
  with AdvStringGrid1 do
  begin
    GridImages := TImageList.CreateSize(16, 16);
    GridImages.ShareImages := True;
    GridImages.BkColor := clNone;
    GridImages.Masked := False;
    GridImages.Handle := ShGetFileInfo('', 0, SHFileInfo, SizeOf(SHFileInfo),
      SHGFI_SMALLICON or SHGFI_ICON or SHGFI_SYSICONINDEX);
  end;
end;

procedure TForm1.AdvStringGrid1GetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
  case acol of
    1, 3: if Checkbox2.Checked then
        AStyle := ssAlphabetic
      else
        AStyle := ssAlphanocase;
    2: if not Checkbox1.Checked then
        AStyle := ssCustom
      else
        AStyle := ssNumeric;
    4: AStyle := ssDate;
  end;
end;

procedure TForm1.AdvStringGrid1CanSort(Sender: TObject; aCol: Integer;
  var dosort: Boolean);
begin
  DoSort := ACol > 0;
end;

procedure TForm1.AdvStringGrid1CustomCompare(Sender: TObject; str1,
  str2: string; var res: Integer);
var
  i1, i2, code: integer;

begin
  if (pos('Kb', str1) > 0) then
  begin
    Delete(str1, Pos('Kb', str1), 2);
    Val(str1, i1, code);
    i1 := i1 * 1024;
  end
  else
    Val(str1, i1, code);

  if (pos('Kb', str2) > 0) then
  begin
    Delete(str2, Pos('Kb', str2), 2);
    Val(str2, i2, code);
    i2 := i2 * 1024;
  end
  else
    Val(str2, i2, code);

  if i1 = i2 then
    res := 0
  else
  begin
    if i1 > i2 then
      res := 1
    else
      res := -1;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  AdvStringGrid1.ClearRows(1, AdvStringGrid1.RowCount - 1);
  AdvStringGrid1.RowCount := 1;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  LoadCurDir;
end;

procedure TForm1.AdvStringGrid1DblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
  if (ACol = 1) and (ARow > 0) then
  begin
    if AdvStringGrid1.Cells[3, ARow] = 'File Folder' then
    begin
      chdir(AdvStringGrid1.Cells[ACol, ARow]);
      LoadCurDir;
    end;
  end;
end;

procedure TForm1.AdvStringGrid1GetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  if acol = 2 then
    HAlign := taRightJustify;
end;

end.
