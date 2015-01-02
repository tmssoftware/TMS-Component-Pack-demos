{********************************************************************}
{ TMS TDBAdvCardList Demo                                            }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2012                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit UDBAdvCardList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, AdvCardList, DBAdvCardList, StdCtrls, Grids, DBGrids,
  ExtCtrls, DBCtrls, ComCtrls, Buttons, AdvCardListStyler, JPEG, Mask
  {$IFDEF VER150}
  , XPMan
  {$ENDIF}
  {$IFDEF VER170}
  , XPMan
  {$ENDIF}
  ;

type
  TForm1 = class(TForm)
    Table2: TTable;
    DataSource2: TDataSource;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    AdvCardListStyler2: TAdvCardListStyler;
    DBAdvCardList2: TDBAdvCardList;
    DBGrid2: TDBGrid;
    Splitter1: TSplitter;
    Table2SpeciesNo: TFloatField;
    Table2Category: TStringField;
    Table2Common_Name: TStringField;
    Table2SpeciesName: TStringField;
    Table2Lengthcm: TFloatField;
    Table2Length_In: TFloatField;
    Table2Notes: TMemoField;
    Table2Graphic: TGraphicField;
    AdvButtonsBar1: TAdvButtonsBar;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Table2.Active := not Table2.Active;
end;

end.
