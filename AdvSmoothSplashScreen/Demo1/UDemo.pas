{********************************************************************}
{ TMS TAdvSmoothSplashScreen Demo                                    }
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
  Dialogs, StdCtrls, ExtCtrls, ImgList, AdvSmoothSplashScreen, WebData,
  GDIPPictureContainer, GDIPFill;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    AdvSplashScreen1: TAdvSmoothSplashScreen;
    ImageList1: TImageList;
    Timer1: TTimer;
    WebData1: TWebData;
    GDIPPictureContainer1: TGDIPPictureContainer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


  procedure ShowForm; stdcall;external 'DLLProj1.dll' name 'ShowDllForm';
  function ShowFormModal: Integer; stdcall;external 'DLLProj1.dll' name 'ShowDllFormModal';

  procedure ShowForm2; stdcall;external 'DLLProj2.dll' name 'ShowDllForm2';
  function ShowFormModal2: Integer; stdcall;external 'DLLProj2.dll' name 'ShowDllFormModal2';

  procedure ShowForm3; stdcall;external 'DLLProj3.dll' name 'ShowDllForm3';
  function ShowFormModal3: Integer; stdcall;external 'DLLProj3.dll' name 'ShowDllFormModal3';

var
  Form1: TForm1;

implementation

{$R *.dfm}

var
  DLLForm1Lib: THandle;
  DLLForm2Lib: THandle;
  DLLForm3Lib: THandle;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowForm;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowForm2;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  ShowForm3;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  sl: TStringList;
  quotes: string;
  i, y: Integer;
