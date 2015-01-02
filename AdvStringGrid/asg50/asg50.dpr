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
program asg50;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  AdvGrid;

var
  asg: TAdvStringGrid;
  c,err: Integer;

begin
  { TODO -oUser -cConsole Main : Insert code here }

  if ParamCount <> 3 then
    writeln('Use : ASG50 "Sort column" "Input CSV-filename" "Output HTML-filename"')
  else
  begin
    val(paramstr(1),c,err);

    if err= 0 then
    begin

      asg := TAdvStringGrid.Create(nil);

      asg.SaveFixedCells := False;
      asg.LoadFromCSV(paramstr(2));
      asg.SortSettings.AutoFormat := False;
      asg.SortSettings.Column := c;

      asg.QuickSort(c,1,asg.RowCount - 1);

      asg.SaveToHTML(paramstr(3));

      asg.Free;
    end
    else
    begin
      writeln('Use : ASG50 "SortColumn" "Input CSV-filename" "Output CSV-filename"');
      writeln('with SorColumn valid zero based column index');
    end;

  end;


end.
