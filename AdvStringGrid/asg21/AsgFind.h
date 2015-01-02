//---------------------------------------------------------------------------
#ifndef AsgFindH
#define AsgFindH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TFind : public TForm
{
__published:	// IDE-managed Components
        TLabel *Label1;
        TCheckBox *chkcase;
        TCheckBox *chkfull;
        TCheckBox *chkregular;
        TButton *Button1;
        TButton *Button2;
        TButton *Button3;
        TRadioGroup *dir;
        TRadioGroup *where;
        TEdit *findtext;
private:	// User declarations
public:		// User declarations
        __fastcall TFind(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFind *Find;
//---------------------------------------------------------------------------
#endif
