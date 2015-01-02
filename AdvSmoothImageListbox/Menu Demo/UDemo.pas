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
  Dialogs, AdvSmoothImageListBox, StdCtrls, ExtCtrls, Math, jpeg, ComCtrls,
  Grids, ShellAPI;

type
  TForm127 = class(TForm)
    AdvSmoothImageListBox1: TAdvSmoothImageListBox;
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    CheckBox1: TCheckBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label3: TLabel;
    Memo2: TMemo;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Image3: TImage;
    TabSheet5: TTabSheet;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit3: TEdit;
    Edit2: TEdit;
    Edit1: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Memo3: TMemo;
    Button1: TButton;
    Image1: TImage;
    Label8: TLabel;
    Label9: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Image4: TImage;
    StringGrid1: TStringGrid;
    TabSheet6: TTabSheet;
    Button2: TButton;
    Button3: TButton;
    Button6: TButton;
    Button7: TButton;
    Button9: TButton;
    Button10: TButton;
    Button4: TButton;
    Button5: TButton;
    Button8: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    TabSheet7: TTabSheet;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    TabSheet8: TTabSheet;
    Label41: TLabel;
    Timer1: TTimer;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure AdvSmoothImageListBox1ItemSelect(Sender: TObject;
      itemindex: Integer);
    procedure FormResize(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetPosition;
    procedure FillEmails;
  end;

var
  Form127: TForm127;
  FanimateW, FanimateH: Boolean;
  FWidth, FHeight, FCurrentItem: integer;
  FTime: String;

implementation

{$R *.dfm}
{$R UDemo.res}

procedure TForm127.AdvSmoothImageListBox1ItemSelect(Sender: TObject;
  itemindex: Integer);
begin
  PageControl1.ActivePageIndex := itemindex;
end;

procedure TForm127.CheckBox1Click(Sender: TObject);
begin
  ComboBox1Change(Self);
end;

procedure TForm127.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0:
    begin
      AdvSmoothImageListBox1.Align := alTop;
      if CheckBox1.Checked then
        AdvSmoothImageListBox1.Columns := 9
      else
        AdvSmoothImageListBox1.Rows := 1
    end;
    1:
    begin
      AdvSmoothImageListBox1.Align := alLeft;
      if CheckBox1.Checked then
        AdvSmoothImageListBox1.Rows := 9
      else
        AdvSmoothImageListBox1.Columns := 1
    end;
  end;

  SetPosition;
end;

procedure TForm127.FillEmails;
begin
  StringGrid1.Cells[0, 0] := 'Email';
  StringGrid1.Cells[1, 0] := 'Subject';
  StringGrid1.Cells[2, 0] := 'Date';
  StringGrid1.Cells[3, 0] := 'Size';

  StringGrid1.Cells[0, 1] := 'info@tmssoftware.com';
  StringGrid1.Cells[1, 1] := 'New TAdvSmoothImageListBox !';
  StringGrid1.Cells[2, 1] := '11-09-2008';
  StringGrid1.Cells[3, 1] := '3 KB';

  StringGrid1.Cells[0, 2] := 'meeting@intel.com';
  StringGrid1.Cells[1, 2] := 'Meeting on friday';
  StringGrid1.Cells[2, 2] := '10-09-2008';
  StringGrid1.Cells[3, 2] := '10 KB';

  StringGrid1.Cells[0, 3] := 'info@tmssoftware.com';
  StringGrid1.Cells[1, 3] := '[no subject]';
  StringGrid1.Cells[2, 3] := '11-09-2008';
  StringGrid1.Cells[3, 3] := '5 KB';

  StringGrid1.Cells[0, 4] := 'info@tmssoftware.com';
  StringGrid1.Cells[1, 4] := 'New TAdvSmoothImageListBox !';
  StringGrid1.Cells[2, 4] := '11-09-2008';
  StringGrid1.Cells[3, 4] := '3 KB';

  StringGrid1.Cells[0, 5] := 'info@tmssoftware.com';
  StringGrid1.Cells[1, 5] := 'New TAdvSmoothImageListBox !';
  StringGrid1.Cells[2, 5] := '11-09-2008';
  StringGrid1.Cells[3, 5] := '3 KB';
end;

procedure TForm127.FormCreate(Sender: TObject);
begin
  with AdvSmoothImageListBox1.Items.Add do
  begin
    Image.LoadFromResourceName(HInstance, 'panel');
    Hint := 'Open Lorem Ipsum';
    Caption.Text := Hint;
    Caption.Location := cpBottomCenter;
  end;

  with AdvSmoothImageListBox1.Items.Add do
  begin
    Image.LoadFromResourceName(HInstance, 'envelope');
    Hint := 'Open emails';
    Caption.Text := Hint;
    Caption.Location := cpBottomCenter;
  end;

  with AdvSmoothImageListBox1.Items.Add do
  begin
    Image.LoadFromResourceName(HInstance, 'favorites');
    Hint := 'Open favorites';
    Caption.Text := Hint;
    Caption.Location := cpBottomCenter;
  end;

  with AdvSmoothImageListBox1.Items.Add do
  begin
    Image.LoadFromResourceName(HInstance, 'pictures');
    Hint := 'Open pictures';
    Caption.Text := Hint;
    Caption.Location := cpBottomCenter;
  end;

  with AdvSmoothImageListBox1.Items.Add do
  begin
    Image.LoadFromResourceName(HInstance, 'printer');
    Hint := 'Print';
    Caption.Text := Hint;
    Caption.Location := cpBottomCenter;
  end;

  with AdvSmoothImageListBox1.Items.Add do
  begin
    Image.LoadFromResourceName(HInstance, 'office');
    Hint := 'Open Office documents';
    Caption.Text := Hint;
    Caption.Location := cpBottomCenter;
  end;

  with AdvSmoothImageListBox1.Items.Add do
  begin
    Image.LoadFromResourceName(HInstance, 'calc');
    Hint := 'Open calculator';
    Caption.Text := Hint;
    Caption.Location := cpBottomCenter;
  end;

  with AdvSmoothImageListBox1.Items.Add do
  begin
    Image.LoadFromResourceName(HInstance, 'clock');
    Hint := 'Set time';
    Caption.Text := Hint;
    Caption.Location := cpBottomCenter;
  end;

  with AdvSmoothImageListBox1.Items.Add do
  begin
    Image.LoadFromResourceName(HInstance, 'trash');
    Hint := 'Recycle bin';
    Caption.Text := Hint;
    Caption.Location := cpBottomCenter;
  end;

  ComboBox1.ItemIndex := 0;
  PageControl1.ActivePageIndex := 0;

  FillEmails;

  Label2.Caption := 'Click on a menu item to show the info' + #13 + #10 + 'Scroll Left or Right (or Up-Down) to browse through the menu';
end;

procedure TForm127.FormResize(Sender: TObject);
begin
  SetPosition;
end;

procedure TForm127.SetPosition;
begin
  if CheckBox1.Checked then
  begin
    case ComboBox1.ItemIndex of
      0:
      begin
        AdvSmoothImageListBox1.ItemAppearance.ItemWidth := (AdvSmoothImageListBox1.Width - AdvSmoothImageListBox1.ItemAppearance.ItemHorizontalSpacing) div 8;
        AdvSmoothImageListBox1.ItemAppearance.ItemHeight := Min(AdvSmoothImageListBox1.Height - (AdvSmoothImageListBox1.ItemAppearance.ItemVerticalSpacing * 2), AdvSmoothImageListBox1.ItemAppearance.ItemWidth);
      end;
      1:
      begin
        AdvSmoothImageListBox1.ItemAppearance.ItemHeight := (AdvSmoothImageListBox1.Height - AdvSmoothImageListBox1.ItemAppearance.ItemVerticalSpacing) div 8;
        AdvSmoothImageListBox1.ItemAppearance.ItemWidth := AdvSmoothImageListBox1.ItemAppearance.ItemHeight;
      end;
    end;
  end
  else
  begin
    AdvSmoothImageListBox1.ItemAppearance.ItemWidth := 120;
    AdvSmoothImageListBox1.ItemAppearance.ItemHeight := 120;
  end;
end;

procedure TForm127.Timer1Timer(Sender: TObject);
begin
  Label41.Caption := DateToStr(Now) + ' ' + TimeToStr(Now);
  Label42.Caption := Label41.Caption;
  Label43.Caption := Label41.Caption;
  Label44.Caption := Label41.Caption;
  Label45.Caption := Label41.Caption;
  Label46.Caption := Label41.Caption;
end;

end.
