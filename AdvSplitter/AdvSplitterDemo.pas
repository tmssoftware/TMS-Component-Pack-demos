{********************************************************************}
{ TMS TAdvSplitter Demo                                              }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2012                                        }
{            Email : info@tmssoftware.com                            }
{            Website : http://www.tmssoftware.com                    }
{********************************************************************}

unit AdvSplitterDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, AdvSplitter, StdCtrls, ActnList, AdvOfficeImage,
  AdvOfficePager, AdvGroupBox, AdvOfficePagerStylers, AdvAppStyler, AdvStyleIF;

type
  TForm2 = class(TForm)
    AdvSplitter2: TAdvSplitter;
    Panel3: TPanel;
    Panel4: TPanel;
    AdvSplitter3: TAdvSplitter;
    Time: TAdvOfficePager;
    AdvOfficePage1: TAdvOfficePage;
    AdvOfficePage2: TAdvOfficePage;
    AdvOfficeImage2: TAdvOfficeImage;
    AdvOfficeImage1: TAdvOfficeImage;
    AdvOfficeImage3: TAdvOfficeImage;
    Panel5: TPanel;
    AdvOfficePager1: TAdvOfficePager;
    AdvOfficePage3: TAdvOfficePage;
    AdvOfficePager2: TAdvOfficePager;
    AdvOfficePage4: TAdvOfficePage;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    ComboBox1: TComboBox;
    AdvFormStyler1: TAdvFormStyler;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
  0: begin AdvOfficePagerOfficeStyler1.Style := psOffice2003Blue; AdvFormStyler1.Style := tsOffice2003Blue; end;
  1: begin AdvOfficePagerOfficeStyler1.Style := psOffice2003Silver; AdvFormStyler1.Style := tsOffice2003Silver;   end;
  2: begin AdvOfficePagerOfficeStyler1.Style := psOffice2003Olive; AdvFormStyler1.Style := tsOffice2003Olive; end;
  3: begin AdvOfficePagerOfficeStyler1.Style := psOffice2007Luna; AdvFormStyler1.Style := tsOffice2007Luna; end;
  4: begin AdvOfficePagerOfficeStyler1.Style := psOffice2007Silver; AdvFormStyler1.Style := tsOffice2007Silver; end;
  5: begin AdvOfficePagerOfficeStyler1.Style := psOffice2007Obsidian; AdvFormStyler1.Style := tsOffice2007Obsidian; end;
  end;
end;

end.
