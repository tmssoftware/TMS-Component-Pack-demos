{*************************************************************************}
{ TAdvStringGrid demo unit                                                }
{                                                                         }
{ written by TMS Software                                                 }
{            copyright © 1998-2011                                        }
{            Email : info@tmssoftware.Com                                 }
{            Web : http://www.tmssoftware.Com                             }
{                                                                         }
{ The source code is given as is. The author is not responsible           }
{ for any possible damage done due to the use of this code.               }
{ The component can be freely used in any application. The complete       }
{ source code remains property of the author and may not be distributed,  }
{ published, given or sold in any form as such. No parts of the source    }
{ code can be included in any other component or application without      }
{ written authorization of the author.                                    }
{*************************************************************************}
unit uasg46;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, AdvGrid, StdCtrls, BaseGrid, ComCtrls, ShellAPI, JPEG,
  ImgList, AsgPrev, AdvObj, XPMan;

type
  TForm1 = class(TForm)
    ImageList1: TImageList;
    asg: TAdvStringGrid;
    AdvPreviewDialog1: TAdvPreviewDialog;
    Button1: TButton;
    Button2: TButton;
    PrinterSetupDialog1: TPrinterSetupDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure mgridGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var AAlignment: TAlignment);
    procedure asgAnchorClick(Sender: TObject; ARow, ACol: Integer;
      Anchor: string; var AutoHandle: Boolean);
    procedure asgCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure asgGetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    picture: tpicture;
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Picture := TPicture.Create;
  Picture.LoadFromFile('slr.jpg');

  asg.RowCount := 25;
  asg.ColCount := 12;

  asg.MergeCells(1, 1, 2, 2);
  asg.MergeCells(1, 0, 2, 1);
  asg.MergeCells(0, 2, 1, 2);


  asg.Cells[1, 1] := '<p align="center"><font color="clred">This</font> is <b>bold</b></p>';
  asg.Cells[1, 0] := '<img src="idx:0"><font face="tahoma">This is <b>Tahoma</b></font>';

  asg.Cells[0, 2] := 'Fixed col'#13'merged';

  asg.MergeCells(2, 3, 2, 2);
  asg.Cells[2, 3] := 'Here we have the <a href="action">link</a>';
  asg.Colors[2, 3] := clYellow;

  asg.MergeCells(0, 8, asg.ColCount - 1, 1);
  asg.Cells[0, 8] := 'This is a fixed merged cell across the grid';

  asg.MergeCells(4, 2, 4, 6);


  asg.AddPicture(4, 2, Picture, True, ShrinkWithAspectRatio, 0, haLeft, vaTop);

  asg.MergeCells(1, 6, 2, 2);
  asg.Cells[1, 6] := 'Wordwrapped text in a merged cell displayed here';

  asg.MergeCells(1, 10, 3, 1);
  asg.AddCheckBox(1, 10, False, False);
  asg.Cells[1, 10] := 'Checkbox 1';
  asg.MergeCells(1, 11, 3, 1);
  asg.AddCheckBox(1, 11, True, False);
  asg.Cells[1, 11] := 'Checkbox 2';

  asg.Cells[0, 12] := 'Combo';

  asg.MergeCells(1, 12, 3, 1);
  asg.AddComboString('BMW');
  asg.AddComboString('Audi');
  asg.AddComboString('Porsche');
  asg.AddComboString('Ferrari');

end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  Picture.Free;
end;

procedure TForm1.mgridGetAlignment(Sender: TObject; ARow, ACol: Integer;
  var AAlignment: TAlignment);
begin
  AAlignment := taCenter;
end;

procedure TForm1.asgAnchorClick(Sender: TObject; ARow, ACol: Integer;
  Anchor: string; var AutoHandle: Boolean);
begin
  ShowMessage('Anchor clicked');
end;

procedure TForm1.asgCanEditCell(Sender: TObject; ARow, ACol: Integer;
  var CanEdit: Boolean);
begin
  CanEdit := (ARow > 5) and (ACol < 5);
end;

procedure TForm1.asgGetEditorType(Sender: TObject; ACol, ARow: Integer;
  var AEditor: TEditorType);
begin
  if (ACol = 1) and (ARow = 12) then
  begin
    AEditor := edComboList;
  end;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if PrinterSetupDialog1.Execute then
    asg.Print;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  AdvPreviewDialog1.Execute;
end;

end.
