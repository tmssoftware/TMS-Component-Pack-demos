unit DispUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TUnitForm = class(TForm)
    ComboBox1: TComboBox;
    Label7: TLabel;
    OKBtn: TButton;
    CancBtn: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UnitForm: TUnitForm;

implementation

{$R *.DFM}

end.
