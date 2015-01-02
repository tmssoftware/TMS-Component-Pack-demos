{********************************************************************}
{ TAdvDBLookupComboBox demo                                          }
{ for Delphi 5,6,7,2005,2006 & C++Builder 5,6,2006                   }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2002 - 2013                                 }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit Ualcdemogrid;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, DB, DBTables, StdCtrls,
  AdvDBLookupComboBox, ExtCtrls, BaseGrid, AdvGrid, DBAdvGrid, frmctrllink, AdvObj
  {$IFDEF VER170}
  , XPMan
  {$ENDIF}
  {$IFDEF VER180}
  , XPMan
  {$ENDIF}

  ;

type
  TForm1 = class(TForm)
    Table1: TTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Table2: TTable;
    DBAdvGrid1: TDBAdvGrid;
    Table1OrderNo: TFloatField;
    Table1SaleDate: TDateTimeField;
    Table1ShipDate: TDateTimeField;
    Table1EmpNo: TIntegerField;
    Table1ShipToContact: TStringField;
    Table1ShipToAddr1: TStringField;
    Table1ShipToAddr2: TStringField;
    Table1ShipToCity: TStringField;
    Table1ShipToState: TStringField;
    Table1ShipToZip: TStringField;
    Table1ShipToCountry: TStringField;
    Table1ShipToPhone: TStringField;
    Table1ShipVIA: TStringField;
    Table1PO: TStringField;
    Table1Terms: TStringField;
    Table1PaymentMethod: TStringField;
    Table1ItemsTotal: TCurrencyField;
    Table1TaxRate: TFloatField;
    Table1Freight: TCurrencyField;
    Table1AmountPaid: TCurrencyField;
    Table1CompanyLookup: TStringField;
    Table1CustNo: TFloatField;
    FormControlEditLink1: TFormControlEditLink;
    AdvDBLookupComboBox3: TAdvDBLookupComboBox;
    procedure DBAdvGrid1GetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
    procedure FormControlEditLink1SetEditorValue(Sender: TObject;
      Grid: TAdvStringGrid; AValue: string);
    procedure FormControlEditLink1GetEditorValue(Sender: TObject;
      Grid: TAdvStringGrid; var AValue: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.DBAdvGrid1GetEditorType(Sender: TObject; ACol, ARow: Integer;
  var AEditor: TEditorType);
begin
  AEditor := edNormal;
  DBAdvGrid1.EditLink := nil;

  if (ACol = 2) then
  begin
    AEditor := edCustom;
    DBAdvGrid1.EditLink := FormControlEditLink1;
  end;

end;

procedure TForm1.FormControlEditLink1GetEditorValue(Sender: TObject;
  Grid: TAdvStringGrid; var AValue: string);
begin
  AValue := AdvDBLookupComboBox3.Text;
end;

procedure TForm1.FormControlEditLink1SetEditorValue(Sender: TObject;
  Grid: TAdvStringGrid; AValue: string);
begin
  AdvDBLookupComboBox3.Text := AValue;
end;

end.
