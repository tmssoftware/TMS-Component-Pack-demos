{********************************************************************}
{ TMS TAdvDBComboBox Demo                                            }
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
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvCombo, AdvDBComboBox, DB, ADODB, Grids, DBGrids,
  ExtCtrls, DBCtrls, ImgList, ShellAPI;

type
  TForm433 = class(TForm)
    DataSource1: TDataSource;
    AdvDBComboBox1: TAdvDBComboBox;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    AdvDBComboBox2: TAdvDBComboBox;
    ImageList1: TImageList;
    ADOTable1: TADOTable;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form433: TForm433;

implementation

{$R *.dfm}

procedure TForm433.FormCreate(Sender: TObject);
begin
  ADOTable1.Active := false;
  ADOTable1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=DB.mdb;Persist Security Info=False';
  ADOTable1.TableName := 'tblCountries';
  ADOTable1.Active := true;
end;

procedure TForm433.Label1Click(Sender: TObject);
begin
  ShellExecute(handle, 'open', 'http://www.tmssoftware.com', nil, nil, SW_SHOWNORMAL);
end;

end.
