unit Alarm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TAlarmForm = class(TForm)
    CBActive: TCheckBox;
    Label1: TLabel;
    EdMins: TEdit;
    Label2: TLabel;
    OKBtn: TButton;
    CancBtn: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AlarmForm: TAlarmForm;

implementation

{$R *.DFM}

end.
