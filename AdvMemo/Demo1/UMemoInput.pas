unit UMemoInput;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvMemo;

type
  TFMemoInput = class(TForm)
    AdvMemo1: TAdvMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMemoInput: TFMemoInput;

implementation

uses UAdvMemoDemo01;
{$R *.dfm}

end.
