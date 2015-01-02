{********************************************************************}
{ TMS TAdvOutlookList Demo                                           }
{                                                                    }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2012                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvOutlookList, ImgList, OutLookGroupedList, ActiveX, shlObj,
  AxCtrls, ShellAPI;

type
  TForm1 = class(TForm)
    ImageList1: TImageList;
    AdvOutlookList: TAdvOutlookList;
    AdvOutlookList1: TAdvOutlookList;
    procedure LoadData;
    procedure AdvOutlookListOLEDragAllowed(Sender: TAdvOutlookList;
      Item: POGLItem; var Allowed: Boolean);
    procedure AdvOutlookListOLEDragOver(Sender: TAdvOutlookList;
      const DataObject: IDataObject; Shift: TShiftState; Pt: TPoint;
      State: TDragState; var Effect: Integer; var Accept: Boolean);
    procedure AdvOutlookListOLEDrop(Sender: TAdvOutlookList;
      const DataObject: IDataObject; Shift: TShiftState; Pt: TPoint;
      Formats: TClipFormatArray; var Effect: Integer);
    procedure AdvOutlookListOLEGetClipboardFormats(Sender: TAdvOutlookList;
      var Formats: TFormatEtcArray);
    procedure AdvOutlookListOLEGetData(Sender: TAdvOutlookList;
      const FormatEtcIn: tagFORMATETC; out Medium: tagSTGMEDIUM;
      var Result: HRESULT);
    procedure FormCreate(Sender: TObject);
    procedure AdvOutlookListGetCaption(Sender: TAdvOutlookList;
      Item: POGLItem; var Caption: String);
  private
    { Private declarations }
    FDragFileList: TStringList;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

var
  CF_FILEGROUPDESCRIPTOR: TClipFormat;
  CF_FILECONTENTS: TClipFormat;


procedure TForm1.LoadData;
var
  olg: TOutlookGroup;
  sl: TStrings;
begin
  olg := advoutlooklist.AddGroup('Business');

  sl := AdvOutlookList.AddItem(olg);
  sl.Add('1');
  sl.Add('Make changes to component');

  sl := AdvOutlookList.AddItem(olg);
  sl.Add('0');
  sl.Add('Develop the website specifications');

  sl := AdvOutlookList.AddItem(olg);
  sl.Add('1');
  sl.Add('Send the notification email');

  olg := advoutlooklist.AddGroup('Delphi VCL');

  sl := AdvOutlookList.AddItem(olg);
  sl.Add('0');
  sl.Add('Make the read only example');

  sl := AdvOutlookList.AddItem(olg);
  sl.Add('1');
  sl.Add('Use the flag-picture from Outlook');

  sl := AdvOutlookList.AddItem(olg);
  sl.Add('1');
  sl.Add('Use the two view modes');

  sl := AdvOutlookList.AddItem(olg);
  sl.Add('0');
  sl.Add('Display the two text lines in the line for example');
end;

procedure TForm1.AdvOutlookListOLEDragAllowed(Sender: TAdvOutlookList;
  Item: POGLItem; var Allowed: Boolean);
begin
  Allowed := True;
end;

procedure TForm1.AdvOutlookListOLEDragOver(Sender: TAdvOutlookList;
  const DataObject: IDataObject; Shift: TShiftState; Pt: TPoint;
  State: TDragState; var Effect: Integer; var Accept: Boolean);
var
  tmpFormatEtc: TFormatEtc;
begin
  if State = dsDragEnter then
  begin
    if Assigned(DataObject) then
    begin
      // check the supported clipboard formats
      // CF_HDROP
      tmpFormatEtc.cfFormat := CF_HDROP;
      tmpFormatEtc.ptd := nil;
      tmpFormatEtc.dwAspect := DVASPECT_CONTENT;
      tmpFormatEtc.lindex := -1;
      tmpFormatEtc.tymed := TYMED_HGLOBAL;
      Accept := Succeeded(DataObject.QueryGetData(tmpFormatEtc));
      if Accept then Exit;
      // CF_FILEGROUPDESCRIPTOR
      tmpFormatEtc.cfFormat := CF_FILEGROUPDESCRIPTOR;
      tmpFormatEtc.ptd := nil;
      tmpFormatEtc.dwAspect := DVASPECT_CONTENT;
      tmpFormatEtc.lindex := -1;
      tmpFormatEtc.tymed := TYMED_HGLOBAL;
      Accept := Succeeded(DataObject.QueryGetData(tmpFormatEtc));
    end;
  end;
end;

procedure TForm1.AdvOutlookListOLEDrop(Sender: TAdvOutlookList;
  const DataObject: IDataObject; Shift: TShiftState; Pt: TPoint;
  Formats: TClipFormatArray; var Effect: Integer);
