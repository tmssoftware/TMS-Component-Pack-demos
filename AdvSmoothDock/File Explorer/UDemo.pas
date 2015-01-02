{********************************************************************}
{ TMS TAdvSmoothDock Demo                                           }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2014                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

{
  - Library PngImage must be present and Delphi library path must be updated (http://www.torry.net/vcl/graphics/otherformats/pngimage.zip)
}
unit UDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvSmoothDock, ShellApi, ComCtrls, Math,
  pngimage,
  {$WARNINGS OFF}
  FileCtrl,
  {$WARNINGS ON}  
  ShlObj, ExtCtrls, StdCtrls, jpeg;

type
  TForm205 = class(TForm)
    Image1: TImage;
    AdvSmoothDock1: TAdvSmoothDock;
    Timer1: TTimer;
    Panel1: TPanel;
    Panel2: TPanel;
    Timer2: TTimer;
    Panel3: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    LoadImages: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox1: TCheckBox;
    ListBox1: TListBox;
    TrackBar2: TTrackBar;
    Button1: TButton;
    Button3: TButton;
    TrackBar1: TTrackBar;
    ComboBox1: TComboBox;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure AdvSmoothDock1DragOver(Sender, Source: TObject;
      DragItem: TAdvSmoothDockItem; X, Y: Integer; State: TDragState;
      var Accept: Boolean);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure AdvSmoothDock1DragDrop(Sender, Source: TObject;
      DragItem: TAdvSmoothDockItem; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure AdvSmoothDock1ItemDblClick(Sender: TObject; ItemIndex: Integer);
    procedure Button3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PopulateDirectory(AFolder: string);
  end;

var
  Form205: TForm205;
  FCount: integer;
  FInited: Boolean;
  PanelTopTo: integer;
  up: Boolean;
implementation

{$R *.dfm}
{$R UDemo.res}

function GetParentDirectory(path : string) : string;
begin
  result := ExpandFileName(path + '\..')
end;

function AddFilter(path,filter: string): string;
begin
  if length(path) > 0 then
  begin
    if path[length(path)] = '\' then
      result := path + filter
    else
      result := path + '\' + filter;
  end
  else
   result := filter;

end;


type
  TFileInfo = record
    Icon : hIcon;
    Image : Integer;
    DisplayName : String;
    TypeName : String;
    Size : Integer;
    SizeDescription : String;
    DateTime : TDateTime;
    AttrArchive : Boolean;
    AttrReadOnly : Boolean;
    AttrSystem : Boolean;
    AttrHidden : Boolean;
    AttrVolume : Boolean;
    AttrDirectory : Boolean;
  end;

// ----------------------------------------------------------------
// Return string with formatted file size (bytes, Kb, Mb or Gb)
// ----------------------------------------------------------------
function scGetSizeDescription(const IntSize : Int64) : String;
begin
  if IntSize < 1024 then
    Result := IntToStr(IntSize)+' bytes'
  else
  begin
    if IntSize < (1024 * 1024) then
      Result := FormatFloat('####0.##',IntSize / 1024)+' Kb'
    else
      if IntSize < (1024 * 1024 * 1024) then
        Result := FormatFloat('####0.##',IntSize / 1024 / 1024)+' Mb'
      else
        Result := FormatFloat('####0.##',IntSize / 1024 / 1024 / 1024)+' Gb';
  end;
end;

// ----------------------------------------------------------------
// Return record with all information about given file
// How to use icon : ImageFile.Picture.Icon.Handle:=Info.Icon;
// ----------------------------------------------------------------
procedure scGetFileInfo(StrPath : String; var Info : TFileInfo);
var
  SHFileInfo : TSHFileInfo;
  SearchRec : TSearchRec;
begin
  if Trim(StrPath) = '' then
    Exit;

  ShGetFileInfo(PChar(StrPath), 0, SHFileInfo, SizeOf (TSHFileInfo),
    SHGFI_TYPENAME or SHGFI_DISPLAYNAME or SHGFI_SYSICONINDEX or SHGFI_LARGEICON or SHGFI_ICON);

  with Info do
  begin
    Icon  := SHFileInfo.hIcon;
    Image := SHFileInfo.iIcon;
    DisplayName := SHFileInfo.szDisplayName;
    TypeName := SHFileInfo.szTypeName;
  end;

  FindFirst(StrPath, 0, SearchRec);
  with Info do
  begin
    try
      DateTime := FileDateToDateTime(SearchRec.Time);
    except
      DateTime := Now();
    end;

    {$WARNINGS OFF}
    AttrReadOnly := ((SearchRec.Attr and faReadOnly) > 0);
    AttrSystem := ((SearchRec.Attr and faSysFile) > 0);
    AttrHidden := ((SearchRec.Attr and faHidden) > 0);
    AttrArchive := ((SearchRec.Attr and faArchive) > 0);
    AttrVolume := ((SearchRec.Attr and faVolumeID) > 0);
    AttrDirectory := ((SearchRec.Attr and faDirectory) > 0);
    {$WARNINGS ON}
    Size := SearchRec.Size;

    SizeDescription := scGetSizeDescription(Size);
  end;
end;

procedure TForm205.AdvSmoothDock1DragDrop(Sender, Source: TObject;
  DragItem: TAdvSmoothDockItem; X, Y: Integer);
var
  inf: TFileInfo;
  s: String;
  ic: TIcon;
  m: TMemoryStream;
begin
  if (Source is TStrings) then
  begin
    s := (Source as TStrings)[0];
    DragItem.Caption := ExtractFileName(s);
    if not CheckBox1.Checked then
    begin
      scGetFileInfo(s, inf);
       //ICON
      ic := TIcon.Create;
      try
       ic.Handle := inf.Icon;
       if not ic.Empty then
       begin
         m := TMemoryStream.Create;
         ic.SaveToStream(m);
         DragItem.Image.LoadFromStream(m);
         m.Free;
       end;
      finally
       ic.free;
      end;
    end
    else
    begin
      DragItem.Image.LoadFromFile(s);
    end;
  end
end;

procedure TForm205.AdvSmoothDock1DragOver(Sender, Source: TObject;
  DragItem: TAdvSmoothDockItem; X, Y: Integer; State: TDragState;
  var Accept: Boolean);
var
  lsi: integer;
begin
  Accept := true;
  if (Source is TListBox) then
  begin
    lsi := (Source as TListBox).ItemIndex;
    if not (lsi = 4) then
    begin
      if DragItem.Image.Empty then
      begin
        DragItem.Caption := (Source as TListBox).Items[lsi];
        if lsi = 0 then
          DragItem.Image.LoadFromResourceName(HInstance, 'pdf')
        else if lsi = 1 then
          DragItem.Image.LoadFromResourceName(HInstance, 'excel')
        else if lsi = 2 then
          DragItem.Image.LoadFromResourceName(HInstance, 'document')
        else if lsi = 3 then
          DragItem.Image.LoadFromResourceName(HInstance, 'image')
      end;
    end
    else
    begin
      DragItem.Separator := true;
    end;
  end;
end;

procedure TForm205.AdvSmoothDock1ItemDblClick(Sender: TObject;
  ItemIndex: Integer);
var
  newdir: string;
begin
  if AdvSmoothDock1.Items[ItemIndex].Tag and faDirectory = faDirectory then
  begin
    newdir := AdvSmoothDock1.Items[ItemIndex].Data;
    AdvSmoothDock1.Items.Clear;
    PopulateDirectory(AddFilter(newdir,'*.*'));
  end
  else
  begin
    AdvSmoothDock1.Items[ItemIndex].Jump := true;
    Timer1.Enabled := true;
    FCount := 0;
    ShellExecute(0,'open',pchar(AdvSmoothDock1.Items[ItemIndex].Data),nil,nil,SW_NORMAL);    
  end;
end;

procedure TForm205.Button1Click(Sender: TObject);
begin
  AdvSmoothDock1.Items.Clear;
end;

procedure TForm205.Button2Click(Sender: TObject);
var
  i: integer;
begin
  for I := 0 to AdvSmoothDock1.Items.Count - 1 do
  begin
    if Odd(I) then
      AdvSmoothDock1.Items[i].Visible := false;
  end;
end;

procedure TForm205.Button3Click(Sender: TObject);
var
  dir: String;
begin
  if SelectDirectory('Select a directory', '', dir) then
  begin
    AdvSmoothDock1.Items.Clear;
    PopulateDirectory(dir + '\*.*');
  end;
end;

procedure TForm205.CheckBox2Click(Sender: TObject);
begin
  AdvSmoothDock1.ItemAppearance.AspectRatio :=  CheckBox2.Checked;
end;

procedure TForm205.ComboBox1Change(Sender: TObject);
begin
  AdvSmoothDock1.Position := TAdvSmoothDockPosition(ComboBox1.ItemIndex);
  case AdvSmoothDock1.Position of
    dpLeft: AdvSmoothDock1.Align := alLeft;
    dpRight: AdvSmoothDock1.Align := alRight;
    dpTop:
    begin
      up := false;    
      AdvSmoothDock1.Align := alTop;
      Panel2.Align := alTop;
      if Panel1.Top < 0 then
        Panel1.Top := Height - Panel2.Height * 2 - 8
      else
        Panel1.Top := Height - Panel1.Height - Panel2.Height - 8;
    end;
    dpBottom:
    begin
      up := true;    
      AdvSmoothDock1.Align := alBottom;
      Panel1.Top := 0;
      Panel2.Align := alBottom;
    end;
  end;
end;

procedure TForm205.FormCreate(Sender: TObject);
begin
  up := true;
  DoubleBuffered := true;
  PopulateDirectory('Images\*.*');

  Image1.Width := Self.Width;
  Image1.Height := Self.Height;
  FInited := true;
  ListBox1.Hint := 'Drag drop items from the listbox to the dock bar';
end;

procedure TForm205.FormResize(Sender: TObject);
begin
  Image1.Width := Self.Width;
  Image1.Height := Self.Height;
  Panel1.Left := (Self.Width - Panel1.Width) div 2;
  if not up then
  begin
    if Panel1.Top < 0 then
      Panel1.Top := Height - Panel2.Height * 2 - 8
    else
      Panel1.Top := Height - Panel1.Height - Panel2.Height - 8;
  end;
end;

procedure TForm205.Panel2Click(Sender: TObject);
begin
  Timer2.Enabled := true;

  if not up then
  begin
    if Panel1.Top < Height - Panel2.Height * 2 - 8 then
      PanelTopTo := Height - Panel2.Height * 2 - 8
    else
      PanelTopTo := Height - Panel1.Height - Panel2.Height - 8;
  end
  else
  begin
    if Panel1.Top < 0 then
      PanelTopTo := 0
    else
      PanelTopTo := -Panel1.Height + Panel2.Height;
  end;
end;

procedure TForm205.PopulateDirectory(AFolder: string);
var
  SR: TSearchRec;

  procedure LoadFromRes(resname: string; picture: TPicture);
  var
    {$IFDEF VER200}
    APNG: TPngImage;
    {$ELSE}
    APNG: TPngObject;
    {$ENDIF}
    rs: TResourceStream;
  begin
    rs := TResourceStream.Create(HInstance, resname, RT_RCDATA);
    {$IFDEF VER200}
    APNG := TPngImage.Create;
    {$ELSE}
    APNG := TPngObject.Create;
    {$ENDIF}
    APNG.LoadFromStream(rs);
    rs.Free;
    picture.Assign(APNG);
    APNG.Free;
  end;

  procedure AddToList(s: string; Attr: integer);
  var
    fext: string;

  begin
    {$WARNINGS OFF}
    if not Attr and faHidden = faHidden then
    begin
    {$WARNINGS ON}    

      with AdvSmoothDock1.Items.Add do
      begin
        if ExtractFileName(s) = '.' then
        begin
          Data := ExtractFilePath(s);
          Caption := Data;
        end
        else
          if ExtractFileName(s) = '..' then
          begin
            Data := GetParentDirectory(ExtractFilepath(AFolder));
            Caption := Data;
          end
          else
          begin
            Data := s;
            Caption := ExtractFileName(s);
          end;

        Tag := Attr;

        if Attr and faDirectory = faDirectory then
        begin
          Image.LoadFromResourceName(HInstance, 'file');
        end
        else
        begin
          //if (Attr and faArchive = faArchive then
          begin
            fext := Uppercase(ExtractFileExt(s));

            if LoadImages.Checked and ((UpperCase(fext) = '.PNG') or (UpperCase(fext) = '.JPG') or (UpperCase(fext) = '.JPEG') or (UpperCase(fext) = '.BMP')) then
              Image.LoadFromFile(s)
            else
            begin
              Image.LoadFromResourceName(HInstance, 'document');

              if UpperCase(fext) = '.TXT' then
                Image.LoadFromResourceName(HInstance, 'notepad');

              if UpperCase(fext) = '.BMP' then
                Image.LoadFromResourceName(HInstance, 'image');

              if (UpperCase(fext) = '.JPG') or (UpperCase(fext) = '.JPEG') then
                Image.LoadFromResourceName(HInstance, 'image');

              if UpperCase(fext) = '.GIF' then
                Image.LoadFromResourceName(HInstance, 'image');

              if UpperCase(fext) = '.PNG' then
                Image.LoadFromResourceName(HInstance, 'image');

              if UpperCase(fext) = '.MP3' then
                Image.LoadFromResourceName(HInstance, 'music');

              if UpperCase(fext) = '.WAV' then
                Image.LoadFromResourceName(HInstance, 'music');

              if UpperCase(fext) = '.MSG' then
                Image.LoadFromResourceName(HInstance, 'message');

              if UpperCase(fext) = '.HTML' then
                Image.LoadFromResourceName(HInstance, 'html');

              if UpperCase(fext) = '.HTM' then
                Image.LoadFromResourceName(HInstance, 'html');

              if UpperCase(fext) = '.DOC' then
                Image.LoadFromResourceName(HInstance, 'doc');

              if UpperCase(fext) = '.PDF' then
                Image.LoadFromResourceName(HInstance, 'pdf');

              if UpperCase(fext) = '.EXE' then
                Image.LoadFromResourceName(HInstance, 'exe');

              if UpperCase(fext) = '.ZIP' then
                Image.LoadFromResourceName(HInstance, 'zip');

              if UpperCase(fext) = '.XLS' then
                Image.LoadFromResourceName(HInstance, 'excel');

              if UpperCase(fext) = '.XLSX' then
                Image.LoadFromResourceName(HInstance, 'excel');

              if UpperCase(fext) = '.PPT' then
                Image.LoadFromResourceName(HInstance, 'powerpoint');

              if UpperCase(fext) = '.PAS' then
                Image.LoadFromResourceName(HInstance, 'delphi');

              if UpperCase(fext) = '.DPR' then
                Image.LoadFromResourceName(HInstance, 'delphi');
            end;
          end
          //else
          //  LoadFromRes('document',picture);
        end;
      end;
    end;
  end;

begin
  if FindFirst(AFolder,faAnyFile,SR) = 0 then
  begin
    AddToList(ExtractFilePath(AFolder) + SR.Name, SR.Attr);
    while FindNext(SR) = 0 do
    begin
      AddToList(ExtractFilePath(AFolder) + SR.Name, SR.Attr);
    end;
  end;
  FindClose(SR);
end;

function AnimateDouble(var Start: Single; Stop, Delta, Margin: Single): Boolean;
begin
  Result := true;
  if (Start > Stop - Margin) and (Start < Stop + Margin) then
  begin
    Start := Stop;
    Result := false;
  end
  else
  begin
    Delta := Max(1, Delta);
    if Start < Stop then
      Start := Round(Start + Delta)
    else
      Start := Round(Start - Delta);
  end;
end;

procedure TForm205.Timer1Timer(Sender: TObject);
var
  i: integer;
begin
  Inc(FCount);
  if FCount = 5 then
  begin
    for I := 0 to AdvSmoothDock1.Items.Count - 1 do
      AdvSmoothDock1.Items[i].Jump := false;

    Timer1.Enabled := false;
  end;
end;

procedure TForm205.Timer2Timer(Sender: TObject);
var
  d, t: single;
  fstop: Boolean;
begin
  d := Abs(panel1.Top - PanelTopTo) / 10;
  t := Panel1.Top;
  Fstop := AnimateDouble(t, PanelTopTo, d, 1);
  if Fstop then
  begin
    Panel1.Top := Round(t);
  end
  else
  begin
    if (Panel2.Caption = 'Hide Settings') then
      Panel2.Caption := 'Show Settings'
    else
      Panel2.Caption := 'Hide Settings';

    Timer2.Enabled := false;
    Panel1.Width := Panel1.Width + 1;
    Panel1.Width := Panel1.Width - 1;
  end;
end;

procedure TForm205.TrackBar1Change(Sender: TObject);
begin
  AdvSmoothDock1.ItemAppearance.AnimationSpan := TrackBar1.Position;
end;

procedure TForm205.TrackBar2Change(Sender: TObject);
begin
  AdvSmoothDock1.ItemAppearance.Spacing := TrackBar2.Position;
end;

end.