begin
  //--- Set Background
  AdvSplashScreen1.Fill.Picture.LoadFromFile('RAD2007.bmp');
  //---
  with AdvSplashScreen1.Items.Add do  // Logo
  begin
    Picture.LoadFromFile('CodeGearLogo.bmp');
    PosX := 527;
    PosY := 8;
  end;
  //--- Set List Item Props
  AdvSplashScreen1.ListItemsSettings.Space := 20;
  AdvSplashScreen1.ListItemsSettings.HTMLFont.Name := 'Tahoma';
  AdvSplashScreen1.ListItemsSettings.HTMLFont.Size := 16;
  AdvSplashScreen1.ListItemsSettings.Rect.Left := 24;
  AdvSplashScreen1.ListItemsSettings.Rect.Top := 150;
  AdvSplashScreen1.ListItemsSettings.Rect.Width := 400;
  AdvSplashScreen1.ListItemsSettings.Rect.Height := 300;

  //--- Now display SplashScreen
  AdvSplashScreen1.Show;
  Sleep(500);
  if (DLLForm1Lib = 0) then
  begin
    DLLForm1Lib := LoadLibrary('DLLProj1.dll');
  end;
  with AdvSplashScreen1.ListItems.Add do
  begin
    BeginUpdate;
    HTMLText := '<img src="CodeGear"> Form 1 Dynamic Link Library Loaded.';
    EndUpdate;
  end;
  Sleep(700);

  if (DLLForm2Lib = 0) then
  begin
    DLLForm2Lib := LoadLibrary('DLLProj2.dll');
  end;
  with AdvSplashScreen1.ListItems.Add do
  begin
    BeginUpdate;
    HTMLText := '<img src="ECO">Form 2 Dynamic Link Library Loaded.';
    EndUpdate;
  end;
  Sleep(700);

  if (DLLForm3Lib = 0) then
  begin
    DLLForm3Lib := LoadLibrary('DLLProj3.dll');
  end;
  with AdvSplashScreen1.ListItems.Add do
  begin
    BeginUpdate;
    HTMLText := '<img src="CodeGear">Form 3 Dynamic Link Library Loaded.';
    EndUpdate;
  end;

  //--- ProgressBar
  AdvSplashScreen1.ProgressBar.Left := 50;
  AdvSplashScreen1.ProgressBar.Top := 550;
  AdvSplashScreen1.ProgressBar.Width := 500;
  AdvSplashScreen1.ProgressBar.Maximum := 100;
  AdvSplashScreen1.ProgressBar.Minimum := 0;
  AdvSplashScreen1.ProgressBar.Position := 0;
  AdvSplashScreen1.ProgressBar.ValueVisible := True;
  AdvSplashScreen1.ProgressBar.Visible := True;
  //---

  with AdvSplashScreen1.Items.Add do  // Finance data
  begin
    BeginUpdate;
    Text := 'Retrieving Finance data:';
    PosX := 50;
    PosY := 300;
    Font.Size := 12;
    EndUpdate;
  end;

  //---- Retrieve Finance data
  sl := TStringList.Create;
  y := 330;

  sl.Add('YHOO');
  webdata1.Data.Clear;
  quotes := '';
  quotes := sl[0];
  for i := 1 to sl.Count - 1 do
    quotes := quotes + '%2C'+ sl[i];
  for i := 0 to sl.Count - 1 do
  begin
    with webdata1.Data.Add do
    begin
      scanfirst := 'market_data_div';
      scanfrom := '_l">';
      scanto := '</span>';
      url := 'http://finance.google.com/finance?q='+sl[i];
    end;
  end;
  webdata1.Execute;

  for i := 0 to sl.Count - 1 do
  begin
    with AdvSplashScreen1.Items.Add do
    begin
      BeginUpdate;
      Text := sl[i] + ' : ' + webdata1.Data.Items[i].Data;
      PosX := 50;
      PosY := y;
      EndUpdate;
    end;
    Inc(y, 30);
  end;
  AdvSplashScreen1.ProgressBar.Position := AdvSplashScreen1.ProgressBar.Position + 14;

  sl.Clear;
  sl.Add('GOOG');
  webdata1.Data.Clear;
  quotes := '';
  quotes := sl[0];
  for i := 1 to sl.Count - 1 do
    quotes := quotes + '%2C'+ sl[i];
  for i := 0 to sl.Count - 1 do
  begin
    with webdata1.Data.Add do
    begin
      scanfirst := 'market_data_div';
      scanfrom := '_l">';
      scanto := '</span>';
      url := 'http://finance.google.com/finance?q='+sl[i];
    end;
  end;
  webdata1.Execute;

  for i := 0 to sl.Count - 1 do
  begin
    with AdvSplashScreen1.Items.Add do
    begin
      BeginUpdate;
      Text := sl[i] + ' : ' + webdata1.Data.Items[i].Data;
      PosX := 50;
      PosY := y;
      EndUpdate;
    end;
    Inc(y, 30);
  end;
  AdvSplashScreen1.ProgressBar.Position := AdvSplashScreen1.ProgressBar.Position + 14;

  sl.Clear;
  sl.Add('INTC');
  webdata1.Data.Clear;
  quotes := '';
  quotes := sl[0];
  for i := 1 to sl.Count - 1 do
    quotes := quotes + '%2C'+ sl[i];
  for i := 0 to sl.Count - 1 do
  begin
    with webdata1.Data.Add do
    begin
      scanfirst := 'market_data_div';
      scanfrom := '_l">';
      scanto := '</span>';
      url := 'http://finance.google.com/finance?q='+sl[i];
    end;
  end;
  webdata1.Execute;

  for i := 0 to sl.Count - 1 do
  begin
    with AdvSplashScreen1.Items.Add do
    begin
      BeginUpdate;
      Text := sl[i] + ' : ' + webdata1.Data.Items[i].Data;
      PosX := 50;
      PosY := y;
      EndUpdate;
    end;
    Inc(y, 30);
  end;
  AdvSplashScreen1.ProgressBar.Position := AdvSplashScreen1.ProgressBar.Position + 14;

  sl.Clear;
  sl.Add('IWM');
  webdata1.Data.Clear;
  quotes := '';
  quotes := sl[0];
  for i := 1 to sl.Count - 1 do
    quotes := quotes + '%2C'+ sl[i];
  for i := 0 to sl.Count - 1 do
  begin
    with webdata1.Data.Add do
    begin
      scanfirst := 'market_data_div';
      scanfrom := '_l">';
      scanto := '</span>';
      url := 'http://finance.google.com/finance?q='+sl[i];
    end;
  end;
  webdata1.Execute;

  for i := 0 to sl.Count - 1 do
  begin
    with AdvSplashScreen1.Items.Add do
    begin
      BeginUpdate;
      Text := sl[i] + ' : ' + webdata1.Data.Items[i].Data;
      PosX := 50;
      PosY := y;
      EndUpdate;
    end;
    Inc(y, 30);
  end;
  AdvSplashScreen1.ProgressBar.Position := AdvSplashScreen1.ProgressBar.Position + 14;

  sl.Clear;
  sl.Add('JPM');
  webdata1.Data.Clear;
  quotes := '';
  quotes := sl[0];
  for i := 1 to sl.Count - 1 do
    quotes := quotes + '%2C'+ sl[i];
  for i := 0 to sl.Count - 1 do
  begin
    with webdata1.Data.Add do
    begin
      scanfirst := 'market_data_div';
      scanfrom := '_l">';
      scanto := '</span>';
      url := 'http://finance.google.com/finance?q='+sl[i];
    end;
  end;
  webdata1.Execute;

  for i := 0 to sl.Count - 1 do
  begin
    with AdvSplashScreen1.Items.Add do
    begin
      BeginUpdate;
      Text := sl[i] + ' : ' + webdata1.Data.Items[i].Data;
      PosX := 50;
      PosY := y;
      EndUpdate;
    end;
    Inc(y, 30);
  end;
  AdvSplashScreen1.ProgressBar.Position := AdvSplashScreen1.ProgressBar.Position + 14;

  sl.Clear;
  sl.Add('MSFT');
  webdata1.Data.Clear;
  quotes := '';
  quotes := sl[0];
  for i := 1 to sl.Count - 1 do
    quotes := quotes + '%2C'+ sl[i];
  for i := 0 to sl.Count - 1 do
  begin
    with webdata1.Data.Add do
    begin
      scanfirst := 'market_data_div';
      scanfrom := '_l">';
      scanto := '</span>';
      url := 'http://finance.google.com/finance?q='+sl[i];
    end;
  end;
  webdata1.Execute;

  for i := 0 to sl.Count - 1 do
  begin
    with AdvSplashScreen1.Items.Add do
    begin
      BeginUpdate;
      Text := sl[i] + ' : ' + webdata1.Data.Items[i].Data;
      PosX := 50;
      PosY := y;
      EndUpdate;
    end;
    Inc(y, 30);
  end;
  AdvSplashScreen1.ProgressBar.Position := AdvSplashScreen1.ProgressBar.Position + 14;

  sl.Clear;
  sl.Add('SPY');
  webdata1.Data.Clear;
  quotes := '';
  quotes := sl[0];
  for i := 1 to sl.Count - 1 do
    quotes := quotes + '%2C'+ sl[i];
  for i := 0 to sl.Count - 1 do
  begin
    with webdata1.Data.Add do
    begin
      scanfirst := 'market_data_div';
      scanfrom := '_l">';
      scanto := '</span>';
      url := 'http://finance.google.com/finance?q='+sl[i];
    end;
  end;
  webdata1.Execute;

  for i := 0 to sl.Count - 1 do
  begin
    with AdvSplashScreen1.Items.Add do
    begin
      BeginUpdate;
      Text := sl[i] + ' : ' + webdata1.Data.Items[i].Data;
      PosX := 50;
      PosY := y;
      EndUpdate;
    end;
    Inc(y, 30);
  end;
  AdvSplashScreen1.ProgressBar.Position := 100;

  sl.Free;
  //----

  sleep(500);

  AdvSplashScreen1.SetFocusToForm(Form1);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  if (DLLForm1Lib <> 0) then
    FreeLibrary(DLLForm1Lib);
  if (DLLForm2Lib <> 0) then
    FreeLibrary(DLLForm2Lib);
  if (DLLForm3Lib <> 0) then
    FreeLibrary(DLLForm3Lib);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if AdvSplashScreen1.ProgressBar.Position < 100 then
    AdvSplashScreen1.ProgressBar.Position := AdvSplashScreen1.ProgressBar.Position + 10
  else
    Timer1.Enabled := False;
end;

end.
