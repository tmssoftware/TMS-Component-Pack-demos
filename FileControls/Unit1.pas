{********************************************************************}
{ FileControls DEMO application                                      }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2002-2012                                   }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl, FlCtrlEx;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    FileListBoxEx1: TFileListBoxEx;
    DirectoryListBoxEx1: TDirectoryListBoxEx;
    Label2: TLabel;
    CheckFileListBoxEx1: TCheckFileListBoxEx;
    CheckDirectoryListBoxEx1: TCheckDirectoryListBoxEx;
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

{$R *.dfm}

end.
 