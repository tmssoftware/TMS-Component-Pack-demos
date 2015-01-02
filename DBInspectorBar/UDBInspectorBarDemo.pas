{***************************************************************************}
{ TDBInspectorBar demo                                                      }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2001 - 2012                                        }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{                                                                           }
{***************************************************************************}

unit UDBInspectorBarDemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, DBCtrls, StdCtrls, ExtCtrls,
  InspectorBar, DBInspectorBar, ShellAPI
  {$IFDEF VER140}
  ,Variants
  {$ENDIF}
  ;

type
  TForm1 = class(TForm)
    DBInspectorBar1: TDBInspectorBar;
    CheckBox1: TCheckBox;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Table2: TTable;
    Table2ResNo: TAutoIncField;
    Table2EventNo: TIntegerField;
    Table2CustNo: TIntegerField;
    Table2NumTickets: TIntegerField;
    Table2Amt_Paid: TCurrencyField;
    Table2Pay_Method: TStringField;
    Table2Card_No: TStringField;
    Table2Card_Exp: TDateField;
    Table2Pay_Notes: TMemoField;
    Table2Purge_Date: TDateField;
    Table2Paid: TBooleanField;
    DataSource2: TDataSource;
    CheckBox2: TCheckBox;
    Label1: TLabel;
    procedure CheckBox1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  DBInspectorBar1.Panels[1].ShowNavigator := Checkbox1.Checked;
  DBNavigator1.Visible := not CheckBox1.Checked;
end;

procedure TForm1.Label1Click(Sender: TObject);
begin
  shellexecute(0,'open',pchar(label1.Caption),nil,nil,SW_NORMAL);
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  if checkbox2.Checked then
    DBInspectorBar1.Navigator.ButtonStyle := bsGlyphs
  else
    DBInspectorBar1.Navigator.ButtonStyle := bsDefault;

end;

end.
