unit uAddictSpellCheck;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvMemo, ad3ThesaurusBase, ad3Thesaurus, ad3SpellBase, ad3Spell,
  AdvMAddict, StdCtrls;

type
  TForm1 = class(TForm)
    AdvMemo1: TAdvMemo;
    AddictSpell: TAddictSpell3;
    Thesaurus: TThesaurus3;
    AdvMemoAddictChecker1: TAdvMemoAddictChecker;
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  advmemoaddictchecker1.checkalllines;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  advmemoaddictchecker1.correctalllines;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if checkbox1.checked then
    AdvMemoAddictChecker1.AutoCorrectType := acWordCorrect
  else
    AdvMemoAddictChecker1.AutoCorrectType := acNone;
end;

end.
