{********************************************************************}
{ THTMLTreeList DEMO application                                     }
{ version 1.0                                                        }
{ for Delphi 4.0,5.0,6.0,7.0 & C++Builder 4.0,5.0,6.0                }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2002-2004                                   }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}


unit Uhtmltl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, HTMLTreeList, StdCtrls, ShellApi, ImgList;

type
  TForm1 = class(TForm)
    HTMLTreeList1: THTMLTreeList;
    ImageList1: TImageList;
    StatusBar1: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure HTMLTreeList1AnchorEnter(Sender: TObject; Node: TTreeNode;
      anchor: String);
    procedure HTMLTreeList1AnchorExit(Sender: TObject; Node: TTreeNode;
      anchor: String);
    procedure HTMLTreeList1AnchorClick(Sender: TObject; Node: TTreeNode;
      anchor: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
 htmltreelist1.loadfromfile('cars.tl');
end;

procedure TForm1.HTMLTreeList1AnchorEnter(Sender: TObject; Node: TTreeNode;
  anchor: String);
begin
 statusbar1.simpletext:=anchor;
end;

procedure TForm1.HTMLTreeList1AnchorExit(Sender: TObject; Node: TTreeNode;
  anchor: String);
begin
 statusbar1.simpletext:='';
end;

procedure TForm1.HTMLTreeList1AnchorClick(Sender: TObject; Node: TTreeNode;
  anchor: String);
begin
 shellexecute(0,'open',pchar(anchor),nil,nil,SW_NORMAL);
end;

end.
