{********************************************************************}
{ TMS TAdvSmoothDock Demo                                            }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2014                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

 unit UDemo;

interface

uses
  Windows, ExtCtrls, Controls, StdCtrls, ComCtrls, Classes, AdvSmoothDock, Forms;

type
  TForm86 = class(TForm)
    AdvSmoothDock1: TAdvSmoothDock;
    RichEdit1: TRichEdit;
    ListBox1: TListBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Timer2: TTimer;
    Timer1: TTimer;
    procedure AdvSmoothDock1ItemClick(Sender: TObject; ItemIndex: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ClearStatus;
  end;

var
  Form86: TForm86;
  time, clickeditem: integer;

implementation

{$R *.dfm}

procedure TForm86.AdvSmoothDock1ItemClick(Sender: TObject; ItemIndex: Integer);
begin
  case ItemIndex of
  0,1,2,3,4:
  begin
    Timer1.Enabled := true;
    time := 0;
    clickeditem := ItemIndex;
    AdvSmoothDock1.Items[clickeditem].Jump := true;
  end;
  end;

  case ItemIndex of
  0: RichEdit1.CutToClipboard;
  1: RichEdit1.PasteFromClipboard;
  2: RichEdit1.CopyToClipboard;
  3: ListBox1.Items.Add(RichEdit1.SelText);
  4: RichEdit1.Lines.Clear;
  5:
  begin
    with AdvSmoothDock1.ItemAppearance.ProgressFill do
    begin
      Opacity := 255;
      OpacityTo := 255;
      BorderOpacity := 255;
      Timer2.Enabled := true;
    end;
    AdvSmoothDock1.Items[5].ProgressPosition := 0;
    AdvSmoothDock1.Items[5].StatusIndicator.Visible := not AdvSmoothDock1.Items[5].StatusIndicator.Visible;
  end;
  7:
  begin
    AdvSmoothDock1.Position := dpBottom;
    AdvSmoothDock1.Align := alBottom;
    ClearStatus;
    AdvSmoothDock1.Items[7].StatusIndicator.Visible := true;
  end;
  8:
  begin
    AdvSmoothDock1.Position := dpTop;
    AdvSmoothDock1.Align := alTop;
    ClearStatus;
    AdvSmoothDock1.Items[8].StatusIndicator.Visible := true;
  end;
  9:
  begin
    AdvSmoothDock1.Position := dpRight;
    AdvSmoothDock1.Align := alRight;
    ClearStatus;
    AdvSmoothDock1.Items[9].StatusIndicator.Visible := true;
  end;
  10:
  begin
    AdvSmoothDock1.Position := dpLeft;
    AdvSmoothDock1.Align := alLeft;
    ClearStatus;
    AdvSmoothDock1.Items[10].StatusIndicator.Visible := true;
  end;
  end;

  RichEdit1.TabStop := true;
  RichEdit1.SetFocus;
end;

procedure TForm86.ClearStatus;
var
  i: integer;
begin
  for I := 7 to AdvSmoothDock1.Items.Count - 1 do
    AdvSmoothDock1.Items[I].StatusIndicator.Visible := false;
end;

procedure TForm86.FormCreate(Sender: TObject);
begin
  AdvSmoothDock1.Items[8].StatusIndicator.Visible := true;
end;

procedure TForm86.Timer1Timer(Sender: TObject);
var
  i: integer;
begin
  if time >= 3 then
  begin
    Timer1.Enabled := false;
    for I := 0 to AdvSmoothDock1.Items.Count - 1 do
      AdvSmoothDock1.Items[I].Jump := false;
  end;
  Inc(time);
end;

procedure TForm86.Timer2Timer(Sender: TObject);
begin
  with AdvSmoothDock1.ItemAppearance.ProgressFill do
  begin
    if (Opacity <= 0) or (OpacityTo <= 0) then
    begin
      Timer2.Enabled := false;
      AdvSmoothDock1.Items[5].ProgressPosition := 0;
      Opacity := 0;
      OpacityTo := 0;
      BorderOpacity := 0;
      AdvSmoothDock1.Items[5].StatusIndicator.Visible := not AdvSmoothDock1.Items[5].StatusIndicator.Visible;
    end
    else if AdvSmoothDock1.Items[5].ProgressPosition >= AdvSmoothDock1.Items[5].ProgressMaximum then
    begin
      Opacity := Opacity - 15;
      OpacityTo := OpacityTo - 15;
      BorderOpacity := BorderOpacity - 15;
    end
    else
     AdvSmoothDock1.Items[5].ProgressPosition := AdvSmoothDock1.Items[5].ProgressPosition + 2;
  end;
end;

end.
