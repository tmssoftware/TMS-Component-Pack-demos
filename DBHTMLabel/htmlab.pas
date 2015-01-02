{********************************************************************}
{ TDBHTMLABEL DEMO                                                   }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 1998-2012                                   }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit htmlab;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Mask, DBCtrls, htmlabel, dbhtmlab, ExtCtrls,
  Menus, ImgList, Grids, DBGrids;

type
  TForm1 = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DataSource1: TDataSource;
    Table1: TTable;
    DBNavigator1: TDBNavigator;
    DBHTMLabel2: TDBHTMLabel;
    Table2: TTable;
    DataSource2: TDataSource;
    DBHTMLabel1: TDBHTMLabel;
    DBNavigator2: TDBNavigator;
    ImageList1: TImageList;
    procedure DBHTMLabel2AnchorClick(Sender: TObject; Anchor: String);
    procedure DBHTMLabel2TransformData(Sender: TObject; Tag: String;
      var Data: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.DBHTMLabel2AnchorClick(Sender: TObject; Anchor: String);
begin
 showmessage('Dial : '+anchor);
end;

procedure TForm1.DBHTMLabel2TransformData(Sender: TObject; Tag: String;
  var Data: String);
begin
  if Uppercase(Tag) = 'COUNTRY' then
  begin
    if Data = 'US' then
      Data := Data + ' <img src="idx:0">'
    else
      Data := Data + ' <img src="idx:1">';
  end;
end;

end.
