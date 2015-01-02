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

unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, StdCtrls, ComCtrls, XPMan, AdvObj;

type
  TForm2 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    StatusBar1: TStatusBar;
    UpDown1: TUpDown;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure AdvStringGrid1ScrollCell(Sender: TObject; ACol, ARow,
      ScrollPosition, ScrollMin, ScrollMax: Integer);
    procedure UpDown1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure AdvStringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InitGrid;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.AdvStringGrid1ScrollCell(Sender: TObject; ACol, ARow,
  ScrollPosition, ScrollMin, ScrollMax: Integer);
begin
  StatusBar1.SimpleText := 'scroll: '+ inttostr(Acol)+':'+inttostr(ARow)+' position '+  inttostr(ScrollPosition)+' in range ['+inttostr(scrollmin)+'..'+inttostr(scrollmax)+']';
end;

procedure TForm2.AdvStringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var
  sp: TScrollProp;
begin
  if AdvStringgrid1.HasScrollBar(Acol,ARow) then
  begin
    sp := AdvStringgrid1.GetScrollProp(ACol,ARow);
    updown1.Min := 0;
    updown1.Max := sp.Range;
    updown1.Position := sp.Range - AdvStringgrid1.GetScrollPosition(ACol,ARow);
  end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  InitGrid;
  AdvStringGrid1.Col := 2;
  AdvStringGrid1.Row := 1;
end;

procedure TForm2.InitGrid;
var
  s: string;

begin
  AdvStringGrid1.RowCount := 4;
  advstringgrid1.Cells[1,0] := 'IDE';
  advstringgrid1.Cells[2,0] := 'Description';

  s := 'Delphi is the premier development environment for software developers and database application developers who need to rapidly deliver high performance and easy to maintain software applications.';
  s := s + '<ul><li>Increase your productivity with time saving IDE and tools</li>';
  s := s + '<li>Speed development with visual, drag-and-drop tools and powerful component library</li>';
  s := s + '<li>Easily connect with all you data sources and tiers</li>';
  s := s + '<li> Increase performance and productivity with the powerful Delphi language, a fast compiler and full Windows API access</li></ul><br>';
  s := s + 'Use the powerful Delphi IDE with its visual design surface, extensive component universe and powerful heterogeneous database framework to visually design and deliver applications in a fraction of the time.';
  s := s + 'The powerful Delphi language and compiler deliver high performance and access to all the power and speed of native Windows development. Delphi also provides a';
  s := s + 'comprehensive set of editing, refactoring, and debugging tools in a complete solution focused on making development faster and easier.';

  advstringgrid1.RowHeights[1] := 96;
  advstringgrid1.RowHeights[2] := 96;
  advstringgrid1.RowHeights[3] := 96;

  advstringgrid1.AddScrollBar(2,1,true);
  advstringgrid1.AddScrollBar(2,2,true);
  advstringgrid1.AddScrollBar(2,3,true);

  advstringgrid1.Cells[1,1] := 'Delphi';
  advstringgrid1.FontSizes[1,1] := 18;
  advstringgrid1.cells[2,1] := s;

  s := 'C++Builder gives you the best of both worlds - the power of the C and C++ languages and visual rapid application development.';
  s := s + '<ul><li>Rapidly build native Windows applications using the C++ language and libraries</li>';
  s := s + '<li>Speed development with visual drag-and-drop tools and a powerful component library</li>';
  s := s + '<li>Rapidly build data-driven applications that connect to all your data across multiple sources and tiers</li>';
  s := s + '<li>Increase your productivity with timesaving IDE and tools</li></ul>';
  s := s + 'The C++Builder development environment includes an advanced editor, debugger, unit testing, modeling, and a powerful compiler with early support for the upcoming C++0x standards.';
  s := s + ' Use the included libraries or your favorite C or C++ libraries to build scientific, engineering and other native Windows applications.';
  s := s + 'Then use the visual design surface and hundreds of included components to quickly create user interfaces and build database applications with heterogeneous database connectivity.';

  advstringgrid1.Cells[1,2] := 'C++Builder';
  advstringgrid1.FontSizes[1,2] := 18;
  advstringgrid1.cells[2,2] := s;


  s := 'Delphi Prism is the new, Visual Studio based solution that lets you use your existing Delphi programming skills to build .NET applications,';
  s := s + ' and take advantage of the latest.NET technologies such as WinForms, WPF, ASP.NET and LINQ. With Delphi Prism you can develop database applications';
  s := s + ' using familiar dbExpress functionality and .NET clients that connect to native DataSnap servers.';
  s := s + '<ul><li>REM ObjectsSpeed development of your applications on .NET for Windows, Linux and Mac</li>';
  s := s + '<li>Use your existing Delphi programming skills to build .NET applications</li>';
  s := s + '<li>Easily connect with all your data across multiple sources and tiers</li></ul>';
  s := s + 'Delphi Prism lets you:';
  s := s + '<ul><li>Decrease development time with a complete solution for .NET 3.5</li>';
  s := s + '<li>Push the envelope with a powerful, full-featured development language</li>';
  s := s + '<li>Work with all your data sources</li>';
  s := s + '<li>Gain flexibility by supporting .NET, Mac, and Linux</li>';
  s := s + 'Delphi Prism is also available as part of CodeGear RAD Studio 2009, including RAD Studio Architect with the database modeling and design capabilities of ER/Studio.';

  advstringgrid1.Cells[1,3] := 'Delphi Prism';
  advstringgrid1.FontSizes[1,3] := 18;
  advstringgrid1.cells[2,3] := s;
end;

procedure TForm2.UpDown1Changing(Sender: TObject; var AllowChange: Boolean);
begin
  if AdvStringGrid1.HasScrollBar(AdvStringgrid1.Col, AdvStringGrid1.Row) then
  begin
    AdvStringGrid1.SetScrollPosition(AdvStringgrid1.Col, AdvStringGrid1.Row, updown1.Max - updown1.Position);
  end;
end;

end.
