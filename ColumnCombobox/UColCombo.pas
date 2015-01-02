{********************************************************************}
{ TCOLUMNCOMBOBOX DEMO                                               }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 1998-2012                                   }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit UColCombo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, AdvGrid, StdCtrls, colcombo, ImgList, ShellApi, AdvCombo;

type
  TForm1 = class(TForm)
    ColumnComboBox1: TColumnComboBox;
    ImageList1: TImageList;
    ColumnComboBox2: TColumnComboBox;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    ColumnComboBox3: TColumnComboBox;
    Label3: TLabel;
    Button1: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Button2: TButton;
    procedure CheckBox1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ColumnComboBox1Change(Sender: TObject);
    procedure ColumnComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
 ColumnComboBox1.GridLines:=checkbox1.Checked;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
 if radiobutton1.Checked then ColumnComboBox2.EditColumn:=2 else
 ColumnComboBox2.EditColumn:=3;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  with columncombobox3 do
   begin
    Columns.Clear;
    ComboItems.Clear;

    with Columns.Add do
      begin
        Width:=75;
        Font.Style:=[fsBold];
      end;
    with Columns.Add do Width:=75;
    with Columns.Add do
      begin
        Width:=50;
        Alignment:=taRightJustify;
        Font.Color:=clBlue;
        Font.Style:=[fsBold];
      end;

    with ComboItems.Add do
     begin
      Strings.Add('BMW');
      Strings.Add('CI323');
      Strings.Add('1.200.000');
     end;

    with ComboItems.Add do
     begin
      Strings.Add('Mercedes');
      Strings.Add('SLK 230');
      Strings.Add('1.400.000');
     end;

    with ComboItems.Add do
     begin
      Strings.Add('Ferrari');
      Strings.Add('F355 Spider');
      Strings.Add('4.500.000');
     end;

    with ComboItems.Add do
     begin
      Strings.Add('BMW');
      Strings.Add('Z3 M Roadster');
      Strings.Add('2.100.000');
     end;

    with ComboItems.Add do
     begin
      Strings.Add('Audi');
      Strings.Add('TT Coupe');
      Strings.Add('1.300.000');
     end;

    with ComboItems.Add do
     begin
      Strings.Add('Mercedes');
      Strings.Add('Vision SLR ');
      Strings.Add('11.500.000');
     end;


   end;

end;

procedure TForm1.Label4Click(Sender: TObject);
begin
 shellexecute(0,'open',pchar(label4.caption),nil,nil,SW_NORMAL);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 with columncombobox3 do
  begin
   if ComboItems.Count>0 then ComboItems.Items[0].Free;
  end;
end;

procedure TForm1.ColumnComboBox1Change(Sender: TObject);
begin
 outputdebugstring('onchange');
end;

procedure TForm1.ColumnComboBox1Click(Sender: TObject);
begin
 outputdebugstring('onclick');
end;

end.
