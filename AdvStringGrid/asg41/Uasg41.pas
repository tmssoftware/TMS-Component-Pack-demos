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
unit Uasg41;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, StdCtrls, Spin
{$IFDEF VER140}
  , Variants
{$ENDIF}
  , XPMan, AdvObj;

type
  TForm1 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    Button1: TButton;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AdvStringGrid1GetDisplText(Sender: TObject; ACol,
      ARow: Integer; var Value: string);
    procedure SpinEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  AdvStringGrid1.RandomFill(False, 1000);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  AdvStringGrid1.ClearRowSelect;
  AdvStringGrid1.RowSelect[2] := True;
  AdvStringGrid1.RowSelect[6] := True;
  AdvStringGrid1.RowSelect[10] := True;
end;

procedure TForm1.AdvStringGrid1GetDisplText(Sender: TObject; ACol,
  ARow: Integer; var Value: string);
var
  f: Double;
  err: Integer;
begin
  if ACol = 1 then
    Value := '<b>' + Value + '</b>';

  if (ACol = 2) and (ARow > 0) then
  begin
    Val(Value, f, err);
    f := f / 33;
    if SpinEdit1.Text <> '' then
      if SpinEdit1.Value > 0 then
        Value := Format('%.' + IntToStr(SpinEdit1.Value) + 'f', [f]);
  end;
end;

procedure TForm1.SpinEdit1Change(Sender: TObject);
begin
  AdvStringGrid1.Invalidate;
end;

end.
