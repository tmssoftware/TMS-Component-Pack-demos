{*************************************************************************}
{ TAdvStringGrid demo unit                                                }
{                                                                         }
{ written by TMS Software                                                 }
{            copyright © 1998-2011                                        }
{            Email : info@tmssoftware.Com                                 }
{            Web : http://www.tmssoftware.Com                             }
{                                                                         }
{ The source code is given as is. The author is not responsible           }
{ for any possible damage done due to the use of this code.               }
{ The component can be freely used in any application. The complete       }
{ source code remains property of the author and may not be distributed,  }
{ published, given or sold in any form as such. No parts of the source    }
{ code can be included in any other component or application without      }
{ written authorization of the author.                                    }
{*************************************************************************}
unit uasg54;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, StdCtrls, asgprev, ImgList
{$IFDEF VER140}
  , Variants
{$ENDIF}
  , XPMan, AdvObj;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ImageList1: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1ControlComboList(Sender: TObject; ARow,
      ACol: Integer; CtrlID, CtrlType, CtrlVal: string;
      Values: TStringList; var Edit: Boolean; var DropCount: Integer);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure AdvStringGrid1ControlClick(Sender: TObject; ARow,
      ACol: Integer; CtrlID, CtrlType, CtrlVal: string);
    procedure AdvStringGrid1ControlEditDone(Sender: TObject; ARow,
      ACol: Integer; CtrlID, CtrlType, CtrlVal: string);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AddForm(ARow: Integer);
    procedure ClearForm(ARow: Integer);
    procedure FillForm(ARow: Integer);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  AddForm(1);
  FillForm(1);
  AddForm(2);
  FillForm(2);
end;

procedure TForm1.AdvStringGrid1ControlComboList(Sender: TObject; ARow,
  ACol: Integer; CtrlID, CtrlType, CtrlVal: string; Values: TStringList;
  var Edit: Boolean; var DropCount: Integer);
begin
  Values.Clear;
  if CtrlID = 'CO1' then
  begin
    Values.Add('MO');
    Values.Add('TU');
    Values.Add('WE');
    Values.Add('TH');
    Values.Add('FR');
    Values.Add('SA');
    Values.Add('SU');
    Edit := False; // combo dropdownlist
  end;

  if CtrlID = 'CO2' then
  begin
    Values.Add('VISA');
    Values.Add('AMEX');
    Values.Add('MASTERCARD');
    Values.Add('CASH');
    Values.Add('N/A');
    Edit := True; // combo dropdown edit
  end;
end;

procedure TForm1.AddForm(ARow: Integer);
begin
  with AdvStringGrid1 do
  begin
    Cells[1, ARow] := '<CONTROL TYPE="CHECK" WIDTH="15" ID="CK1"> <b>Patient information</b> :<BR>' +
      'Name : <CONTROL TYPE="EDIT" WIDTH="80" VALUE="" ID="ED1"> ' +
      'Prename : <CONTROL TYPE="EDIT" WIDTH="80" VALUE="" ID="ED2"> ' +
      '<CONTROL TYPE="BUTTON" WIDTH="80" VALUE="Clear" ID="BTN1"><BR><BR>' +
      '<IMG src="idx:0" align="middle"> Available : <CONTROL TYPE="COMBO" WIDTH="60" ID="CO1">  ' +
      '<IMG src="idx:1" align="middle"> Payment : <CONTROL TYPE="COMBO" WIDTH="80" VALUE="" ID="CO2"> ' +
      '<IMG src="idx:2" align="middle"> Last visit : <CONTROL TYPE="EDIT" WIDTH="80" VALUE="" ID="ED3">';
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  AdvStringGrid1.RowCount := AdvStringGrid1.RowCount + 1;
  AddForm(AdvStringGrid1.RowCount - 1);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FillForm(AdvStringGrid1.Row);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  ClearForm(AdvStringGrid1.Row);
end;

procedure TForm1.ClearForm(ARow: Integer);
begin
  with AdvStringGrid1 do
  begin
    ControlValues[1, ARow, 'CK1'] := 'FALSE';
    ControlValues[1, ARow, 'ED1'] := '';
    ControlValues[1, ARow, 'ED2'] := '';
    ControlValues[1, ARow, 'CO1'] := '';
    ControlValues[1, ARow, 'CO2'] := '';
    ControlValues[1, ARow, 'ED3'] := '';
  end;

end;

procedure TForm1.FillForm(ARow: Integer);
begin
  with AdvStringGrid1 do
  begin
    ControlValues[1, ARow, 'CK1'] := 'TRUE';
    ControlValues[1, ARow, 'ED1'] := 'Name' + IntToStr(ARow);
    ControlValues[1, ARow, 'ED2'] := 'PreName' + IntToStr(ARow);
    ControlValues[1, ARow, 'CO1'] := 'MO';
    ControlValues[1, ARow, 'CO2'] := 'VISA';
    ControlValues[1, ARow, 'ED3'] := DateToStr(Now + ARow);
  end;
end;

procedure TForm1.AdvStringGrid1ControlClick(Sender: TObject; ARow,
  ACol: Integer; CtrlID, CtrlType, CtrlVal: string);
begin
  if CtrlType = 'BUTTON' then
  begin
    Showmessage('Clear clicked');
    AdvStringGrid1.ControlValues[ACol, ARow, 'ED1'] := '';
    AdvStringGrid1.ControlValues[ACol, ARow, 'ED2'] := '';
  end;



end;

procedure TForm1.AdvStringGrid1ControlEditDone(Sender: TObject; ARow,
  ACol: Integer; CtrlID, CtrlType, CtrlVal: string);
begin
  if CtrlType = 'COMBO' then
    showmessage(ctrlval);
end;

end.
