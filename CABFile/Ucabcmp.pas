{********************************************************************}
{ TCABFILE DEMO                                                      }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 1998-2012                                   }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit Ucabcmp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, cabfiles, ComCtrls, ExtCtrls, slstbox;

type
  TForm1 = class(TForm)
    CABFile1: TCABFile;
    ListView1: TListView;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    ProgressBar1: TProgressBar;
    RelPath: TEdit;
    Label1: TLabel;
    CompressGroup: TRadioGroup;
    SFX: TCheckBox;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    GroupBox2: TGroupBox;
    Button6: TButton;
    Button5: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure CABFile1CompressProgress(sender: TObject; pos, tot: Integer);
    procedure Button7Click(Sender: TObject);
    procedure CABFile1DecompressProgress(sender: TObject; filename: String;
      pos, tot: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
  i: Integer;
begin
  if Opendialog1.Execute then
  begin
    CABFile1.CABFile := OpenDialog1.FileName;
    CABFile1.GetContents;
    ListView1.Items.Clear;

    for i := 1 to CABFile1.CABFileContents.Count do
    begin
      with ListView1.items.add do
      begin
        Caption := CABFile1.CABFileContents.Items[i - 1].Name;
        SubItems.Add(DateToStr(CABFile1.CABFileContents.Items[i - 1].Date));
        SubItems.Add(IntToStr(CABFile1.CABFileContents.Items[i - 1].Size));
      end;
    end;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  CABFile1.TargetPath := RelPath.Text;
  CABFile1.ExtractAll;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  CABFile1.TargetPath := RelPath.Text;
  if Assigned(listview1.Selected) then
    CABFile1.ExtractFile(listview1.Selected.Caption);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  i: Integer;
begin
  CABFile1.CABFileContents.SelectNone;
  for i := 1 to listview1.Items.Count do
  begin
    CABFile1.CABFileContents.Items[i-1].Selected := ListView1.Items[i - 1].Selected;
  end;

  CABFile1.ExtractSelected;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  i: Integer;

begin
  if listview1.items.Count=0 then
  begin
    showmessage('No files selected for compression');
    exit;
  end;

  case CompressGroup.ItemIndex of
  0:CABFile1.CompressionType:=typMSZIP;
  1:CABFile1.CompressionType:=typLZX;
  end;

  if savedialog1.execute then
  begin
    CABFile1.CABFile:=savedialog1.filename;

    if extractfileExt(CABFile1.CABFile)='' then CABFile1.CABFile:=CABFile1.CABFile+'.CAB';

    if uppercase(extractfileExt(CABFile1.CABFile))<>'.CAB' then
    begin
      showmessage('Invalid file extension = '+extractfileExt(CABFile1.CABFile));
      exit;
    end;

    if not fileexists(CABFile1.CABFile) then
    begin
      CABFile1.CABFileContents.Clear;

      for i:=1 to listview1.items.Count do
      begin
        with  CABFile1.CABFileContents.Add do
        begin
          Name:=listview1.items[i-1].caption;
          RelPath:=extractfilepath( listview1.items[i-1].Subitems[2]);
        end;
      end;

      if SFX.Checked then
      begin
        if CABFile1.MakeSFX then
        begin
          showmessage('Self extracting EXE file created'+#13+'Compression ratio = '+format('%.2f',[CABFile1.CompressionRatio])+'%');
        end;
      end
      else
      begin
        if CABFile1.Compress then
        begin
          showmessage('CAB file created'+#13+'Compression ratio = '+format('%.2f',[CABFile1.CompressionRatio])+'%');
        end;
      end;
    end
    else
      showmessage('Cannot add files to existing CAB file');
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
 i:integer;
 rp:string;

 function GetFileSize(filename:string):integer;
 var
  f:file of byte;
 begin
  result:=0;
  assignfile(f,filename);
  {$i-}
  reset(f);
  {$i+}
  if ioresult=0 then
   begin
    result:=filesize(f);
    closefile(f);
   end;
 end;

begin
  opendialog1.options:=opendialog1.options + [ofAllowMultiSelect];
  opendialog1.filter:='All files (*.*)|*.*';
  if opendialog1.execute then
  begin
    rp:=relpath.text;
    if rp<>'' then if rp[length(rp)]<>'\' then rp:=rp+'\';
    if (length(rp)>0) then  if rp[1]='\' then delete(rp,1,1);
    for i:=1 to opendialog1.files.Count do
    with listview1.items.Add do
    begin
      Caption:=opendialog1.files[i-1];
      subitems.Add(datetostr(FileDateToDateTime(fileage(opendialog1.files[i-1]))));
      subitems.Add(inttostr(GetFilesize(opendialog1.files[i-1])));
      subitems.Add(rp+extractfilename(opendialog1.files[i-1]));
    end;
  end;
  opendialog1.filter:='CAB files (*.CAB)|*.cab|All files (*.*)|*.*';
  opendialog1.options:=opendialog1.options - [ofAllowMultiSelect];
end;

procedure TForm1.CABFile1CompressProgress(sender: TObject; pos,
  tot: Integer);
begin
  if tot = 0 then exit;
  progressbar1.position:=round(pos/tot*100);
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  listview1.items.Clear;
end;

procedure TForm1.CABFile1DecompressProgress(sender: TObject;
  filename: String; pos, tot: Integer);
begin
  progressbar1.position:=round(pos/tot*100);
end;

end.
