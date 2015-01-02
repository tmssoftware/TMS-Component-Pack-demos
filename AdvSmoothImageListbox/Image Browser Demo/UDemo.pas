{********************************************************************}
{ TMS TAdvSmoothImageListBox Demo                                    }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2014                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit UDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  AdvSmoothImageListBox, AdvStyleIF, StdCtrls, FileCtrl, ShellAPI, ComCtrls;

type
  TForm1 = class(TForm)
    AdvSmoothImageListBox1: TAdvSmoothImageListBox;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Button1: TButton;
    ComboBox2: TComboBox;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AdvSmoothImageListBox1ItemSelect(Sender: TObject;
      itemindex: Integer);
    procedure TrackBar2Change(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure AdvSmoothImageListBox1ItemHint(Sender: TObject;
      itemindex: Integer; var hint: string);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    folder: string;
    procedure LoadTextFromImages;
    procedure LoadImages;
    procedure ShowSelectedInTopLayer(itemindex: integer);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AdvSmoothImageListBox1ItemHint(Sender: TObject;
  itemindex: Integer; var hint: string);
begin
  hint := AdvSmoothImageListBox1.Items[itemindex].Caption.Text;
end;

procedure TForm1.ShowSelectedInTopLayer(itemindex: integer);
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

  procedure scGetFileInfo(StrPath : String; var Info : TFileInfo);
  var
    SHFileInfo : TSHFileInfo;
    SearchRec : TSearchRec;
  begin
    if Trim(StrPath) = '' then
      Exit;

    ShGetFileInfo(PChar(StrPath), 0, SHFileInfo, SizeOf (TSHFileInfo),
      SHGFI_TYPENAME or SHGFI_DISPLAYNAME or SHGFI_SYSICONINDEX or SHGFI_ICON);

    with Info do
    begin
//      Icon  := SHFileInfo.hIcon;
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

      AttrReadOnly := ((SearchRec.Attr and faReadOnly) > 0);
      AttrSystem := ((SearchRec.Attr and faSysFile) > 0);
      AttrHidden := ((SearchRec.Attr and faHidden) > 0);
      AttrArchive := ((SearchRec.Attr and faArchive) > 0);
      AttrVolume := ((SearchRec.Attr and faVolumeID) > 0);
      AttrDirectory := ((SearchRec.Attr and faDirectory) > 0);

      Size := SearchRec.Size;

      SizeDescription := scGetSizeDescription(Size);
    end;
  end;

var
  a, b, c, d, e: String;
  info: TFileInfo;
begin
   scGetFileInfo(AdvSmoothImageListBox1.Items[itemindex].Location, info);
   //Image Number
   a := 'Image ' + inttostr(itemindex + 1);
   //Image Name
   b := ExtractFileName(AdvSmoothImageListBox1.Items[itemindex].Location);
   //Image res
   c := inttostr(AdvSmoothImageListBox1.Items[itemindex].GetOriginalImageWidth) + ' x ' + inttostr(AdvSmoothImageListBox1.Items[itemindex].GetOriginalImageHeight);
   //Image File Date
   d := FormatDateTime('dd/mm/yy',info.DateTime);
   //Image File Size
   e := scGetSizeDescription(info.Size);

   AdvSmoothImageListBox1.TopLayerItems[0].HTMLText.Text := 'Image Name : ' + b + '<br>' +
     'Image Resolution : ' + c + '<br>' +
     'Image File Date : ' + d + '<br>' +
     'Image File Size : ' + e;

end;

procedure TForm1.AdvSmoothImageListBox1ItemSelect(Sender: TObject;
  itemindex: Integer);
begin
  ShowSelectedInTopLayer(Itemindex);
end;

procedure TForm1.LoadImages;
var
  ext: string;
begin
  AdvSmoothImageListBox1.Items.BeginUpdate;
  ext := ComboBox2.Items[ComboBox2.ItemIndex];
  AdvSmoothImageListBox1.Items.Clear;
  AdvSmoothImageListBox1.AddImageLocationsFromFolder(folder + '\' + ext);
  Caption := 'TMS software : Image Browser Demo [' + folder + '\' + ext + ']';
  LoadTextFromImages;
  AdvSmoothImageListBox1.Items.EndUpdate;

  if AdvSmoothImageListBox1.Items.Count > 0 then
  begin
    AdvSmoothImageListBox1.SelectedItemIndex := 0;
    ShowSelectedInTopLayer(0);
  end;

  AdvSmoothImageListBox1.SetFocus;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if SelectDirectory('Select a directory', '', folder) then
    LoadImages;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
  0: AdvSmoothImageListBox1.SetComponentStyle(tsOffice2003Blue);
  1: AdvSmoothImageListBox1.SetComponentStyle(tsOffice2003Silver);
  2: AdvSmoothImageListBox1.SetComponentStyle(tsOffice2003Olive);
  3: AdvSmoothImageListBox1.SetComponentStyle(tsOffice2003Classic);
  4: AdvSmoothImageListBox1.SetComponentStyle(tsOffice2007Luna);
  5: AdvSmoothImageListBox1.SetComponentStyle(tsOffice2007Obsidian);
  6: AdvSmoothImageListBox1.SetComponentStyle(tsOffice2007Silver);
  7: AdvSmoothImageListBox1.SetComponentStyle(tsWindows8);
  end;

  // fix silly transparency problem with the standard VCL trackbar
  TrackBar1.Width := TrackBar1.Width + 1;
  TrackBar1.Width := TrackBar1.Width - 1;
  TrackBar2.Width := TrackBar2.Width + 1;
  TrackBar2.Width := TrackBar2.Width - 1;
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin
  LoadImages;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  folder := ExtractFilePath(application.Exename);
  ComboBox1.ItemIndex := 7;
  AdvSmoothImageListBox1.SetComponentStyle(tsWindows8);
  AdvSmoothImageListBox1.Footer.Caption := 'Drag the mouse from left to right (or up-down) or use the keyboard arrow keys to navigate through the images' + #13 + #10 +
    'Double-click on the image to zoom in, Double-click again to zoom out';
  TrackBar2.Position := AdvSmoothImageListBox1.Rows;
  TrackBar1.Position := AdvSmoothImageListBox1.Columns;
  AdvSmoothImageListBox1.Footer.CaptionTop := AdvSmoothImageListBox1.Height - AdvSmoothImageListBox1.Footer.Height + 7;  
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  AdvSmoothImageListBox1.Footer.CaptionTop := AdvSmoothImageListBox1.Height - AdvSmoothImageListBox1.Footer.Height + 7;
end;

procedure TForm1.LoadTextFromImages;
var
  i: integer;
begin
  for I := 0 to AdvSmoothImageListBox1.Items.Count - 1 do
  begin
    with AdvSmoothImageListBox1.Items[I] do
    begin
      Caption.Text := ExtractFileName(Location);
      Caption.Location := cpCenterCenter;
    end;
  end;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  AdvSmoothImageListBox1.Columns := TrackBar1.Position;
  Trackbar2.Position := 0;
end;

procedure TForm1.TrackBar2Change(Sender: TObject);
begin
  AdvSmoothImageListBox1.Rows := TrackBar2.Position;
  Trackbar1.Position := 0;
end;

end.
