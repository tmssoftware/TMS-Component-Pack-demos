unit ActUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TActPeriodForm = class(TForm)
    ComboBox1: TComboBox;
    Label7: TLabel;
    OKBtn: TButton;
    CancBtn: TButton;
    ComboBox2: TComboBox;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ActPeriodForm: TActPeriodForm;

implementation

{$R *.DFM}

end.
