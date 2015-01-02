{********************************************************************}
{ TMS TAdvSmoothImageListBox Demo                                    }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2014                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit UDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, AdvSmoothImageListBox, StdCtrls, AdvSmoothEdit,
  AdvSmoothEditButton, AdvSmoothImageListBoxPicker, DBTables, Vcl.Mask;

type
  TForm131 = class(TForm)
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    AdvSmoothImageListBox1: TAdvSmoothImageListBox;
    Edit1: TEdit;
    Label1: TLabel;
    AdvSmoothImageListBoxPicker1: TAdvSmoothImageListBoxPicker;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form131: TForm131;

implementation

{$R *.dfm}

procedure TForm131.Edit1Change(Sender: TObject);
begin
  AdvSmoothImageListBox1.Highlight(false, Edit1.Text);
end;

procedure TForm131.FormCreate(Sender: TObject);
var
  s: TStream;
  blob: TBlobField;
begin
  ADOTable1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+ ExtractFilePath(Application.ExeName) +'DB\Database.mdb;Persist Security Info=False';
  ADOTable1.Active := true;
  ADOTable1.First;
  while not ADOTable1.Eof do
  begin
    with AdvSmoothImageListBox1.Items.Add do
    begin
      Caption.Text := '<b>Brand: </b>' + ADOTable1.FieldByName('Brand').AsString + '<br>' +
                      '<b>CC: </b>' + ADOTable1.FieldByName('CC').AsString + '<br>' +
                      '<b>Model: </b>' + ADOTable1.FieldByName('Model').AsString + '<br>' +
                      '<b>Price: </b>' + ADOTable1.FieldByName('Price').AsString + '€';

      Caption.Location := cpCenterLeft;
      Caption.Font.Size := 10;

      Hint := ADOTable1.FieldByName('Brand').AsString;

      blob := ADOTable1.FieldByName('Image') as TBlobField;
      s := ADOTable1.CreateBlobStream(blob, bmRead);
      try
        s.Position := 0;
        Image.LoadFromStream(s);
      finally
        s.Free;
      end;
    end;

    with AdvSmoothImageListBoxPicker1.ListBox.Items.Add do
    begin
      Caption.Text := ADOTable1.FieldByName('Brand').AsString+ '  ' + ADOTable1.FieldByName('Model').AsString;

      Caption.Location := cpCenterLeft;
      Caption.Font.Size := 10;

      Hint := ADOTable1.FieldByName('Brand').AsString;      

      blob := ADOTable1.FieldByName('Image') as TBlobField;
      s := ADOTable1.CreateBlobStream(blob, bmRead);
      try
        s.Position := 0;
        Image.LoadFromStream(s);
      finally
        s.Free;
      end;
    end;

    ADOTable1.Next;
  end;

  AdvSmoothImageListBoxPicker1.ListBox.Items.Sort;

  AdvSmoothImageListBox1.Footer.Caption := ADOTable1.TableName + ' [' + inttostr(AdvSmoothImageListBox1.Items.Count) +' Records]';

  AdvSmoothImageListBoxPicker1.ListBox.Footer.Caption := AdvSmoothImageListBox1.Footer.Caption;
end;

end.
