{********************************************************************}
{ TMS TAdvReflectionLabel Demo                                       }
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
  Dialogs, StdCtrls, AdvReflectionLabel, AdvOfficePager,
  AdvOfficePagerStylers, ImgList, PictureContainer, AdvReflectionImage,
  AdvGlassButton, ExtCtrls;

type
  TForm1 = class(TForm)
    AdvOfficePager1: TAdvOfficePager;
    AdvOfficePage1: TAdvOfficePage;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    AdvReflectionLabel1: TAdvReflectionLabel;
    AdvOfficePage2: TAdvOfficePage;
    AdvReflectionLabel2: TAdvReflectionLabel;
    ImageList1: TImageList;
    PictureContainer1: TPictureContainer;
    PictureContainer3: TPictureContainer;
    AdvReflectionImage1: TAdvReflectionImage;
    AdvReflectionLabel4: TAdvReflectionLabel;
    AdvReflectionLabel6: TAdvReflectionLabel;
    AdvReflectionLabel7: TAdvReflectionLabel;
    AdvReflectionImage2: TAdvReflectionImage;
    AdvReflectionLabel8: TAdvReflectionLabel;
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
