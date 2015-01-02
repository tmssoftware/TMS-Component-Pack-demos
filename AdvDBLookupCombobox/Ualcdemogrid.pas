{********************************************************************}
{ TAdvDBLookupComboBox demo                                          }
{ for Delphi 5,6,7,2005,2006 & C++Builder 5,6,2006                   }
{ version 1.5                                                        }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2002 - 2006                                 }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit Ualcdemogrid;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, DB, DBTables, StdCtrls,
  AdvDBLookupComboBox, ExtCtrls
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
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    AdvDBLookupComboBox1: TAdvDBLookupComboBox;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBNavigator1: TDBNavigator;
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
