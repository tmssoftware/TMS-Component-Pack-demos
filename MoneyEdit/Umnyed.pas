{********************************************************************}
{ TMONEYEDIT DEMO                                                    }
{ version 1.1                                                        }
{ for Delphi 4.0,5.0,6.0,7.0 & C++Builder 4.0,5.0,6.0                }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 1998-2004                                   }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit Umnyed;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, MoneyEdit;

type
  TForm1 = class(TForm)
    MoneyEdit1: TMoneyEdit;
    MoneyEdit2: TMoneyEdit;
    MoneyEdit3: TMoneyEdit;
    MoneyEdit4: TMoneyEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

end.