var
  i,FilesCount: Integer;
  tmpFormatEtc: TFormatEtc;
  tmpStgMedium: TStgMedium;
  tmpStgMedium1: TStgMedium;
  szFileName: array [0..MAX_PATH] of Char;
  ChildItem: POGLItem;
  Sd: TStrings;
  lpGroupDescriptor: PFileGroupDescriptor;
  OleStream: TOleStream;
  SL: TStringList;
begin
  // try to get CF_HDROP
  tmpFormatEtc.cfFormat := CF_HDROP;
  tmpFormatEtc.ptd := nil;
  tmpFormatEtc.dwAspect := DVASPECT_CONTENT;
  tmpFormatEtc.lindex := -1;
  tmpFormatEtc.tymed := TYMED_HGLOBAL;
  if Succeeded(DataObject.GetData(tmpFormatEtc, tmpStgMedium)) then
  begin
    if Sender.DropTargetGroup = nil then Exit;
    FilesCount := DragQueryFile(tmpStgMedium.hGlobal, $FFFFFFFF, nil, 0);
    Sender.BeginUpdate;
    try
      ChildItem := nil;
      for i := 0 to FilesCount-1 do
      begin
        DragQueryFile(tmpStgMedium.hGlobal, i, szFileName, SizeOf(szFileName));
        ChildItem := Sender.CaptionToItem(szFileName, Sender.DropTargetGroup);
        if ChildItem = nil then
        begin
          ChildItem := Sender.AddItem(Sender.DropTargetGroup);
          Sd := Sender.GetItemData(ChildItem);
          sd.Add('0');
          Sd.Add(ExtractFileName(szFileName));
          CopyFile(szFileName, PChar(ExtractFilePath(Application.ExeName) +
            ExtractFileName(szFileName)), False);
        end;
      end;
      if ChildItem <> nil then
      begin
        Sender.FocusedItem := ChildItem;
        Sender.ScrollIntoView(Sender.FocusedItem)
      end;
    finally
      Sender.EndUpdate;
    end;
    Exit;
  end;
  // try to get CF_FILEGROUPDESCRIPTOR
  tmpFormatEtc.cfFormat := CF_FILEGROUPDESCRIPTOR;
  tmpFormatEtc.ptd := nil;
  tmpFormatEtc.dwAspect := DVASPECT_CONTENT;
  tmpFormatEtc.lindex := -1;
  tmpFormatEtc.tymed := TYMED_HGLOBAL;
  if Succeeded(DataObject.GetData(tmpFormatEtc, tmpStgMedium)) then
  begin
    if Sender.DropTargetGroup = nil then Exit;
    lpGroupDescriptor := GlobalLock(tmpStgMedium.hGlobal);
    if lpGroupDescriptor <> nil then
    try
      Sender.BeginUpdate;
      try
        ChildItem := nil;
        for i := 0 to lpGroupDescriptor.cItems-1 do
        begin
          ChildItem := Sender.CaptionToItem(lpGroupDescriptor.fgd[i].cFileName,
            Sender.DropTargetGroup);
          if ChildItem = nil then
          begin
            ChildItem := Sender.AddItem(Sender.DropTargetGroup);
            sd := Sender.GetItemData(ChildItem);
            sd.Add('1');
            sd.Add(lpGroupDescriptor.fgd[i].cFileName);
          end;
          // try to get data from file and save it
          tmpFormatEtc.cfFormat := CF_FILECONTENTS;
          tmpFormatEtc.lindex := i;
          if Succeeded(DataObject.GetData(tmpFormatEtc, tmpStgMedium1)) then
          begin
            if (tmpStgMedium1.tymed and TYMED_ISTREAM <> 0) and
               (tmpStgMedium1.stm <> nil) then
            begin
              OleStream := TOleStream.Create(IStream(tmpStgMedium1.stm));
              try
                SL := TStringList.Create;
                try
                  SL.LoadFromStream(OleStream);
                  SL.SaveToFile(ExtractFilePath(Application.ExeName) +
                    lpGroupDescriptor.fgd[i].cFileName);
                finally
                  FreeAndNil(SL);
                end;
              finally
                FreeAndNil(OleStream);
              end;
            end;
          end;
        end;
        if ChildItem <> nil then
        begin
          Sender.FocusedItem := ChildItem;
          Sender.ScrollIntoView(Sender.FocusedItem)
        end;
      finally
        Sender.EndUpdate;
      end;
    finally
      GlobalUnlock(tmpStgMedium.hGlobal);
    end;
    Exit;
  end;
end;

procedure TForm1.AdvOutlookListOLEGetClipboardFormats(
  Sender: TAdvOutlookList; var Formats: TFormatEtcArray);
begin
  SetLength(Formats, 3);
  Formats[0] := DefaultGlobalClipboardFormat;
  Formats[0].cfFormat := CF_FILEGROUPDESCRIPTOR;
  Formats[1] := DefaultGlobalClipboardFormat;
  Formats[1].cfFormat := CF_FILECONTENTS;
  Formats[2] := DefaultGlobalClipboardFormat;
  Formats[2].cfFormat := CF_FILEGROUPDESCRIPTOR;
  Formats[2].tymed := TYMED_HGLOBAL or TYMED_ISTORAGE;
