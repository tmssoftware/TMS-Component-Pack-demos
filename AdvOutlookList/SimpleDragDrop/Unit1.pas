{********************************************************************}
{ TMS TAdvOutlookList Demo                                           }
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
  Dialogs, StdCtrls, AdvOutlookList, ImgList, OutLookGroupedList, ActiveX, shlObj,
  AxCtrls, ShellAPI;

type
  TForm1 = class(TForm)
    ImageList1: TImageList;
    AdvOutlookList: TAdvOutlookList;
    AdvOutlookList1: TAdvOutlookList;
    procedure LoadData;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.LoadData;
var
  olg: TOutlookGroup;
  sl: TStrings;
begin
  olg := advoutlooklist.AddGroup('Business');

  sl := AdvOutlookList.AddItem(olg);
  sl.Add('1');
  sl.Add('Make changes to component');

  sl := AdvOutlookList.AddItem(olg);
  sl.Add('0');
  sl.Add('Develop the website specifications');

  sl := AdvOutlookList.AddItem(olg);
  sl.Add('1');
  sl.Add('Send the notification email');

  olg := advoutlooklist.AddGroup('Delphi VCL');

  sl := AdvOutlookList.AddItem(olg);
  sl.Add('0');
  sl.Add('Make the read only example');

  sl := AdvOutlookList.AddItem(olg);
  sl.Add('1');
  sl.Add('Use the flag-picture from Outlook');

  sl := AdvOutlookList.AddItem(olg);
  sl.Add('1');
  sl.Add('Use the two view modes');

  sl := AdvOutlookList.AddItem(olg);
  sl.Add('0');
  sl.Add('Display the two text lines in the line for example');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  LoadData;
  advoutlooklist1.AddGroup('Business');
  advoutlooklist1.AddGroup('Delphi VCL');
end;

end.
