unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, BaseGrid, AdvGrid, DBAdvGrid;

type
  TForm1 = class(TForm)
    DBAdvGrid1: TDBAdvGrid;
    DBAdvGrid2: TDBAdvGrid;
    Table1: TTable;
    Table2: TTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Table2OrderNo: TFloatField;
    Table2CustNo: TFloatField;
    Table2SaleDate: TDateTimeField;
    Table2ShipDate: TDateTimeField;
    Table2EmpNo: TIntegerField;
    Table2ShipToContact: TStringField;
    Table2ShipToAddr1: TStringField;
    Table2ShipToAddr2: TStringField;
    Table2ShipToCity: TStringField;
    Table2ShipToState: TStringField;
    Table2ShipToZip: TStringField;
    Table2ShipToCountry: TStringField;
    Table2ShipToPhone: TStringField;
    Table2ShipVIA: TStringField;
    Table2PO: TStringField;
    Table2Terms: TStringField;
    Table2PaymentMethod: TStringField;
    Table2ItemsTotal: TCurrencyField;
    Table2TaxRate: TFloatField;
    Table2Freight: TCurrencyField;
    Table2AmountPaid: TCurrencyField;
    Table1CustNo: TFloatField;
    Table1Company: TStringField;
    Table1Addr1: TStringField;
    Table1Addr2: TStringField;
    Table1City: TStringField;
    Table1State: TStringField;
    Table1Zip: TStringField;
    Table1Country: TStringField;
    Table1Phone: TStringField;
    Table1FAX: TStringField;
    Table1TaxRate: TFloatField;
    Table1Contact: TStringField;
    Table1LastInvoiceDate: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
