{********************************************************************}
{ TMS TAdvSmoothPanel Demo                                           }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2014                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit UDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvSmoothPanel, AdvSmoothExpanderPanel, AdvSmoothExpanderButtonPanel, AdvGDIP,
  ShellAPI;

type
  TForm65 = class(TForm)
    AdvSmoothExpanderButtonPanel1: TAdvSmoothExpanderButtonPanel;
    AdvSmoothExpanderButtonPanel2: TAdvSmoothExpanderButtonPanel;
    procedure FormCreate(Sender: TObject);
    procedure AdvSmoothExpanderButtonPanel1ButtonClick(Sender: TObject;
      ButtonIndex: Integer);
    procedure AdvSmoothExpanderButtonPanel2AnchorClick(Sender: TObject;
      Anchor: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form65: TForm65;

implementation

{$R *.dfm}
{$R Animals.res}

  procedure LoadFromRes(resname: string; picture: TAdvGDIPPicture);
  var
    rs: TResourceStream;
  begin
    rs := TResourceStream.Create(HInstance, resname, RT_RCDATA);
    picture.LoadFromStream(rs);
    rs.Free;
  end;

procedure TForm65.AdvSmoothExpanderButtonPanel1ButtonClick(Sender: TObject;
  ButtonIndex: Integer);
begin
  AdvSmoothExpanderButtonPanel1.Caption.Text := 'Tag Functions : ' + AdvSmoothExpanderButtonPanel1.Buttons[ButtonIndex].Caption + ' clicked !';
end;

procedure TForm65.AdvSmoothExpanderButtonPanel2AnchorClick(Sender: TObject;
  Anchor: string);
begin
  ShellExecute(0, 'Open', Pchar(Anchor), nil, nil, SW_NORMAL);
end;

procedure TForm65.FormCreate(Sender: TObject);
const
  fruits: array[0..11] of string = ('Apple', 'Strawberry', 'Banana', 'Cherry', 'Watermelon', 'Lime',
    'Grapefruit', 'Mango', 'Apricot' , 'Pear', 'Peach', 'Coconut');
var
  I: Integer;
begin
  AdvSmoothExpanderButtonPanel1.ButtonWidth := (AdvSmoothExpanderButtonPanel1.Width - (AdvSmoothExpanderButtonPanel1.ButtonHorizontalMargin * 2)) div 4;
  AdvSmoothExpanderButtonPanel1.ButtonHeight := (AdvSmoothExpanderButtonPanel1.Height - AdvSmoothExpanderButtonPanel1.ButtonVerticalMargin) div 3;
  for I := 0 to 11 do
  begin
    if I < 4 then
    begin
      with AdvSmoothExpanderButtonPanel1.Buttons.Add do
      begin
        Color := clYellow;
        Caption := fruits[I];
      end;
    end
    else if I < 8 then
    begin
      with AdvSmoothExpanderButtonPanel1.Buttons.Add do
      begin
        Color := clRed;
        Caption := fruits[I];
      end;
    end
    else if i < 12 then
    begin
      with AdvSmoothExpanderButtonPanel1.Buttons.Add do
      begin
        Color := clGreen;
        Caption := fruits[I];
      end;
    end;
  end;

  AdvSmoothExpanderButtonPanel2.ButtonWidth := (AdvSmoothExpanderButtonPanel1.Width - (AdvSmoothExpanderButtonPanel1.ButtonHorizontalMargin * 2)) div 3;
  AdvSmoothExpanderButtonPanel2.ButtonHeight := (AdvSmoothExpanderButtonPanel1.Height - AdvSmoothExpanderButtonPanel1.ButtonVerticalMargin - 10) div 2;
  for I := 0 to 5 do
  begin
    with AdvSmoothExpanderButtonPanel2.Buttons.Add do
    begin
      Randomize;
      Color := RGB(Random(255), Random(255), Random(255));
      LoadFromRes('animal'+inttostr(I + 1), Picture);
      BevelColor := clBlack;
    end;
  end;
end;

end.
