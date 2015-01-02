{***************************************************************************}
{ TWebCopy demo                                                             }
{ for Delphi 5,6,7 & C++Builder 5,6                                         }
{ version 1.4                                                               }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2000 - 2004                                        }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{                                                                           }
{***************************************************************************}

unit Uwebc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  WebCopy, Grids, StdCtrls;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    WebCopy1: TWebCopy;
    Label1: TLabel;
    Button1: TButton;
    tgt: TEdit;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure WebCopy1FileDone(Sender: TObject; idx: Integer);
    procedure Button1Click(Sender: TObject);
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
 with stringgrid1 do
 begin
  cells[1,0]:='URL';
  cells[1,1]:='http://www.tmssoftware.com/ADVGRID1.ZIP';
  cells[1,2]:='http://www.tmssoftware.com/ADVGRID2.ZIP';
  cells[1,3]:='http://www.tmssoftware.com/ADVGRID3.ZIP';
  cells[1,4]:='http://www.tmssoftware.com/ADVGRID4.ZIP';
  cells[1,5]:='http://www.tmssoftware.com/ADVGRID5.ZIP';
 end;
end;

procedure TForm1.WebCopy1FileDone(Sender: TObject; idx: Integer);
begin
 stringgrid1.cells[0,idx+1]:='*';
end;

procedure TForm1.Button1Click(Sender: TObject);
var
 i:integer;
begin
 webcopy1.items.clear;
 for i:=1 to stringgrid1.rowcount-1 do
  begin
  stringgrid1.cells[0,i]:='';
  if stringgrid1.cells[1,i]<>'' then
   with webcopy1.items.add do
    begin
     url:=stringgrid1.cells[1,i];
     targetdir:=tgt.text;
    end;
  end;
 webcopy1.threadexecute;
end;

end.