end;

procedure TForm1.AdvOutlookListOLEGetData(Sender: TAdvOutlookList;
  const FormatEtcIn: tagFORMATETC; out Medium: tagSTGMEDIUM;
  var Result: HRESULT);
var
  GroupItem: POGLItem;
  ChildItem: POGLItem;
  sd: TStrings;
  lpGroupDescriptor: PFileGroupDescriptor;
  lpData: PCardinal;
  FileName: String;
  FS: TFileStream;
  i: Integer;
begin
  Result := E_FAIL;
  if FormatEtcIn.cfFormat = CF_FILEGROUPDESCRIPTOR then
  begin
    FDragFileList.Clear;
    // fill the FileList from selected items
    GroupItem := {AdvOutlookList}Sender.RootItem.FirstChild;
    while GroupItem <> nil do
    begin
      if GroupItem.ChildSelectedCount > 0 then
      begin
        ChildItem := GroupItem.FirstChild;
        while ChildItem <> nil do
        begin
          if {AdvOutLookList}Sender.IsItemSelected(ChildItem) then
          begin
            sd := {AdvOutLookList}Sender.GetItemData(ChildItem);
            FDragFileList.Add(ExtractFilePath(Application.ExeName) + sd[1]);
          end;
          ChildItem := ChildItem.NextSibling;
        end;
      end;
      GroupItem := GroupItem.NextSibling;
    end;

    Medium.hGlobal := GlobalAlloc(GMEM_FIXED, SizeOf(FILEGROUPDESCRIPTOR) +
      SizeOf(FILEDESCRIPTOR) * FDragFileList.Count);
    if Medium.hGlobal = 0 then
      // failed to allocate the memory block, raise exception
      OutOfMemoryError else
    begin
      Medium.tymed := TYMED_HGLOBAL;
      lpGroupDescriptor := GlobalLock(Medium.hGlobal);
      if lpGroupDescriptor = nil then
      begin
        (* Could not lock the memory block, so free it again and
           raise an out of memory exception. *)
        GlobalFree(Medium.hGlobal);
        Medium.hGlobal := 0;
        OutOfMemoryError;
      end else
      try
        lpGroupDescriptor.cItems := FDragFileList.Count;
        for i := 0 to FDragFileList.Count-1 do
        begin
          FillChar(lpGroupDescriptor.fgd[i], SizeOf(lpGroupDescriptor.fgd[i]), 0);
          lpGroupDescriptor.fgd[i].dwFlags := FD_ATTRIBUTES or FD_FILESIZE;
          lpGroupDescriptor.fgd[i].dwFileAttributes := FILE_ATTRIBUTE_NORMAL;
          lpGroupDescriptor.fgd[i].nFileSizeHigh := 0;
          lpGroupDescriptor.fgd[i].nFileSizeLow := 128;
          StrPCopy(lpGroupDescriptor.fgd[i].cFileName,
            ExtractFileName(FDragFileList[i]));
        end;
      finally
        GlobalUnlock(Medium.hGlobal);
        Result := S_OK;
      end;
    end;
  end else
  if FormatEtcIn.cfFormat = CF_FILECONTENTS then
  begin
    if not (FormatEtcIn.lindex in [0..FDragFileList.Count-1]) then Exit;
    FileName := FDragFileList[FormatEtcIn.lindex];
    if not FileExists(FileName) then Exit;
    FS := TFileStream.Create(FileName, fmOpenRead	or fmShareDenyWrite);
    try
      // return the Random file contents
      Medium.hGlobal := GlobalAlloc(GHND or GMEM_SHARE, FS.Size);
      if Medium.hGlobal = 0 then
        // failed to allocate the memory block, raise exception
        OutOfMemoryError else
      begin
        Medium.tymed := TYMED_HGLOBAL;
        lpData := GlobalLock(Medium.hGlobal);
        if lpData = nil then
        begin
          (* Could not lock the memory block, so free it again and
             raise an out of memory exception. *)
          GlobalFree(Medium.hGlobal);
          Medium.hGlobal := 0;
          OutOfMemoryError;
        end else
        try
          FS.Position := 0;
          FS.Read(lpData^, FS.Size);
          Result := S_OK;
        finally
          GlobalUnlock(Medium.hGlobal);
        end;
      end;
    finally
      FreeAndNil(FS);
    end;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  LoadData;
  advoutlooklist1.AddGroup('Business');
  advoutlooklist1.AddGroup('Delphi VCL');
  FDragFileList := TStringList.Create;
end;

procedure TForm1.AdvOutlookListGetCaption(Sender: TAdvOutlookList;
  Item: POGLItem; var Caption: String);
var
  SL: TStrings;
begin
  SL := Sender.GetItemData(Item);
  if not Sender.IsGroupItem(Item) then
    Caption := Sl[1];
end;

end.
