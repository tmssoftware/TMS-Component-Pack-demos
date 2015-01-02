unit DLLUnit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TDLLForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DLLForm3: TDLLForm3;

implementation

{$R *.dfm}

procedure TDLLForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
