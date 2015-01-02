unit UDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvSmoothListBox, AdvSmoothPageSlider, DBAdvSmoothListBox, DB, ADODB,
  GDIPPictureContainer, DBCtrls, StdCtrls, ExtCtrls, AdvSmoothButton, pngimage;

type
  TForm600 = class(TForm)
    AdvSmoothPageSlider1: TAdvSmoothPageSlider;
    AdvSmoothPageSlider11: TAdvSmoothPage;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    DBAdvSmoothListBox1: TDBAdvSmoothListBox;
    GDIPPictureContainer1: TGDIPPictureContainer;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    ADOConnection1: TADOConnection;
    DBAdvSmoothListBox2: TDBAdvSmoothListBox;
    Image1: TImage;
    Image2: TImage;
    AdvSmoothButton1: TAdvSmoothButton;
    AdvSmoothPage1: TAdvSmoothPage;
    AdvSmoothButton2: TAdvSmoothButton;
    AdvSmoothButton3: TAdvSmoothButton;
    ADOTable3: TADOTable;
    DBAdvSmoothListBox3: TDBAdvSmoothListBox;
    DataSource3: TDataSource;
    Image3: TImage;
    DBText2: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    Label6: TLabel;
    DBText5: TDBText;
    Label7: TLabel;
    DBText6: TDBText;
    Image4: TImage;
    procedure FormCreate(Sender: TObject);
    procedure DBAdvSmoothListBox1ItemSelected(Sender: TObject;
      itemindex: Integer);
    procedure FormShow(Sender: TObject);
    procedure DBAdvSmoothListBox2ItemSelected(Sender: TObject;
      itemindex: Integer);
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure AdvSmoothButton3Click(Sender: TObject);
    procedure AdvSmoothPageSlider1PageChange(Sender: TObject);
    procedure DBAdvSmoothListBox3ItemSelected(Sender: TObject;
      itemindex: Integer);
    procedure AdvSmoothButton2Click(Sender: TObject);
    procedure DBAdvSmoothListBox2ItemDblClick(Sender: TObject;
      itemindex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadFirstPage(AItemIndex: Integer);
    procedure LoadSecondPage(AItemIndex: Integer);
    procedure UpdateButton;
  end;

var
  Form600: TForm600;

implementation

{$R *.dfm}

procedure TForm600.AdvSmoothButton1Click(Sender: TObject);
begin
  AdvSmoothPageSlider1.ActivePageIndex := 1;
  AdvSmoothButton3.Visible := True;
end;

procedure TForm600.AdvSmoothButton2Click(Sender: TObject);
var
  i: Integer;
  sel: Integer;
begin
  ADOTable3.Edit;
  ADOTable3.FindField('Checked').Value := not ADOTable3.FindField('Checked').Value;
  ADOTable3.Post;

  sel := DBAdvSmoothListBox3.SelectedItemIndex;
  DBAdvSmoothListBox3.Items.BeginUpdate;
  ADOTable3.Active := False;
  ADOTable3.Active := True;


  ADOTable3.DisableControls;
  ADOTable3.RecNo := 1;
  for I := 0 to DBAdvSmoothListBox3.Items.Count - 1 do
  begin
    DBAdvSmoothListBox3.Items[I].GraphicLeftWidth := 15;
    DBAdvSmoothListBox3.Items[I].GraphicLeftName := ADOTable3.FindField('Picture').AsString;
    ADOTable3.Next;
  end;
  ADOTable3.EnableControls;
  ADOTable3.RecNo := sel + 1;

  Image3.Picture.Assign(GDIPPictureContainer1.FindPicture(ADOTable3.FindField('Picture').AsString));
  DBAdvSmoothListBox3.SelectedItemIndex := sel;
  DBAdvSmoothListBox3.Items.EndUpdate;

  Image4.Visible := DBAdvSmoothListBox3.Items.SelectedItem.Checked;
  UpdateButton;
end;

procedure TForm600.AdvSmoothButton3Click(Sender: TObject);
begin
  AdvSmoothPageSlider1.ActivePageIndex := 0;
  (Sender as TAdvSmoothButton).visible := False;
end;

procedure TForm600.AdvSmoothPageSlider1PageChange(Sender: TObject);
begin
  AdvSmoothButton3.Visible := AdvSmoothPageSlider1.ActivePageIndex = 1;
end;

procedure TForm600.DBAdvSmoothListBox1ItemSelected(Sender: TObject;
  itemindex: Integer);
begin
  LoadFirstPage(ItemIndex);
end;

procedure TForm600.DBAdvSmoothListBox2ItemDblClick(Sender: TObject;
  itemindex: Integer);
begin
  AdvSmoothPageSlider1.ActivePageIndex := 1;
  AdvSmoothButton3.Visible := True;
end;

procedure TForm600.DBAdvSmoothListBox2ItemSelected(Sender: TObject;
  itemindex: Integer);
begin
  LoadSecondPage(ItemIndex);
end;

procedure TForm600.DBAdvSmoothListBox3ItemSelected(Sender: TObject;
  itemindex: Integer);
begin
  DBAdvSmoothListBox3.Items.UnSelectAll;
  DBAdvSmoothListBox3.SelectedItemIndex := ItemIndex;
  ADOTable3.RecNo := ItemIndex + 1;
  Image3.Picture.Assign(GDIPPictureContainer1.FindPicture(ADOTable3.FindField('Picture').AsString));
  Image4.Visible := DBAdvSmoothListBox3.Items.SelectedItem.Checked;
  UpdateButton;
end;

procedure TForm600.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  DBAdvSmoothListBox1.PageMode := False;
  DBAdvSmoothListBox2.PageMode := False;
  DBAdvSmoothListBox3.PageMode := False;
  ADOTable1.Active := True;
  ADOTable2.Active := True;
  ADOTable3.Active := True;
  for I := 0 to DBAdvSmoothListBox1.Items.Count - 1 do
    DBAdvSmoothListBox1.Items[I].GraphicLeftName := 'country' + inttostr(I + 1);
end;

procedure TForm600.FormShow(Sender: TObject);
begin
  DBAdvSmoothListBox1.SelectedItemIndex := 0;
  LoadFirstPage(0);
end;

procedure TForm600.LoadFirstPage(AItemIndex: Integer);
var
  I: Integer;
begin
  DBAdvSmoothListBox1.Items.BeginUpdate;
  DBAdvSmoothListBox2.Items.BeginUpdate;
  AdvSmoothPageSlider1.ActivePageIndex := 0;
  DBAdvSmoothListBox1.Items.UnSelectAll;
  DBAdvSmoothListBox1.SelectedItemIndex := AItemIndex;
  ADOTable1.RecNo := DBAdvSmoothListBox1.SelectedItemIndex + 1;
  ADOTable2.Active := False;
  ADOTable2.Active := True;

  Image1.Picture.Assign(GDIPPictureContainer1.FindPicture('country' + inttostr(AItemIndex +1)));
  ADOTable1.RecNo := AItemIndex + 1;
  DBAdvSmoothListBox1.Items.EndUpdate;

  ADOTable2.RecNo := 1;
  for I := 0 to DBAdvSmoothListBox2.Items.Count - 1 do
  begin
    DBAdvSmoothListBox2.Items[I].Tag := ADOTable2.FindField('ID').AsInteger - 1;
    DBAdvSmoothListBox2.Items[I].GraphicLeftName := 'region' + inttostr(DBAdvSmoothListBox2.Items[I].Tag)+'.png';
    ADOTable2.Next;
  end;

  DBAdvSmoothListBox2.Items.EndUpdate;
  LoadSecondPage(0);
end;

procedure TForm600.LoadSecondPage(AItemIndex: Integer);
var
  it: TAdvSmoothListBoxItem;
  I: Integer;
begin
  DBAdvSmoothListBox3.Items.BeginUpdate;
  DBAdvSmoothListBox2.Items.UnSelectAll;
  DBAdvSmoothListBox2.SelectedItemIndex := AItemIndex;
  if (AItemIndex >= 0) and (AItemIndex <= DBAdvSmoothListBox2.Items.Count - 1) then
  begin
    it := DBAdvSmoothListBox2.Items[AItemIndex];
    Image2.Picture.Assign(GDIPPictureContainer1.FindPicture('region' + inttostr(Round(it.Tag)) +'.png'));
  end;

  ADOTable2.RecNo := AItemIndex + 1;


  ADOTable3.Active := False;
  ADOTable3.Active := True;

  ADOTable3.RecNo := 1;
  for I := 0 to DBAdvSmoothListBox3.Items.Count - 1 do
  begin
    DBAdvSmoothListBox3.Items[I].GraphicLeftWidth := 15;
    DBAdvSmoothListBox3.Items[I].GraphicLeftName := ADOTable3.FindField('Picture').AsString;
    ADOTable3.Next;
  end;

  ADOTable3.RecNo := 1;
  DBAdvSmoothListBox3.SelectedItemIndex := 0;
  Image3.Picture.Assign(GDIPPictureContainer1.FindPicture(ADOTable3.FindField('Picture').AsString));
  DBAdvSmoothListBox3.Items.EndUpdate;

  Image4.Visible := DBAdvSmoothListBox3.Items.SelectedItem.Checked;
  UpdateButton;
end;

procedure TForm600.UpdateButton;
begin
  if Image4.Visible then
  begin
    AdvSmoothButton2.Caption := 'Remove from cart';
    AdvSmoothButton2.Appearance.PictureName :='remove'
  end
  else
  begin
    AdvSmoothButton2.Caption := 'Add to cart';
    AdvSmoothButton2.Appearance.PictureName :='add';
  end;
end;

end.
