{********************************************************************}
{ TMS TAdvMessagebox Demo                                            }
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
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    BtnTMS: TButton;
    BtnWindows: TButton;
    Label1: TLabel;
    edCaption: TEdit;
    Label2: TLabel;
    cbIcon: TComboBox;
    Label3: TLabel;
    MemoInfo: TMemo;
    Label4: TLabel;
    cbButtons: TComboBox;
    Label5: TLabel;
    lbresults: TLabel;
    procedure BtnWindowsClick(Sender: TObject);
    procedure BtnTMSClick(Sender: TObject);
  private
    Fmbtitle: string;
    FBoxInformation: string;
    FBoxflags: integer;
    { Private declarations }
    procedure MakeDialog(id: string);
    procedure Setmbtitle(const Value: string);
    procedure SetBoxInformation(const Value: string);
    procedure SetBoxflags(const Value: integer);
  public
    { Public declarations }

    property BoxTitle:  string read Fmbtitle write Setmbtitle;
    property BoxInformation: string read FBoxInformation write SetBoxInformation;
    property Boxflags:  integer read FBoxflags write SetBoxflags;
  end;

var
  Form1: TForm1;

implementation

uses
  TaskDialog;

{$R *.dfm}

const
  MB_CANCELTRYCONTINUE = $00000006;
  iconlist: array[1..8] of integer =
      (MB_ICONEXCLAMATION,
       MB_ICONWARNING,
       MB_ICONINFORMATION,
       MB_ICONASTERISK,
       MB_ICONQUESTION,
       MB_ICONSTOP,
       MB_ICONERROR,
       MB_ICONHAND);
  btnlist: array[1..7] of integer =
    ( MB_ABORTRETRYIGNORE,
      MB_CANCELTRYCONTINUE,
      MB_OK,
      MB_OKCANCEL,
      MB_RETRYCANCEL,
      MB_YESNO,
      MB_YESNOCANCEL);



// Create dialog fields for the messagebox
procedure TForm1.MakeDialog(id: string);
var
  i: Integer;
begin
  // make box fields from ui
  BoxTitle := edCaption.text + ' ('+id+')';           // title
  BoxInformation := memoInfo.Lines[0];  // info
  for i := 1 to memoInfo.Lines.count - 1 do
    BoxInformation := BoxInformation + #10+MemoInfo.Lines[i];
  BoxFlags := 0;
  if cbIcon.ItemIndex > 0 then
    BoxFlags := BoxFlags or IconList[cbIcon.ItemIndex];
  if cbButtons.ItemIndex > 0 then
    BoxFlags := boxFlags or btnlist[cbButtons.itemindex];
end;

procedure TForm1.BtnTMSClick(Sender: TObject);
var
  res:  integer;
begin
  MakeDialog('TMS');
  res := AdvMessagebox(0,pchar(BoxInformation), pchar(BoxTitle), BoxFlags);
  lbResults.caption := IntToStr(res);
end;

procedure TForm1.BtnWindowsClick(Sender: TObject);
var
  res:  integer;
begin
  MakeDialog('WINDOWS');
  res := Messagebox(0,pchar(BoxInformation),pchar(BoxTitle),BoxFlags);
  lbResults.caption := InttoStr(res);
end;


procedure TForm1.SetBoxflags(const Value: integer);
begin
  FBoxflags := Value;
end;

procedure TForm1.SetBoxInformation(const Value: string);
begin
  FBoxInformation := Value;
end;

procedure TForm1.Setmbtitle(const Value: string);
begin
  Fmbtitle := Value;
end;

end.
