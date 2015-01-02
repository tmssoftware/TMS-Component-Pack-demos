{********************************************************************}
{ TMS TAdvSmoothTimeLine Demo                                        }
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
  Dialogs, AdvSmoothTimeLine, ImgList, StdCtrls, ComCtrls, ExtCtrls;

type
  TForm235 = class(TForm)
    ImageList1: TImageList;
    AdvSmoothTimeLine1: TAdvSmoothTimeLine;
    Panel1: TPanel;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    Button1: TButton;
    ComboBox1: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form235: TForm235;

implementation

{$R *.dfm}

procedure TForm235.Button1Click(Sender: TObject);
begin
  AdvSmoothTimeLine1.BeginUpdate;
  with AdvSmoothTimeLine1.TimeLineIndicators.Add do
  begin
    if Edit1.Text <> '' then
      Annotation := Edit1.Text
    else
      Annotation := 'Empty Event';

    AnnotationPosition := TAdvSmoothTimeLineBarAnnotationPosition(ComboBox1.ItemIndex);
    Position := DateTimePicker1.DateTime;
  end;
  AdvSmoothTimeLine1.EndUpdate;
end;

procedure TForm235.FormCreate(Sender: TObject);
begin
  AdvSmoothTimeLine1.TimeLineIndicators[0].Annotation := 'The Boy Scouts of America'+#13#10+'is incorporated by William D. Boyce';
  AdvSmoothTimeLine1.TimeLineIndicators[1].Annotation := 'The United States Senate rejects the Treaty'+ #13#10 + 'of Versailles for the second time' + #13#10 + '(first time was on November 19, 1919).';
  AdvSmoothTimeLine1.TimeLineIndicators[2].Annotation := 'Start World War II';
  AdvSmoothTimeLine1.TimeLineIndicators[3].Annotation := 'End World War II';
  AdvSmoothTimeLine1.TimeLineIndicators[4].Annotation := 'Apollo 11, First Landing on the moon'+#13#10+'July 24, 1969'+#13#10+'16:50:35 UTC'+#13#10+'13°19′N 169°9′W';
  AdvSmoothTimeLine1.TimeLineIndicators[5].Annotation := 'XHTML 1.0 becomes a' +#13#10+'World Wide Web Consortium'+#13#10+'(W3C) Recommendation';
end;

end.
