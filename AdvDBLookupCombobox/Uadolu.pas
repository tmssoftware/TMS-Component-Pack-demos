{********************************************************************}
{ TMS TAdvDBLookupComboBox Demo                                      }
{ for Delphi & C++Builder                                            }
{                                                                    }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2012                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit Uadolu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, AdvDBLookupComboBox, ImgList, Grids, DBGrids;

type
  TForm1 = class(TForm)
    AdvDBLookupComboBox1: TAdvDBLookupComboBox;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    Label1: TLabel;
    ImageList1: TImageList;
    ADOQuery1Brand: TWideStringField;
    ADOQuery1Type: TWideStringField;
    ADOQuery1CC: TIntegerField;
    ADOQuery1PK: TIntegerField;
    ADOQuery1Cyl: TIntegerField;
    ADOQuery1KW: TIntegerField;
    ADOQuery1Price: TIntegerField;
    ADOQuery1Country: TWordField;
    ADOQuery1CalcField: TStringField;
    procedure AdvDBLookupComboBox1DrawProp(Sender: TObject; RowIndex,
      ColIndex: Integer; DBField: TField; Value: string; AFont: TFont;
      var AColor: TColor);
    procedure ADOQuery1CalcFieldGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ADOQuery1CalcFieldGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := Sender.DataSet.FieldByName('Brand').AsString + ' ' + sender.DataSet.FieldByName('Type').AsString;
end;

procedure TForm1.AdvDBLookupComboBox1DrawProp(Sender: TObject; RowIndex,
  ColIndex: Integer; DBField: TField; Value: string; AFont: TFont;
  var AColor: TColor);
begin
  if odd(RowIndex) then
    AColor := clInfoBk
  else
    AColor := clWhite;

  if (ColIndex = 2) then // the PK column
  begin
    if StrToInt(Value) > 200 then
    begin
      AFont.Color := clBlue;
      AFont.Style := [fsBold];
    end;
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  adoquery1.Active := true;
end;

end.
