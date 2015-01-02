{*************************************************************************}
{ TPlanner demo application                                               }
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
unit Uplanevents;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, planner, XPMan, ImgList
  {$IFDEF VER120}, ImgList {$ENDIF}
  {$IFDEF VER130}, ImgList {$ENDIF}
  {$IFDEF VER140}, ImgList {$ENDIF}
  ;

type
  TForm1 = class(TForm)
    DayPlanner: TPlanner;
    Splitter1: TSplitter;
    ListBox1: TListBox;
    ImageList1: TImageList;
    procedure DayPlannerHeaderClick(Sender: TObject; SectionIdx: Integer);
    procedure DayPlannerHeaderRightClick(Sender: TObject;
      SectionIdx: Integer);
    procedure DayPlannerItemAnchorClick(Sender: TObject;
      Item: TPlannerItem; Anchor: String);
    procedure DayPlannerItemDblClick(Sender: TObject; Item: TPlannerItem);
    procedure DayPlannerItemDelete(Sender: TObject; Item: TPlannerItem);
    procedure DayPlannerItemEndEdit(Sender: TObject; Item: TPlannerItem);
    procedure DayPlannerItemEnter(Sender: TObject; Item: TPlannerItem);
    procedure DayPlannerItemExit(Sender: TObject; Item: TPlannerItem);
    procedure DayPlannerItemHint(Sender: TObject; Item: TPlannerItem;
      var hint: String);
    procedure DayPlannerItemImageClick(Sender: TObject; Item: TPlannerItem;
      ImageIdx: Integer);
    procedure DayPlannerItemInsert(Sender: TObject; position, fromSel,
      fromSelPrecis, toSel, toSelPrecis: Integer);
    procedure DayPlannerItemLeftClick(Sender: TObject; Item: TPlannerItem);
    procedure DayPlannerItemMove(Sender: TObject; Item: TPlannerItem;
      fromBegin, fromEnd, fromPos, toBegin, toEnd, toPos: Integer);
    procedure DayPlannerItemRightClick(Sender: TObject;
      Item: TPlannerItem);
    procedure DayPlannerItemSelChange(Sender: TObject; Item: TPlannerItem);
    procedure DayPlannerItemSelect(Sender: TObject; Item: TPlannerItem);
    procedure DayPlannerItemSize(Sender: TObject; Item: TPlannerItem;
      position, fromBegin, fromEnd, toBegin, toEnd: Integer);
    procedure DayPlannerItemStartEdit(Sender: TObject; Item: TPlannerItem);
    procedure DayPlannerPlannerDblClick(Sender: TObject; position, fromSel,
      fromSelPrecis, toSel, toSelPrecis: Integer);
    procedure DayPlannerPlannerKeyPress(Sender: TObject; var key: Char;
      position, fromSel, fromSelPrecis, toSel, toSelPrecis: Integer);
    procedure DayPlannerPlannerLeftClick(Sender: TObject; position,
      fromSel, fromSelPrecis, toSel, toSelPrecis: Integer);
    procedure DayPlannerPlannerRightClick(Sender: TObject; position,
      fromSel, fromSelPrecis, toSel, toSelPrecis: Integer);
    procedure DayPlannerItemAnchorEnter(Sender: TObject;
      Item: TPlannerItem; Anchor: String);
    procedure DayPlannerItemAnchorExit(Sender: TObject; Item: TPlannerItem;
      Anchor: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.DayPlannerHeaderClick(Sender: TObject;
  SectionIdx: Integer);
begin
 listbox1.items.add('Left clicked header section : '+inttostr(sectionidx));
end;

procedure TForm1.DayPlannerHeaderRightClick(Sender: TObject;
  SectionIdx: Integer);
begin
 listbox1.items.add('Right clicked header section : '+inttostr(sectionidx));
end;

procedure TForm1.DayPlannerItemAnchorClick(Sender: TObject;
  Item: TPlannerItem; Anchor: String);
begin
 listbox1.items.add('Clicked anchor : '+anchor+' of item : '+item.name);
end;

procedure TForm1.DayPlannerItemDblClick(Sender: TObject;
  Item: TPlannerItem);
begin
 listbox1.items.add('Double clicked on item : '+item.name);
end;

procedure TForm1.DayPlannerItemDelete(Sender: TObject; Item: TPlannerItem);
begin
 listbox1.items.add('Delete of item : '+item.name);
end;

procedure TForm1.DayPlannerItemEndEdit(Sender: TObject;
  Item: TPlannerItem);
begin
 listbox1.items.add('End of editing in item : '+item.name);
end;

procedure TForm1.DayPlannerItemEnter(Sender: TObject; Item: TPlannerItem);
begin
 listbox1.items.add('Mouse entered in item : '+item.name);
end;

procedure TForm1.DayPlannerItemExit(Sender: TObject; Item: TPlannerItem);
begin
 listbox1.items.add('Mouse exit on item : '+item.name);
end;

procedure TForm1.DayPlannerItemHint(Sender: TObject; Item: TPlannerItem;
  var hint: String);
begin
 listbox1.items.add('Item hint : '+item.name);
end;

procedure TForm1.DayPlannerItemImageClick(Sender: TObject;
  Item: TPlannerItem; ImageIdx: Integer);
begin
 listbox1.items.add('Item image click of image : '+inttostr(imageidx)+' on item : '+item.name);
end;

procedure TForm1.DayPlannerItemInsert(Sender: TObject; position, fromSel,
  fromSelPrecis, toSel, toSelPrecis: Integer);
begin
 listbox1.items.add('New item insert');
end;

procedure TForm1.DayPlannerItemLeftClick(Sender: TObject;
  Item: TPlannerItem);
begin
 listbox1.items.add('Left clicked on item : '+item.name);
end;

procedure TForm1.DayPlannerItemMove(Sender: TObject; Item: TPlannerItem;
  fromBegin, fromEnd, fromPos, toBegin, toEnd, toPos: Integer);
begin
 listbox1.items.add('Item : '+item.name+' moved from ['+
                     inttostr(fromBegin)+':'+inttostr(fromPos)+'] to ['+
                     inttostr(toBegin)+':'+inttostr(toPos)+']');
end;

procedure TForm1.DayPlannerItemRightClick(Sender: TObject;
  Item: TPlannerItem);
begin
 listbox1.items.add('Right clicked on item : '+item.name);
end;

procedure TForm1.DayPlannerItemSelChange(Sender: TObject;
  Item: TPlannerItem);
begin
 listbox1.items.add('Item selection changed to item : '+item.name);
end;

procedure TForm1.DayPlannerItemSelect(Sender: TObject; Item: TPlannerItem);
begin
 listbox1.items.add('Item selected : '+item.name);
end;

procedure TForm1.DayPlannerItemSize(Sender: TObject; Item: TPlannerItem;
  position, fromBegin, fromEnd, toBegin, toEnd: Integer);
begin
 listbox1.items.add('Item : '+item.name+' resized from ['+
                     inttostr(fromBegin)+':'+inttostr(fromEnd)+'] to ['+
                     inttostr(toBegin)+':'+inttostr(toEnd)+']');

end;

procedure TForm1.DayPlannerItemStartEdit(Sender: TObject;
  Item: TPlannerItem);
begin
 listbox1.items.add('Start of editing in item : '+item.name);
end;

procedure TForm1.DayPlannerPlannerDblClick(Sender: TObject; position,
  fromSel, fromSelPrecis, toSel, toSelPrecis: Integer);
begin
 listbox1.items.add('Planner double click at ['+inttostr(position)+':'+inttostr(fromSel)+']');
end;

procedure TForm1.DayPlannerPlannerKeyPress(Sender: TObject; var key: Char;
  position, fromSel, fromSelPrecis, toSel, toSelPrecis: Integer);
begin
 listbox1.items.add('Planner keypress '+key+' at ['+inttostr(position)+':'+inttostr(fromSel)+']');
end;

procedure TForm1.DayPlannerPlannerLeftClick(Sender: TObject; position,
  fromSel, fromSelPrecis, toSel, toSelPrecis: Integer);
begin
 listbox1.items.add('Planner left click at ['+inttostr(position)+':'+inttostr(fromSel)+']');
end;

procedure TForm1.DayPlannerPlannerRightClick(Sender: TObject; position,
  fromSel, fromSelPrecis, toSel, toSelPrecis: Integer);
begin
 listbox1.items.add('Planner right click at ['+inttostr(position)+':'+inttostr(fromSel)+']');
end;

procedure TForm1.DayPlannerItemAnchorEnter(Sender: TObject;
  Item: TPlannerItem; Anchor: String);
begin
 listbox1.items.add('Entered anchor : '+anchor+' of item : '+item.name);
end;

procedure TForm1.DayPlannerItemAnchorExit(Sender: TObject;
  Item: TPlannerItem; Anchor: String);
begin
 listbox1.items.add('Exit anchor : '+anchor+' of item : '+item.name);
end;

end.
