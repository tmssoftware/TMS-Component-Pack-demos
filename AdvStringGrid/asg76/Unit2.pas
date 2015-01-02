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

unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Grids, BaseGrid, AdvGrid, AdvObj, xpman;

type
  TForm2 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure AdvStringGrid1CellBalloon(Sender: TObject; ACol, ARow: Integer;
      var ATitle, AText: string; var AIcon: Integer);
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1CellValidate(Sender: TObject; ACol, ARow: Integer;
      var Value: string; var Valid: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.AdvStringGrid1CellBalloon(Sender: TObject; ACol, ARow: Integer;
  var ATitle, AText: string; var AIcon: Integer);
begin
  if (acol = 1) and (arow = 1) then
  begin
    ATitle := 'Hello';
    AText := 'I am cell 1,1';
  end;
end;

procedure TForm2.AdvStringGrid1CellValidate(Sender: TObject; ACol,
  ARow: Integer; var Value: string; var Valid: Boolean);
begin
  if length(value) < 3 then
  begin
    advstringgrid1.InvalidEntryTitle := 'Input error';
    Advstringgrid1.InvalidEntryText := 'Entry not sufficiently long';
    Valid := false;
  end;

  if length(value) > 5 then
  begin
    advstringgrid1.InvalidEntryTitle := 'Input error';
    Advstringgrid1.InvalidEntryText := 'Entry is too long';
    Valid := false;
  end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  advstringgrid1.Options :=  advstringgrid1.Options+ [goEditing];
  advstringgrid1.AddBalloon(2,2,'Title A','Cell 2,2 is here', biError);
  advstringgrid1.AddBalloon(3,3,'Title B','Cell 3,3 is here', biWarning);
end;

end.
