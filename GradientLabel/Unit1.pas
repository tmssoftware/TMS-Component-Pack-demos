{********************************************************************}
{ TGradientLabel DEMO application                                    }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2003-2012                                   }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, GradientLabel;

type
  TForm1 = class(TForm)
    GradientLabel1: TGradientLabel;
    GradientLabel4: TGradientLabel;
    GradientLabel8: TGradientLabel;
    GradientLabel9: TGradientLabel;
    GradientLabel10: TGradientLabel;
    GradientLabel11: TGradientLabel;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
