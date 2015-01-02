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

unit uasg23;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, jpeg,
  Grids, AdvGrid, StdCtrls, FileCtrl, FlCtrlEx, ComCtrls, ExtCtrls, asgprev,
  BaseGrid, AdvObj, XPMan;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    ProgressBar1: TProgressBar;
    AdvPreviewDialog1: TAdvPreviewDialog;
    Panel1: TPanel;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    Button1: TButton;
    filenames: TCheckBox;
    UpDown1: TUpDown;
    Label1: TLabel;
    procedure DirectoryListBoxEx1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure AdvStringGrid1GetAlignment(Sender: TObject; ARow,
      ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
  private
    { Private declarations }
  public
    { Public declarations }
    dirpath: string;
    imagecount: integer;
    procedure LoadImages;
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.LoadImages;
var
  i: integer;
  r, c: integer;

begin
  dirpath := Directorylistbox1.Directory;
  if dirpath[length(dirpath)] <> '\' then
    dirpath := dirpath + '\';

  if filelistbox1.items.Count <= 0 then
    Exit;

  Advstringgrid1.Clear;
  r := 1;
  c := 1;


  progressbar1.min := 1;
  progressbar1.max := filelistbox1.items.Count;
  progressbar1.position := 1;
  advstringgrid1.beginupdate;

  with Filelistbox1, Advstringgrid1 do
    for i := 1 to Items.Count do
    begin
      if Filenames.Checked then
      begin
        AdvStringgrid1.Cells[c, r] := items[i - 1];
        AdvStringgrid1.CreateFilePicture(c, r, true, ShrinkWithAspectRatio, 20, haCenter, vaAboveText).FileName := (dirpath + items[i - 1]);
      end
      else
      begin
        AdvStringgrid1.CreateFilePicture(c, r, true, ShrinkWithAspectRatio, 20, haCenter, vaCenter).FileName := (dirpath + items[i - 1]);
      end;

      inc(c);
      if c = colcount then
      begin
        c := 1;
        inc(r);
      end;

      if r = rowcount then
      begin
        Rowcount := Rowcount + 1;
        Rowheights[rowcount - 1] := Rowheights[rowcount - 2];
      end;
      Progressbar1.position := i;
    end;

  Advstringgrid1.endupdate;
end;



procedure TForm1.DirectoryListBoxEx1Change(Sender: TObject);
begin
  LoadImages;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  advpreviewdialog1.Execute;
end;

procedure TForm1.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
  with advstringgrid1 do
  begin
    if Button = btNext then colcount := colcount + 1
    else if Colcount > 2 then colcount := colcount - 1;

    defaultcolwidth := colwidths[1];
    colwidths[0] := 16;
    Label1.Caption := 'Nr. of columns : ' + inttostr(colcount - 1);
  end;

  LoadImages;
end;

procedure TForm1.AdvStringGrid1GetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  Halign := taCenter;
end;

end.
