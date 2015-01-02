{********************************************************************}
{ TMS Advanced DropDown Controls Demo                                }
{ for Delphi & C++Builder                                            }
{                                                                    }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2012                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit UDemo;

interface

uses
  Windows, Forms, ImgList, Controls, StdCtrls, AdvTrackBarDropDown, AdvDropDown,
  AdvControlDropDown, ExtCtrls, AdvDetailDropDown, AdvCalculatorDropdown,
  AdvTimePickerDropDown, AdvImagePickerDropDown, AdvColorPickerDropDown,
  AdvMultiColumnDropDown, Mask, AdvMemoDropDown, ComCtrls, Classes, ShellAPI,
  AdvStyleIF, Graphics;

type
  TForm316 = class(TForm)
    ImageList1: TImageList;
    ImageList2: TImageList;
    ImageList3: TImageList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    AdvMemoDropDown1: TAdvMemoDropDown;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    AdvMultiColumnDropDown1: TAdvMultiColumnDropDown;
    AdvColorPickerDropDown7: TAdvColorPickerDropDown;
    AdvImagePickerDropDown2: TAdvImagePickerDropDown;
    AdvTimePickerDropDown1: TAdvTimePickerDropDown;
    AdvCalculatorDropdown1: TAdvCalculatorDropdown;
    AdvDetailDropDown1: TAdvDetailDropDown;
    AdvControlDropDown1: TAdvControlDropDown;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    TabSheet9: TTabSheet;
    AdvTrackBarDropDown1: TAdvTrackBarDropDown;
    Label6: TLabel;
    Label7: TLabel;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    Shape1: TShape;
    TrackBar1: TTrackBar;
    Label8: TLabel;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure AdvControlDropDown1Change(Sender: TObject);
    procedure AdvControlDropDown1DropDownFooterButtonClick(Sender: TObject;
      ButtonIndex: Integer);
    procedure Label6Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure AdvColorPickerDropDown7Select(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure AdvColorPickerDropDown7DropDownHeaderButtonClick(Sender: TObject;
      ButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetStyle(AStyle: TTMSStyle);
  end;

var
  Form316: TForm316;

implementation

{$R *.dfm}

procedure TForm316.AdvColorPickerDropDown7DropDownHeaderButtonClick(
  Sender: TObject; ButtonIndex: Integer);
begin
  case ButtonIndex of
    0: AdvColorPickerDropDown7.ColorSelectionStyle := csList;
    1: AdvColorPickerDropDown7.ColorSelectionStyle := csDiscrete;
    2: AdvColorPickerDropDown7.ColorSelectionStyle := csColorCube;
    3: AdvColorPickerDropDown7.ColorSelectionStyle := csSpectrum;
  end;
end;

procedure TForm316.AdvColorPickerDropDown7Select(Sender: TObject);
begin
  Shape1.Brush.Color := AdvColorPickerDropDown7.SelectedColor;
end;

procedure TForm316.AdvControlDropDown1Change(Sender: TObject);
begin
  Edit2.Text := AdvControlDropDown1.Text;
end;

procedure TForm316.AdvControlDropDown1DropDownFooterButtonClick(Sender: TObject;
  ButtonIndex: Integer);
begin
  AdvControlDropDown1.Text := Edit2.Text;
end;

procedure TForm316.CheckBox1Click(Sender: TObject);
begin
  AdvTimePickerDropDown1.ShowTimePicker := CheckBox1.Checked;
end;

procedure TForm316.CheckBox2Click(Sender: TObject);
begin
  AdvTimePickerDropDown1.EditorEnabled := CheckBox2.Checked;
end;

procedure TForm316.CheckBox3Click(Sender: TObject);
begin
  AdvTimePickerDropDown1.ShowSeconds := CheckBox3.Checked;
end;

procedure TForm316.CheckBox4Click(Sender: TObject);
begin
  AdvControlDropDown1.EditorEnabled := CheckBox4.Checked;
end;

procedure TForm316.CheckBox5Click(Sender: TObject);
begin
  AdvMultiColumnDropDown1.ColumnSizing := CheckBox5.Checked;
end;

procedure TForm316.CheckBox6Click(Sender: TObject);
begin
  AdvMultiColumnDropDown1.ColumnSizeWithDropDown := CheckBox6.Checked;
end;

procedure TForm316.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0: SetStyle(tsOffice2003Blue);
    1: SetStyle(tsOffice2003Silver);
    2: SetStyle(tsOffice2003Olive);
    3: SetStyle(tsOffice2003Classic);
    4: SetStyle(tsOffice2007Luna);
    5: SetStyle(tsOffice2007Obsidian);
    6: SetStyle(tsOffice2007Silver);
    7: SetStyle(tsWindowsXP);
    8: SetStyle(tsWhidbey);
    9: SetStyle(tsWindowsVista);
    10: SetStyle(tsWindows7);
    11: SetStyle(tsTerminal);
  end;
end;

procedure TForm316.FormCreate(Sender: TObject);
begin
  AdvColorPickerDropDown7.SelectedColor := clWhite;
  Shape1.Brush.Color := clWhite;
  PageControl1.ActivePageIndex := 0;
  ComboBox1.ItemIndex := 4;
  SetStyle(tsOffice2007Luna);
end;

procedure TForm316.Label6Click(Sender: TObject);
begin
  ShellExecute(Handle, 'Open', PChar(Label6.Caption), nil, nil, SW_SHOWNORMAL);
end;

procedure TForm316.SetStyle(AStyle: TTMSStyle);
var
  I: Integer;
  K: Integer;
begin
  for I := 0 to PageControl1.PageCount - 1 do
  begin
    for K := 0 to PageControl1.Pages[I].ControlCount - 1 do
    begin
      if PageControl1.Pages[i].Controls[K] is TAdvCustomDropDown then
      begin
        (PageControl1.Pages[i].Controls[K] as TAdvCustomDropDown).SetComponentStyle(AStyle);
      end;
    end;
  end;

  AdvColorPickerDropDown7.SetComponentStyle(AStyle);
end;

procedure TForm316.TrackBar1Change(Sender: TObject);
begin
  AdvCalculatorDropdown1.Precision := TrackBar1.Position;
end;

end.
