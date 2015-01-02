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
unit uasg34;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ad3ThesaurusBase, ad3Thesaurus, ad3SpellBase, ad3Spell, ad3stringparser,
  ad3parserbase, ad3parseengine, Grids, AdvGrid, asgcheck, AsgAddictCheck, ExtCtrls,
  BaseGrid, AdvObj, XPMan;

type
  TForm1 = class(TForm)
    AddictSpell: TAddictSpell3;
    Thesaurus: TThesaurus3;
    AdvStringGrid1: TAdvStringGrid;
    AddictCheck: TAddictCheck;
    Button3: TButton;
    Config: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ConfigClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
  AdvStringGrid1.SaveFixedCells := False;
  AdvStringGrid1.Delimiter := ',';
  AdvStringGrid1.LoadFromCSV('.\spell.csv');
  AdvStringGrid1.AutoSizeColumns(False, 10);
  AdvStringGrid1.AutoSizeRows(False, 10);

  AddictSpell.InternalCustom.AddIgnore('TAdvStringGrid');

  AdvStringGrid1.CheckGrid(False);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  AddictCheck.ShowDialog := False;
  AddictCheck.UseMarkError := True;
  AddictCheck.UseCorrect := False;
  AdvStringGrid1.UnMarkInGrid(false);
  AdvStringGrid1.CheckGrid(false);
end;

procedure TForm1.ConfigClick(Sender: TObject);
begin
  AdvStringGrid1.UnMarkInGrid(False);

  case Config.ItemIndex of
    0: begin
        AddictCheck.ShowDialog := False;
        AddictCheck.AutoMarkError := True;
        AddictCheck.AutoCorrect := False;
      end;
    1: begin
        AddictCheck.ShowDialog := False;
        AddictCheck.AutoMarkError := False;
        AddictCheck.AutoCorrect := True;
      end;
    2: begin
        AddictCheck.ShowDialog := True;
        AddictCheck.AutoMarkError := False;
        AddictCheck.AutoCorrect := True;
      end;
    3: begin
        AddictCheck.ShowDialog := False;
        AddictCheck.AutoMarkError := False;
        AddictCheck.AutoCorrect := False;
      end;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  AddictCheck.ShowDialog := True;
  AddictCheck.UseMarkError := False;
  AddictCheck.UseCorrect := True;
  AdvStringGrid1.UnMarkInGrid(False);
  AdvStringGrid1.CheckGrid(False);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  AdvStringGrid1.SaveFixedCells := False;
  AdvStringGrid1.UnMarkInGrid(False);
  AdvStringGrid1.SaveToCSV('.\spell.csv');
end;

end.
