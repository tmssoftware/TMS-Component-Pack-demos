{********************************************************************}
{ TMS TAdvSmoothTileList Demo                                        }
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
  Dialogs, AdvSmoothTileList, AdvStyleIF, AdvSmoothTileListImageVisualizer,
  AdvSmoothTileListHTMLVisualizer, StdCtrls, ComCtrls, ExtCtrls, Math, AdvGDIP,
  GDIPPictureContainer, ShellApi, GDIPFill, AdvOfficeHint;

type
  TForm327 = class(TForm)
    AdvSmoothTileListHTMLVisualizer1: TAdvSmoothTileListHTMLVisualizer;
    Panel1: TPanel;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    GDIPPictureContainer1: TGDIPPictureContainer;
    AdvSmoothTileList1: TAdvSmoothTileList;
    Label4: TLabel;
    Label5: TLabel;
    AdvOfficeHint1: TAdvOfficeHint;
    procedure FormCreate(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AdvSmoothTileList1TileAnchorClick(Sender: TObject;
      Tile: TAdvSmoothTile; State: TTileState; Anchor: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form327: TForm327;

implementation

{$R *.dfm}

function VarPos(su,s:string;var vp: Integer):Integer;
begin
  vp := Pos(su,s);
  Result := vp;
end;

procedure Split(s:string; sl: TStringList; delimiter: string);
var
  vp: integer;
begin
  sl.Clear;
  while VarPos(delimiter, s, vp) > 0 do
  begin
    sl.Add(copy(s, 1, vp - 1));
    delete(s, 1, vp);
  end;

  if s <> '' then
    sl.Add(s)
end;

function ParseDelimited: TStringList;
var
 myfile: TextFile;
 line: String;
begin
  Result := TStringList.Create;
  assign(myfile,'productsets.csv');
  reset(myfile);
  while not eof(myfile) do
  begin
    Readln(myfile, line);
    Result.Add(line);
  end;
end;

function AddVersion(AVer: String): String;
begin
  if AVer = 'D5' then
    Result := 'Delphi 5'
  else if AVer = 'D6' then
    Result := 'Delphi 6'
  else if AVer = 'D7' then
    Result := 'Delphi 7'
  else if AVer = 'D2005' then
    Result := 'Delphi 2005'
  else if AVer = 'D2006' then
    Result := 'Delphi 2006'
  else if AVer = 'D2007' then
    Result := 'Delphi 2007'
  else if AVer = 'D2009' then
    Result := 'Delphi 2009'
  else if AVer = 'D2010' then
    Result := 'Delphi 2010'
  else if AVer = 'DXE' then
    Result := 'Delphi XE'
  else if AVer = 'C5' then
    Result := 'C++Builder 5'
  else if AVer = 'C6' then
    Result := 'C++Builder 6'
  else if AVer = 'C2006' then
    Result := 'C++Builder 2006'
  else if AVer = 'C2007' then
    Result := 'C++Builder 2007'
  else if AVer = 'C2009' then
    Result := 'C++Builder 2009'
  else if AVer = 'C2010' then
    Result := 'C++Builder 2010'
  else if AVer = 'CXE' then
    Result := 'C++Builder XE';
end;

procedure TForm327.AdvSmoothTileList1TileAnchorClick(Sender: TObject;
  Tile: TAdvSmoothTile; State: TTileState; Anchor: string);
begin
  ShellExecute(0, nil, 'iexplore.exe',PChar(Anchor),nil,SW_NORMAL);
end;

procedure TForm327.Button1Click(Sender: TObject);
begin
  AdvSmoothTileList1.Mode := tmContent;
end;

procedure TForm327.ComboBox1Change(Sender: TObject);
var
  s: TTMSStyle;
begin
  s := tsWindows8;
  case Combobox1.ItemIndex of
    0: s := tsOffice2003Blue;
    1: s := tsOffice2003Silver;
    2: s := tsOffice2003Olive;
    3: s := tsOffice2003Classic;
    4: s := tsOffice2007Luna;
    5: s := tsOffice2007Obsidian;
    6: s := tsOffice2007Silver;
    7: s := tsOffice2010Blue;
    8: s := tsOffice2010Silver;
    9: s := tsOffice2010Black;
    10: s := tsWindowsXP;
    11: s := tsWhidbey;
    12: s := tsWindowsVista;
    13: s := tsWindows7;
    14: s := tsTerminal;
    15: s := tsWindows8;
  end;

  AdvSmoothTileList1.SetComponentStyle(s);
end;

procedure TForm327.FormCreate(Sender: TObject);
var
  i: integer;
  S: TStringList;
  str: TStringList;
  strVer: TStringList;
  K: Integer;
  iCount: integer;
begin
  AdvSmoothTileList1.Rows := 0;
  AdvSmoothTileList1.Columns := 4;
  S := ParseDelimited;


  for I := 0 to S.count - 1 do
  begin
    Randomize;
    str := TStringList.Create;
    Split(s[i], str,';');


    with AdvSmoothTileList1.Tiles.Add do
    begin
      Content.Text := '<p>';
      Content.Text := '<b>'+str[1]+'</b><br/>';
      Content.Text := Content.Text + '<IMG src="'+str[0]+'.png" width="55" height="70"/>';
      strVer := TStringList.Create;
      Split(str[6], strVer, '^');
      Content.Text := Content.Text + strVer[2];
      strVer.Free;

      Content.Text := Content.Text + '<br/><br/>Rating: <IMG src="'+inttostr(RandomRange(3,6))+'.png"/><br/><br/>Price:<ul>';

      strVer := TStringList.Create;
      Split(str[3], strVer, '^');
      iCount := 0;
      for K := 0 to strVer.Count - 1 do
      begin
        if strVer[K] <> '' then
        begin
          if K = 0 then
            Content.Text := Content.Text + '<li type="SQUARE" color="clRed"><b>€ ' + strVer[K]+ '</b> (Single Developer License)'
          else if K = 2 then
          begin
            Content.Text := Content.Text + '<li type="SQUARE" color="clRed"><b>€ ' + strVer[K]+ '</b> (Site License)'
          end
          else if K = 4 then
            Content.Text := Content.Text + '<li type="SQUARE" color="clRed"><b>€ ' + strVer[K]+ '</b> (Small Team License)';

          Inc(iCount);
        end;
      end;


      if iCount < 3 then
        Content.Text := Content.Text + '<br/>';

      if iCount < 2 then
        Content.Text := Content.Text + '<br/>';

      strVer.Free;
      Content.Text := Content.Text + '</ul>';
      Content.Text := Content.Text + '<br/><br/><a href="http://www.tmssoftware.com/site/'+str[0]+'.asp#buy"><IMG src="OrderButton.png"/></a><br/><br/>';
      Content.Text := Content.Text + '<b>Description</b> : <br/>';
      Content.Text := Content.Text + str[11];

      Content.TextPosition := tpCustom;
      Content.TextLeft := 10;
      Content.TextTop := 10;

      strVer := TStringList.Create;
      Split(str[8], strVer, '^');
      for K := 0 to strVer.count - 1 do
      begin
        if strVer[k] <> '' then
          Content.OfficeHint.Notes.Add(AddVersion(strVer[k]));
      end;

      strVer.Free;
      ContentMaximized.Assign(Content);
      ContentMaximized.Text := ContentMaximized.Text + '<br/><br/>' + '<a href="http://www.tmssoftware.com/site/'+str[0]+'.asp?s=history">Product version history</a>';
      ContentMaximized.Text := ContentMaximized.Text + '<br/>' + '<a href="http://www.tmssoftware.com/site/'+str[0]+'.asp?s=faq">Product frequently asked questions</a>';
    end;
    str.Free;
  end;
  S.Free;

  TrackBar1.Position := AdvSmoothTileList1.Columns;
  TrackBar2.Position := AdvSmoothTileList1.Rows;

  ComboBox1.ItemIndex := 15;
  AdvSmoothTileList1.SetComponentStyle(tswindows8);

  AdvSmoothTileList1.ShowHint := True;
  AdvSmoothTileList1.TileAppearance.SmallViewFont.Name := 'Verdana';
  AdvSmoothTileList1.TileAppearance.SmallViewFont.Size := 10;
  AdvSmoothTileList1.TileAppearance.SmallViewFill.BorderColor := $A8A6A6;
  AdvSmoothTileList1.TileAppearance.SmallViewFill.Opacity := 255;
  AdvSmoothTileList1.TileAppearance.SmallViewFill.OpacityTo := 255;
  AdvSmoothTileList1.TileAppearance.SmallViewFill.Color :=  $F9F9F9;
  AdvSmoothTileList1.TileAppearance.SmallViewFill.ColorTo := $E3E3E3;
  AdvOfficeHint1.HintColor :=$F9F9F9;
  AdvOfficeHint1.HintColorTo :=$E3E3E3;
  AdvSmoothTileList1.TileAppearance.SmallViewFill.GradientType := gtvertical;
  AdvSmoothTileList1.TileAppearance.SmallViewFill.ShadowOffset := 5;
  AdvSmoothTileList1.TileAppearance.SmallViewFill.ShadowType := stBottom;

  AdvSmoothTileList1.TileAppearance.SmallViewFillSelected.Assign(AdvSmoothTileList1.TileAppearance.SmallViewFill);
  AdvSmoothTileList1.TileAppearance.SmallViewFillHover.Assign(AdvSmoothTileList1.TileAppearance.SmallViewFill);
  AdvSmoothTileList1.TileAppearance.LargeViewFill.Assign(AdvSmoothTileList1.TileAppearance.SmallViewFill);
  AdvSmoothTileList1.TileAppearance.SmallViewFontSelected.Assign(AdvSmoothTileList1.TileAppearance.SmallViewFont);
  AdvSmoothTileList1.TileAppearance.SmallViewFontHover.Assign(AdvSmoothTileList1.TileAppearance.SmallViewFont);
  AdvSmoothTileList1.TileAppearance.LargeViewFont.Assign(AdvSmoothTileList1.TileAppearance.SmallViewFont);
end;

procedure TForm327.TrackBar1Change(Sender: TObject);
begin
  AdvSmoothTileList1.Columns := TrackBar1.Position;
end;

procedure TForm327.TrackBar2Change(Sender: TObject);
begin
  AdvSmoothTileList1.Rows := TrackBar2.Position;
end;

end.
