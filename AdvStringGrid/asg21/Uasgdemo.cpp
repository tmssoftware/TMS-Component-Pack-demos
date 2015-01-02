//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "Uasgdemo.h"
#include "AsgAbout.h"
#include "AsgFind.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "AdvGrid"
#pragma link "asgprev"
#pragma resource "*.dfm"
#pragma resource "icons.res"

TForm1 *Form1;
TIcon *Icon1;
TIcon *Icon2;
TIcon *Icon3;
TIcon *Icon4;
TIcon *Icon5;
Graphics::TBitmap *Bitmap1;
Graphics::TBitmap *Bitmap2;
Graphics::TBitmap *Bitmap3;
Graphics::TBitmap *Bitmap4;
Graphics::TBitmap *Bitmap5;

//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormCreate(TObject *Sender)
{
 int i;

 AdvStringGrid1->LoadFromFile("test.txt");
 AdvStringGrid1->SortColumn = 1;
 AdvStringGrid1->SortShow = TRUE;

 editgrid->LoadFromFile("test.txt");
 editgrid->ClearComboString();
 editgrid->AddComboString("BMW");
 editgrid->AddComboString("Mercedes Benz");
 editgrid->AddComboString("Audi");
 editgrid->AddComboString("Porsche");
 editgrid->AddComboString("Ferrari");
 editgrid->AddComboString("Opel");
 editgrid->AddComboString("Lamborghini");
 editgrid->Combobox->Sorted=true;

 for(i=1;i<editgrid->RowCount;i++)
  editgrid->AddCheckBox(5,i,FALSE,FALSE);

 AdvStringGrid3->LoadFromFile("test.txt");
 AdvStringGrid5->LoadFromFile("test.txt");
 AdvStringGrid5->AutoSizeColumns(FALSE,15);

 Icon1 = new TIcon();
 Icon1->Handle=LoadIcon(HInstance,"ICON_1");
 Icon2 = new TIcon();
 Icon2->Handle=LoadIcon(HInstance,"ICON_2");
 Icon3 = new TIcon();
 Icon3->Handle=LoadIcon(HInstance,"ICON_3");
 Icon4 = new TIcon();
 Icon4->Handle=LoadIcon(HInstance,"ICON_4");
 Icon5 = new TIcon();
 Icon5->Handle=LoadIcon(HInstance,"ICON_5");

 AdvStringGrid2->AddIcon(1,1,Icon1,haCenter,vaAboveText);
 AdvStringGrid2->AddIcon(1,2,Icon2,haCenter,vaAboveText);
 AdvStringGrid2->AddIcon(1,3,Icon3,haCenter,vaAboveText);
 AdvStringGrid2->AddIcon(1,4,Icon4,haCenter,vaAboveText);
 AdvStringGrid2->AddIcon(1,5,Icon5,haCenter,vaAboveText);

 AdvStringGrid2->AddRotated(1,0,90,"Icons");

 AdvStringGrid2->Cells[1][1]="cpu";
 AdvStringGrid2->Cells[1][2]="trashcan";
 AdvStringGrid2->Cells[1][3]="icon";
 AdvStringGrid2->Cells[1][4]="floppy";
 AdvStringGrid2->Cells[1][5]="audio";

 AdvStringGrid2->AddImageIdx(2,1,0,haBeforeText,vaCenter);
 AdvStringGrid2->AddImageIdx(2,2,1,haBeforeText,vaCenter);
 AdvStringGrid2->AddImageIdx(2,3,2,haBeforeText,vaCenter);
 AdvStringGrid2->AddImageIdx(2,4,3,haBeforeText,vaCenter);
 AdvStringGrid2->AddImageIdx(2,5,4,haBeforeText,vaCenter);

 AdvStringGrid2->AddRotated(2,0,90,"Imagelist");

 AdvStringGrid2->Cells[2][1]="mail";
 AdvStringGrid2->Cells[2][2]="note";
 AdvStringGrid2->Cells[2][3]="cancel";
 AdvStringGrid2->Cells[2][4]="home";
 AdvStringGrid2->Cells[2][5]="web";

 Bitmap1 = new Graphics::TBitmap();
 Bitmap1->Handle = LoadBitmap(HInstance,"BITMAP_1");
 Bitmap2 = new Graphics::TBitmap();
 Bitmap2->Handle = LoadBitmap(HInstance,"BITMAP_2");
 Bitmap3 = new Graphics::TBitmap();
 Bitmap3->Handle = LoadBitmap(HInstance,"BITMAP_3");
 Bitmap4 = new Graphics::TBitmap();
 Bitmap4->Handle = LoadBitmap(HInstance,"BITMAP_4");
 Bitmap5 = new Graphics::TBitmap();
 Bitmap5->Handle = LoadBitmap(HInstance,"BITMAP_5");

 AdvStringGrid2->AddBitmap(3,1,Bitmap1,false,haRight,vaBottom);
 AdvStringGrid2->AddBitmap(3,2,Bitmap2,false,haRight,vaBottom);
 AdvStringGrid2->AddBitmap(3,3,Bitmap3,false,haRight,vaBottom);
 AdvStringGrid2->AddBitmap(3,4,Bitmap4,false,haRight,vaBottom);
 AdvStringGrid2->AddBitmap(3,5,Bitmap5,false,haRight,vaBottom);


 AdvStringGrid2->Cells[3][1]="";
 AdvStringGrid2->Cells[3][2]="";
 AdvStringGrid2->Cells[3][3]="";
 AdvStringGrid2->Cells[3][4]="";
 AdvStringGrid2->Cells[3][5]="";

 AdvStringGrid2->AddRotated(3,0,90,"Bitmaps");

 AdvStringGrid2->AutoNumberCol(0);

 AdvStringGrid2->AddRotated(4,0,90,"Text");
 AdvStringGrid2->AddRotated(4,1,45,"One");
 AdvStringGrid2->AddRotated(4,2,135,"Two");
 AdvStringGrid2->AddRotated(4,3,225,"Three");
 AdvStringGrid2->AddRotated(4,4,315,"Four");
 AdvStringGrid2->AddRotated(4,5,180,"Five");

 AdvStringGrid2->AddRotated(5,0,90,"Multi Image");
 AdvStringGrid2->AddRotated(6,0,90,"Rich text");
 AdvStringGrid2->AddRotated(7,0,90,"HTML");
 AdvStringGrid2->AddRotated(8,0,90,"Various"); 

 AdvStringGrid2->AddMultiImage(5,1,0,haBeforeText,vaCenter);
 AdvStringGrid2->AddMultiImage(5,2,0,haBeforeText,vaCenter);
 AdvStringGrid2->AddMultiImage(5,3,0,haBeforeText,vaCenter);
 AdvStringGrid2->AddMultiImage(5,4,0,haBeforeText,vaCenter);
 AdvStringGrid2->AddMultiImage(5,5,0,haBeforeText,vaCenter);

 AdvStringGrid2->CellImages[5][1]->Add(0);
 AdvStringGrid2->CellImages[5][1]->Add(1);

 AdvStringGrid2->CellImages[5][2]->Add(2);
 AdvStringGrid2->CellImages[5][2]->Add(3);
 AdvStringGrid2->CellImages[5][2]->Add(4);

 AdvStringGrid2->CellImages[5][3]->Add(0);

 AdvStringGrid2->CellImages[5][4]->Add(1);
 AdvStringGrid2->CellImages[5][4]->Add(3);
 AdvStringGrid2->CellImages[5][4]->Add(4);
 AdvStringGrid2->CellImages[5][4]->Add(2);

 AdvStringGrid2->CellImages[5][5]->Add(4);
 AdvStringGrid2->CellImages[5][5]->Add(1);

 AdvStringGrid2->RichEdit->Text="Rich text";
 AdvStringGrid2->RichEdit->SelStart=0;
 AdvStringGrid2->RichEdit->SelLength=4;
 AdvStringGrid2->RichEdit->SelAttributes->Color=clRed;
 AdvStringGrid2->RichEdit->SelAttributes->Style << fsBold;
 AdvStringGrid2->RichEdit->SelStart=5;
 AdvStringGrid2->RichEdit->SelLength=4;
 AdvStringGrid2->RichEdit->SelAttributes->Color=clBlue;
 AdvStringGrid2->RichEdit->SelAttributes->Style<<fsItalic;
 AdvStringGrid2->RichToCell(6,1,AdvStringGrid2->RichEdit);

 AdvStringGrid2->RichEdit->Clear();
 AdvStringGrid2->RichEdit->SelAttributes->Style >> fsBold;
 AdvStringGrid2->RichEdit->SelAttributes->Color=clBlack;

 AdvStringGrid2->RichEdit->Text="Superscript";

 AdvStringGrid2->RichEdit->SelStart=0;
 AdvStringGrid2->RichEdit->SelLength=5;
 AdvStringGrid2->RichEdit->SelSuperscript();
 AdvStringGrid2->RichEdit->SelAttributes->Color=clBlue;

 AdvStringGrid2->RichToCell(6,2,AdvStringGrid2->RichEdit);

 AdvStringGrid2->RichEdit->Clear();
 AdvStringGrid2->RichEdit->SelAttributes->Color=clBlack;
 AdvStringGrid2->RichEdit->SelNormal();

 AdvStringGrid2->RichEdit->Text="Subscript";
 AdvStringGrid2->RichEdit->SelStart=0;
 AdvStringGrid2->RichEdit->SelLength=3;
 AdvStringGrid2->RichEdit->SelSubscript();
 AdvStringGrid2->RichEdit->SelAttributes->Color=clBlue;

 AdvStringGrid2->RichToCell(6,3,AdvStringGrid2->RichEdit);

 AdvStringGrid2->RichEdit->Clear();
 AdvStringGrid2->RichEdit->SelAttributes->Color=clBlack;
 AdvStringGrid2->RichEdit->SelNormal();

 AdvStringGrid2->RichEdit->Text="One\rTwo\rThree";
 AdvStringGrid2->RichEdit->Paragraph->Numbering = nsBullet;

 AdvStringGrid2->RichToCell(6,4,AdvStringGrid2->RichEdit);

 AdvStringGrid2->Cells[7][1]="Easy <B>HTML</B><BR><I>formatting</I>";
 AdvStringGrid2->Cells[7][2]="Including <IMG src=" "\x022" "idx:0" "\x022" "><BR><FONT color=" "\x022" "clred" "\x022" ">everywhere</FONT>";

 AdvStringGrid2->Cells[7][3]="Enjoy<HR><B>miniHTML</B>";

 AdvStringGrid2->Cells[7][4]="<A href=" "\x022" "http://www.tmssoftware.com/minihtml.htm" "\x022" ">Click here</A><BR>for more";

 AdvStringGrid2->Cells[7][5]="125 <SUP>9</SUP>/<SUB>16</SUB>";

 AdvStringGrid2->Ints[8][1]=50;
 AdvStringGrid2->Ints[8][2]=75;
 AdvStringGrid2->AddProgress(8,1,clRed,clSilver);
 AdvStringGrid2->AddProgress(8,2,clBlue,clWhite);

 AdvStringGrid2->AddComment(8,3,"This is a custom" "\x00D" "comment for this cell");
 AdvStringGrid2->Cells[8][3]="Cell with<BR><I>comment</I>";

 AdvStringGrid2->Cells[8][4]="<A href=" "\x022" "CELL://R2C1" "\x022" ">Link to cell 1,2</A>";
 AdvStringGrid2->Cells[8][5]="<A href=" "\x022" "CELL://R1C2" "\x022" ">Link to cell 2,1</A>";

 AdvStringGrid2->Ints[6][5]=1;
 AdvStringGrid2->AddButton(6,5,45,20,"Push me",haBeforeText,vaCenter);


 AdvStringGrid4->LoadFromFile("test.txt");
 AdvStringGrid4->FixedCols=0;
 AdvStringGrid4->FixedColWidth=20;
 AdvStringGrid4->AddNode(2,4);
 AdvStringGrid4->AddNode(7,2);
 AdvStringGrid4->AddNode(13,4);

 ComboBox1->ItemIndex=0;
 ComboBox2->ItemIndex=0;



}
//---------------------------------------------------------------------------
void __fastcall TForm1::AdvStringGrid1GetCellColor(TObject *Sender,
      int ARow, int ACol, TGridDrawState AState, TBrush *ABrush,
      TFont *AFont)
{
 TFontStyles BoldFnt;
 BoldFnt << fsBold;

 if ((ACol==1) && (ARow>0) && (ARow<AdvStringGrid1->RowCount-AdvStringGrid1->FixedFooters))

   {
    ABrush->Color=clYellow;
    AFont->Color=clRed;
    AFont->Style = BoldFnt;
   }
 if (ARow==0)
   {
    AFont->Style = BoldFnt;
   }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::About1Click(TObject *Sender)
{
 TAbout *About;

 About = new TAbout(Form1);

 About->ShowModal();

 delete About;
}

//---------------------------------------------------------------------------
void __fastcall TForm1::editgridGetEditorType(TObject *Sender,
      int aCol, int aRow, TEditorType &aEditor)
{
 switch (aCol) {
 case 1:aEditor=edComboList; break;
 case 2:aEditor=edEditBtn; break;
 case 3:aEditor=edSpinEdit; break;
 case 4:aEditor=edDateEdit; break;
 }

}
//---------------------------------------------------------------------------
void __fastcall TForm1::Savetofile1Click(TObject *Sender)
{
 AdvStringGrid1->SaveToFile("test.dat");
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Loadfromfile1Click(TObject *Sender)
{
 AdvStringGrid1->LoadFromFile("test.dat");
}
//---------------------------------------------------------------------------
void __fastcall TForm1::SavetoCSV1Click(TObject *Sender)
{
 AdvStringGrid1->SaveToCSV("test.csv");
}
//---------------------------------------------------------------------------
void __fastcall TForm1::LoadfromCSV1Click(TObject *Sender)
{
 AdvStringGrid1->LoadFromCSV("test.csv");
}
//---------------------------------------------------------------------------
void __fastcall TForm1::SaveasXLS1Click(TObject *Sender)
{
 AdvStringGrid1->SaveToXLS("test.xls");
}
//---------------------------------------------------------------------------
void __fastcall TForm1::LoadfromXLS1Click(TObject *Sender)
{
 AdvStringGrid1->LoadFromXLS("test.xls");
}
//---------------------------------------------------------------------------
void __fastcall TForm1::SavetoHTML1Click(TObject *Sender)
{
 AdvStringGrid1->SaveToHTML("test.htm");
}
//---------------------------------------------------------------------------
void __fastcall TForm1::SavetoASCII1Click(TObject *Sender)
{
 AdvStringGrid1->SaveToASCII("test.asc");
}
//---------------------------------------------------------------------------
void __fastcall TForm1::SavetoDOC1Click(TObject *Sender)
{
 AdvStringGrid1->SaveToDOC("test.doc");
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Findfirst1Click(TObject *Sender)
{
 TFind *Find;
 TFindParams findparams;
 TPoint res;

 Find = new TFind(Form1);

 if (Find->ShowModal()==mrOk)
 {
    if (Find->chkcase->Checked) findparams << fnMatchCase;
    if (Find->chkfull->Checked) findparams << fnMatchFull;
    if (Find->chkregular->Checked) findparams << fnMatchRegular;
    if (Find->dir->ItemIndex==1) findparams << fnDirectionLeftRight;
    if (Find->where->ItemIndex==1) findparams << fnFindInCurrentCol;
    if (Find->where->ItemIndex==2) findparams << fnFindInCurrentRow;

    res = AdvStringGrid1->FindFirst(Find->findtext->Text,findparams);
    if (res.x>=0)
     {
      AdvStringGrid1->Col=res.x;
      AdvStringGrid1->Row=res.y;
     }
    else
      ShowMessage("Text not found");
   

 }


 delete Find;

}
//---------------------------------------------------------------------------

void __fastcall TForm1::Findnext1Click(TObject *Sender)
{
 TPoint res;

 res = AdvStringGrid1->FindNext();

 if ((res.x>=0) && (res.y>=0))
   {
    AdvStringGrid1->Col=res.x;
    AdvStringGrid1->Row=res.y;
   }
 else
  ShowMessage("Text not found");
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Copyselectiontoclipboard1Click(TObject *Sender)
{
 AdvStringGrid1->CopySelectionToClipboard();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Copyalltoclipboard1Click(TObject *Sender)
{
 AdvStringGrid1->CopyToClipBoard();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Pasteselectionfromclipboard1Click(TObject *Sender)
{
 AdvStringGrid1->PasteSelectionFromClipboard();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Pasteallfromclipboard1Click(TObject *Sender)
{
 AdvStringGrid1->PasteFromClipboard();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::multilineClick(TObject *Sender)
{
 if (multiline->Checked)
   AdvStringGrid1->DefaultRowHeight=28;
 else
   AdvStringGrid1->DefaultRowHeight=16;

 AdvStringGrid1->Multilinecells=multiline->Checked;

}
//---------------------------------------------------------------------------

void __fastcall TForm1::AdvStringGrid1CanEditCell(TObject *Sender,
      int Arow, int Acol, bool &canedit)
{
 if ((Acol==3) && (colro->Checked))
  canedit=FALSE; else canedit=TRUE;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::AdvStringGrid1IsFixedCell(TObject *Sender,
      int Arow, int Acol, bool &isfixed)
{
 if ((Acol==3) && (colfix->Checked))
  isfixed=TRUE; else isfixed=FALSE;

}
//---------------------------------------------------------------------------

void __fastcall TForm1::colfixClick(TObject *Sender)
{
 colro->Checked=colfix->Checked;
 AdvStringGrid1->Repaint();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button3Click(TObject *Sender)
{
 AdvStringGrid1->AutoSize = TRUE;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button6Click(TObject *Sender)
{
 if (RadioGroup1->ItemIndex==0)
   AdvStringGrid1->SortDirection=sdAscending;
 else
   AdvStringGrid1->SortDirection=sdDescending;

 AdvStringGrid1->SortColumn=1;
 AdvStringGrid1->QSort();

}
//---------------------------------------------------------------------------

void __fastcall TForm1::AdvStringGrid2GetAlignment(TObject *Sender,
      int ARow, int ACol, TAlignment &AAlignment)
{
 if ((ACol!=2) && (ACol<4)) AAlignment=taCenter;
 if (ARow==0) AAlignment=taCenter;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button1Click(TObject *Sender)
{
 AdvStringGrid4->ExpandAll();        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button2Click(TObject *Sender)
{
 AdvStringGrid4->ContractAll();        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::RadioGroup2Click(TObject *Sender)
{
 switch (RadioGroup2->ItemIndex) {
 case 0:AdvStringGrid4->CellNode->NodeType=cnFlat;
        break;
 case 1:AdvStringGrid4->CellNode->NodeType=cn3D;
        break;
 case 2:AdvStringGrid4->CellNode->NodeType=cnGlyph;
        break;
 }

}
//---------------------------------------------------------------------------

void __fastcall TForm1::SavetoXML1Click(TObject *Sender)
{
 Close();        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Printpreview1Click(TObject *Sender)
{
 PrintSetup();
 AdvPreviewDialog1->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Printpreviewwithgraphics1Click(TObject *Sender)
{
 AdvPreviewDialog2->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::PrintSetup(void)
{
 AdvStringGrid1->PrintSettings->TitleLines->Assign(Memo1->Lines);

 if (CheckBox2->Checked)
    AdvStringGrid1->PrintSettings->Time=ppTopLeft;
 else
    AdvStringGrid1->PrintSettings->Time=ppNone;

 if (CheckBox1->Checked)
    AdvStringGrid1->PrintSettings->Date=ppTopRight;
 else
    AdvStringGrid1->PrintSettings->Date=ppNone;

 if (CheckBox3->Checked)
    AdvStringGrid1->PrintSettings->PageNr=ppBottomCenter;
 else
    AdvStringGrid1->PrintSettings->PageNr=ppNone;

 if (CheckBox4->Checked)
   {
     if (RadioButton1->Checked)
       AdvStringGrid1->PrintSettings->Borders = Advgrid::pbVertical;
     if (RadioButton2->Checked)
       AdvStringGrid1->PrintSettings->Borders = Advgrid::pbHorizontal;
     if (RadioButton3->Checked)
       AdvStringGrid1->PrintSettings->Borders = Advgrid::pbSingle;

   }
 else
    AdvStringGrid1->PrintSettings->Borders = Advgrid::pbNoborder;

  if (CheckBox5->Checked)
    AdvStringGrid1->PrintSettings->FitToPage = fpAlways;
  else
    AdvStringGrid1->PrintSettings->FitToPage = fpNever;

  AdvStringGrid1->PrintSettings->NoAutoSize=!(CheckBox7->Checked);

  AdvStringGrid1->PrintSettings->Centered =CheckBox6->Checked;
}

void __fastcall TForm1::Print2Click(TObject *Sender)
{
  PrintSetup();
  AdvStringGrid1->Print();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button8Click(TObject *Sender)
{
  FontDialog1->Font->Assign(AdvStringGrid1->PrintSettings->Font);
  if (FontDialog1->Execute())
   AdvStringGrid1->PrintSettings->Font->Assign(FontDialog1->Font);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Column11Click(TObject *Sender)
{
 int acol;

 TMenuItem* Item = dynamic_cast<TMenuItem *>(Sender);

 acol = Item->Tag;

 if (AdvStringGrid1->IsHiddenColumn(acol))

   AdvStringGrid1->UnhideColumn(acol);
 else

   AdvStringGrid1->HideColumn(acol);

 Item->Checked=AdvStringGrid1->IsHiddenColumn(acol);

}
//---------------------------------------------------------------------------

void __fastcall TForm1::editgridEllipsClick(TObject *Sender, int aCol,
      int aRow, AnsiString &S)
{
 char buf[32];
 TPoint pt;
 pt.x = aCol;
 pt.y = aRow;
 wvsprintf(buf,"Edit (%d:%d)",&pt);
 InputQuery(buf,"Cell value",S);
}
//---------------------------------------------------------------------------


void __fastcall TForm1::CheckBox8Click(TObject *Sender)
{
 TFilterData* fd;

 AdvStringGrid3->Filter->Clear();

 fd = AdvStringGrid3->Filter->Add();

 fd->Condition = ComboBox1->Items->Strings[ComboBox1->ItemIndex];
 fd->Column = 1;

 fd = AdvStringGrid3->Filter->Add();

 fd->Condition=ComboBox2->Items->Strings[ComboBox2->ItemIndex];
 fd->Column = 3;


 AdvStringGrid3->FilterActive=CheckBox8->Checked;

}
//---------------------------------------------------------------------------

void __fastcall TForm1::Timer1Timer(TObject *Sender)
{
 AdvStringGrid2->Ints[8][1]=random(100);
 AdvStringGrid2->Ints[8][2]=random(100);

}
//---------------------------------------------------------------------------

void __fastcall TForm1::AdvStringGrid2ButtonClick(TObject *Sender,
      int aCol, int aRow)
{
  AdvStringGrid2->Ints[6][5] = AdvStringGrid2->Ints[6][5] + 1;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Printwithgraphics1Click(TObject *Sender)
{
  PrintSetup();
  AdvStringGrid2->Print();

}
//---------------------------------------------------------------------------

