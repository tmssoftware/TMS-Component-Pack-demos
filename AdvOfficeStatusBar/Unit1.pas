{********************************************************************}
{ TMS TAdvOfficeStatusBar Demo                                       }
{                                                                    }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2012                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, ImgList, AdvOfficeHint,
  AdvToolBar, AdvToolBarStylers;

type
  TForm1 = class(TForm)
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    ImageList1: TImageList;
    AdvOfficeHint1: TAdvOfficeHint;
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
