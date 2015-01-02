//---------------------------------------------------------------------------
#ifndef UasgdemoH
#define UasgdemoH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "AdvGrid.hpp"
#include <ComCtrls.hpp>
#include <Grids.hpp>
#include <Menus.hpp>
#include <ExtCtrls.hpp>
#include <ImgList.hpp>
#include "asgprev.hpp"
#include <Dialogs.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
        TPageControl *PageControl1;
        TTabSheet *TabSheet1;
        TTabSheet *TabSheet2;
        TTabSheet *TabSheet3;
        TTabSheet *TabSheet4;
        TAdvStringGrid *AdvStringGrid1;
        TMainMenu *MainMenu1;
        TMenuItem *File1;
        TMenuItem *Savetofile1;
        TMenuItem *Loadfromfile1;
        TMenuItem *SavetoCSV1;
        TMenuItem *LoadfromCSV1;
        TMenuItem *SaveasXLS1;
        TMenuItem *LoadfromXLS1;
        TMenuItem *SavetoHTML1;
        TMenuItem *SavetoASCII1;
        TMenuItem *SavetoDOC1;
        TMenuItem *SavetoXML1;
        TMenuItem *Clipboard1;
        TMenuItem *Print1;
        TMenuItem *Copyselectiontoclipboard1;
        TMenuItem *Copyalltoclipboard1;
        TMenuItem *Pasteselectionfromclipboard1;
        TMenuItem *Pasteallfromclipboard1;
        TMenuItem *Print2;
        TMenuItem *Printpreview1;
        TMenuItem *Printselection1;
        TMenuItem *Printwithgraphics1;
        TMenuItem *Printpreviewwithgraphics1;
        TMenuItem *Hide1;
        TMenuItem *Column11;
        TMenuItem *Column21;
        TMenuItem *Column31;
        TMenuItem *Column41;
        TMenuItem *Column51;
        TMenuItem *Column61;
        TMenuItem *Column71;
        TMenuItem *Search1;
        TMenuItem *Findfirst1;
        TMenuItem *Findnext1;
        TMenuItem *Help1;
        TMenuItem *About1;
        TAdvStringGrid *AdvStringGrid2;
        TAdvStringGrid *editgrid;
        TAdvStringGrid *AdvStringGrid4;
        TGroupBox *GroupBox2;
        TLabel *Label7;
        TLabel *Label8;
        TCheckBox *CheckBox1;
        TCheckBox *CheckBox2;
        TCheckBox *CheckBox3;
        TCheckBox *CheckBox4;
        TButton *Button8;
        TCheckBox *CheckBox5;
        TCheckBox *CheckBox6;
        TRadioButton *RadioButton1;
        TRadioButton *RadioButton2;
        TRadioButton *RadioButton3;
        TCheckBox *CheckBox7;
        TMemo *Memo1;
        TGroupBox *GroupBox3;
        TLabel *Label1;
        TLabel *Label2;
        TButton *Button3;
        TButton *Button6;
        TRadioGroup *RadioGroup1;
        TCheckBox *fixedsort;
        TCheckBox *multiline;
        TCheckBox *colro;
        TCheckBox *colfix;
        TImageList *ImageList1;
        TLabel *Label3;
        TLabel *Label4;
        TLabel *Label5;
        TLabel *Label6;
        TButton *Button1;
        TButton *Button2;
        TRadioGroup *RadioGroup2;
        TAdvPreviewDialog *AdvPreviewDialog1;
        TAdvPreviewDialog *AdvPreviewDialog2;
        TFontDialog *FontDialog1;
        TTabSheet *TabSheet5;
        TTabSheet *TabSheet6;
        TAdvStringGrid *AdvStringGrid3;
        TLabel *Label9;
        TComboBox *ComboBox1;
        TLabel *Label10;
        TLabel *Label11;
        TComboBox *ComboBox2;
        TCheckBox *CheckBox8;
        TAdvStringGrid *AdvStringGrid5;
        TLabel *Label12;
        TLabel *Label13;
        TTimer *Timer1;
        void __fastcall FormCreate(TObject *Sender);
        void __fastcall AdvStringGrid1GetCellColor(TObject *Sender,
          int ARow, int ACol, TGridDrawState AState, TBrush *ABrush,
          TFont *AFont);
        void __fastcall About1Click(TObject *Sender);
        void __fastcall editgridGetEditorType(TObject *Sender,
          int aCol, int aRow, TEditorType &aEditor);
        void __fastcall Savetofile1Click(TObject *Sender);
        void __fastcall Loadfromfile1Click(TObject *Sender);
        void __fastcall SavetoCSV1Click(TObject *Sender);
        void __fastcall LoadfromCSV1Click(TObject *Sender);
        void __fastcall SaveasXLS1Click(TObject *Sender);
        void __fastcall LoadfromXLS1Click(TObject *Sender);
        void __fastcall SavetoHTML1Click(TObject *Sender);
        void __fastcall SavetoASCII1Click(TObject *Sender);
        void __fastcall SavetoDOC1Click(TObject *Sender);
        void __fastcall Findfirst1Click(TObject *Sender);
        void __fastcall Findnext1Click(TObject *Sender);
        void __fastcall Copyselectiontoclipboard1Click(TObject *Sender);
        void __fastcall Copyalltoclipboard1Click(TObject *Sender);
        void __fastcall Pasteselectionfromclipboard1Click(TObject *Sender);
        void __fastcall Pasteallfromclipboard1Click(TObject *Sender);
        void __fastcall multilineClick(TObject *Sender);
        void __fastcall AdvStringGrid1CanEditCell(TObject *Sender,
          int Arow, int Acol, bool &canedit);
        void __fastcall AdvStringGrid1IsFixedCell(TObject *Sender,
          int Arow, int Acol, bool &isfixed);
        void __fastcall colfixClick(TObject *Sender);
        void __fastcall Button3Click(TObject *Sender);
        void __fastcall Button6Click(TObject *Sender);
        void __fastcall AdvStringGrid2GetAlignment(TObject *Sender,
          int ARow, int ACol, TAlignment &AAlignment);
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall Button2Click(TObject *Sender);
        void __fastcall RadioGroup2Click(TObject *Sender);
        void __fastcall SavetoXML1Click(TObject *Sender);
        void __fastcall Printpreview1Click(TObject *Sender);
        void __fastcall Printpreviewwithgraphics1Click(TObject *Sender);
        void __fastcall Print2Click(TObject *Sender);
        void __fastcall PrintSetup(void);
        void __fastcall Button8Click(TObject *Sender);
        void __fastcall Column11Click(TObject *Sender);
        void __fastcall editgridEllipsClick(TObject *Sender, int aCol,
          int aRow, AnsiString &S);
        void __fastcall CheckBox8Click(TObject *Sender);
        void __fastcall Timer1Timer(TObject *Sender);
        void __fastcall AdvStringGrid2ButtonClick(TObject *Sender,
          int aCol, int aRow);
        void __fastcall Printwithgraphics1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
