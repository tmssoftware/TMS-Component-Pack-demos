unit UPickerDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl, ExtCtrls, AdvSmoothImageListBox, ComCtrls;

type
  TPickerDialog = class(TForm)
    Panel1: TPanel;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    AdvSmoothImageListBox1: TAdvSmoothImageListBox;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    TrackBar1: TTrackBar;
    Label1: TLabel;
    lblSize: TLabel;
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure AdvSmoothImageListBox1ItemSelect(Sender: TObject;
      itemindex: Integer);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FLocation:string;
    procedure LoadImages;
    procedure ShowSelectedImage(itemindex: integer);
    property Location: string read FLocation write FLocation;
  end;

var
  PickerDialog: TPickerDialog;


implementation

{$R *.dfm}

procedure TPickerDialog.ShowSelectedImage(itemindex: integer);

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

begin
  with AdvSmoothImageListBox1.Items[itemindex] do
  begin
    AdvSmoothImageListBox1.Footer.CaptionLocation := cpCenterLeft;
    AdvSmoothImageListBox1.Footer.Caption := 'FileName:' + FileName + #13 + #10 + 'FileSize:' + scGetSizeDescription(FileSize) + #13 + #10 + 'FileDate:' + DateToStr(FileDate);
    FLocation := Location;
  end;
end;

procedure TPickerDialog.TrackBar1Change(Sender: TObject);
begin
//  AdvSmoothImageListbox1.Items.BeginUpdate;
  AdvSmoothImageListbox1.ItemAppearance.ItemWidth := trackbar1.Position;
  AdvSmoothImageListbox1.ItemAppearance.ItemHeight := trackbar1.Position;
  lblSize.Caption := inttostr(trackbar1.Position);

//  AdvSmoothImageListbox1.Items.EndUpdate;
end;

procedure TPickerDialog.AdvSmoothImageListBox1ItemSelect(Sender: TObject;
  itemindex: Integer);
begin
  ShowSelectedImage(ItemIndex);
end;

procedure TPickerDialog.Button1Click(Sender: TObject);
begin
  Flocation := '';
  ModalResult := mrCancel;
end;

procedure TPickerDialog.Button2Click(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TPickerDialog.LoadImages;
begin
  AdvSmoothImageListBox1.Items.BeginUpdate;

  AdvSmoothImageListBox1.Items.Clear;
  with AdvSmoothImageListBox1.Items.Add do
  begin
    Splitter := true;
    SplitterText := 'jpg';
  end;

  AdvSmoothImageListBox1.AddImageLocationsFromFolder(DirectoryListBox1.Directory + '\*.jpg');
  
  with AdvSmoothImageListBox1.Items.Add do
  begin
    Splitter := true;
    SplitterText := 'jpeg';
  end;
  AdvSmoothImageListBox1.AddImageLocationsFromFolder(DirectoryListBox1.Directory + '\*.jpeg');
  with AdvSmoothImageListBox1.Items.Add do
  begin
    Splitter := true;
    SplitterText := 'png';
  end;
  AdvSmoothImageListBox1.AddImageLocationsFromFolder(DirectoryListBox1.Directory + '\*.png');
  with AdvSmoothImageListBox1.Items.Add do
  begin
    Splitter := true;
    SplitterText := 'gif';
  end;
  AdvSmoothImageListBox1.AddImageLocationsFromFolder(DirectoryListBox1.Directory + '\*.gif');
  with AdvSmoothImageListBox1.Items.Add do
  begin
    Splitter := true;
    SplitterText := 'bmp';
  end;
  AdvSmoothImageListBox1.AddImageLocationsFromFolder(DirectoryListBox1.Directory + '\*.bmp');

  with AdvSmoothImageListBox1.Items.Add do
  begin
    Splitter := true;
    SplitterText := 'tiff';
  end;
  AdvSmoothImageListBox1.AddImageLocationsFromFolder(DirectoryListBox1.Directory + '\*.tiff');

  with AdvSmoothImageListBox1.Items.Add do
  begin
    Splitter := true;
    SplitterText := 'ico';
  end;
  AdvSmoothImageListBox1.AddImageLocationsFromFolder(DirectoryListBox1.Directory + '\*.ico');

  AdvSmoothImageListBox1.Header.Caption := DirectoryListBox1.Directory;

  if not AdvSmoothImageListBox1.Items.HasItems then
    AdvSmoothImageListBox1.Items.Clear;

  AdvSmoothImageListBox1.Items.EndUpdate;

  if AdvSmoothImageListBox1.Items.Count > 0 then
  begin
    AdvSmoothImageListBox1.SelectedItemIndex := AdvSmoothImageListBox1.Items.FirstItem;
    ShowSelectedImage(AdvSmoothImageListBox1.SelectedItemIndex);
  end;
end;

procedure TPickerDialog.DirectoryListBox1Change(Sender: TObject);
begin
  LoadImages;
end;

procedure TPickerDialog.FormCreate(Sender: TObject);
begin
  AdvSmoothImageListBox1.Header.Caption := DirectoryListBox1.Directory;
  LoadImages;
end;

end.
