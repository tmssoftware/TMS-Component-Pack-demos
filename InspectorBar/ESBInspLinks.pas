
{***************************************************************************}
{ TInspectorBar EditLink components                                         }
{ for Delphi & C++Builder                                                   }
{ version 1.1                                                               }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2001 - 2002                                        }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{                                                                           }
{ The source code is given as is. The author is not responsible             }
{ for any possible damage done due to the use of this code.                 }
{ The component can be freely used in any application. The complete         }
{ source code remains property of the author and may not be distributed,    }
{ published, given or sold in any form as such. No parts of the source      }
{ code can be included in any other component or application without        }
{ written authorization of TMS software.                                    }
{***************************************************************************}

unit ESBInspLinks;

interface

uses
  controls,graphics,sysutils,forms,advgrid,windows,classes,dialogs,
  InspectorBar,
  ESBPCSEdit,
  ESBPCSNumEdit,
  ESBPCSDateTimeEdit,
  ESBPCSCurrEdit,
  ESBPCSSpinEdit,
  ESBPCSDateTimeSpinEdit,
  ESBPCSComplexEdit,
  ESBPCSPanel,
  ESBPCSFractionEdit,
  ESBPCSComboBox,
  ESBPCSDateTimeComboBox,
  ESBPCSCurrComboBox,
  ESBPCSCurrency,
  ESBPCSCountryComboBox,
  ESBPCSCountries,
  ESBPCSEdit2;

type
  TESBInspBaseSpinEditLink = class(TInspectorEditLink)
  private
    fEdit: TESBBaseSpinEdit;
    fOrigValue: string;
    fFlatSpinBtns,fFlatEdit,fNull: boolean;
    fColorBorderFocus, fColorBorderUnfocus, fColorFocus, fColorRO, fColorRW: TColor;
    fNullStr: string;
    fHeight,fFlatBorder: integer;
  protected
    procedure CreateInstance(aParent:TWinControl); virtual;
  public
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;
    function GetEditor: TWinControl; override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    procedure SetOriginalValue; override;
    procedure StartEdit(Item: TInspectorItem); override;
    procedure StopEdit(Item: TInspectorItem); override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
  published
    property FlatSpinBtns: boolean read fFlatSpinBtns write fFlatSpinBtns;
    property FlatEdit: boolean read fFlatEdit write fFlatEdit;
    property Null: boolean read fNull write fNull;
    property NullStr: string read fNullStr write fNullStr;
    property ColorBorderFocus:TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus:TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus:TColor read fColorFocus write fColorFocus;
    property ColorRO:TColor read fColorRO write fColorRO;
    property ColorRW:TColor read fColorRW write fColorRW;
    property Height:integer read fHeight write fHeight;
    property FlatBorder:integer read fFlatBorder write fFlatBorder;
  end;

  TESBInspIntSpinEditLink = class(TESBInspBaseSpinEditLink)
  private
    fShowThousandSeparators:boolean;
  protected
    procedure CreateInstance(aParent:TWinControl); override;
  public
    procedure SetOriginalValue; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
  published
    property ShowThousandSeparators:Boolean read fShowThousandSeparators write fShowThousandSeparators;
  end;

  TESBInspFloatSpinEditLink = class(TInspectorEditLink)
  private
    fEdit: TESBFloatSpinEdit;
    fDecimalPlaces: byte;
    fShowThousandSeparators: boolean;
    fColorBorderFocus, fColorBorderUnfocus, fcolorFocus, fColorRO, fColorRW:TColor;
    fNullStr,fOrigValue: string;
    fFlatBorder,fHeight: integer;
    fFlatEdit,fNull,fFlatSpinBtns: boolean;
  public
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;
    function GetEditor: TWinControl; override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
    procedure SetOriginalValue; override;
    procedure StartEdit(Item: TInspectorItem); override;
    procedure StopEdit(Item: TInspectorItem); override;
  published
    property DecimalPlaces: byte read fDecimalPlaces write fDecimalPlaces;
    property ShowThousandSeparators: Boolean read fShowThousandSeparators write fShowThousandSeparators;
    property ColorBorderFocus:TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus:TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus:TColor read fColorFocus write fColorFocus;
    property ColorRO:TColor read fColorRO write fColorRO;
    property ColorRW:TColor read fColorRW write fColorRW;
    property FlatBorder:integer read fFlatBorder write fFlatBorder;
    property FlatEdit:boolean read fFlatEdit write fFlatEdit;
    property Null:boolean read fNull write fNull;
    property NullStr:string read fNullStr write fNullStr;
    property FlatSpinBtns: boolean read fFlatSpinBtns write fFlatSpinBtns;
    property Height:integer read fHeight write fHeight;
  end;

  TESBInspPosSpinEditLink = class(TInspectorEditLink)
  private
    fEdit: TESBPosSpinEdit;
    fShowThousandSeparators: boolean;
    fColorBorderFocus, fColorBorderUnfocus, fcolorFocus, fColorRO, fColorRW:TColor;
    fNullStr,fOrigValue: string;
    fFlatBorder,fHeight: integer;
    fFlatEdit,fNull,fFlatSpinBtns: boolean;
 public
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;
    function GetEditor: TWinControl; override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
    procedure SetOriginalValue; override;
    procedure StartEdit(Item: TInspectorItem); override;
    procedure StopEdit(Item: TInspectorItem); override;
  published
    property ShowThousandSeparators: Boolean read fShowThousandSeparators write fShowThousandSeparators;
    property ColorBorderFocus:TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus:TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus:TColor read fColorFocus write fColorFocus;
    property ColorRO:TColor read fColorRO write fColorRO;
    property ColorRW:TColor read fColorRW write fColorRW;
    property FlatBorder:integer read fFlatBorder write fFlatBorder;
    property FlatEdit:boolean read fFlatEdit write fFlatEdit;
    property Null:boolean read fNull write fNull;
    property NullStr:string read fNullStr write fNullStr;
    property FlatSpinBtns: boolean read fFlatSpinBtns write fFlatSpinBtns;
    property Height:integer read fHeight write fHeight;
  end;

  TESBInspYearSpinEditLink = class(TESBInspBaseSpinEditLink)
  private
    fYearCutOff: Integer;
    fOrigValue: string;
  protected
   procedure CreateInstance(aParent:TWinControl); override;
  public
   procedure SetOriginalValue; override;
   procedure SetProperties(R: TRect; Item: TInspectorItem);override;
  published
    property YearCutOff:Integer read fYearCutOff write fYearCutOff;
  end;

  TESBInspMonthSpinEditLink = class(TInspectorEditLink)
  private
    fEdit:TESBMonthSpinEdit;
    fColor,fColorBorderFocus,fColorBorderUnfocus,fColorFocus,fColorRO,fColorRW:TColor;    fFlatBorder,fMonth,fHeight:Integer;
    fNull,fFlatEdit,fFlatSpinBtns:boolean;
    fNullStr,fOrigValue:String;
  public
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;
    function GetEditor: TWinControl; override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
    procedure SetOriginalValue; override;
    procedure StartEdit(Item: TInspectorItem); override;
    procedure StopEdit(Item: TInspectorItem); override;
  published
    property Color:TColor read fColor write fColor;
    property ColorBorderFocus:TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus:TColor read fColorBorderUnfocus write fColorBorderUnfocus;    property ColorFocus:TColor read fColorFocus write fColorFocus;
    property ColorRO:TColor read fColorRO write fColorRO;
    property ColorRW:TColor read fColorRW write fColorRW;
    property FlatBorder:integer read fFlatBorder write fFlatBorder;
    property FlatEdit:Boolean read fFlatEdit write fFLatEdit;
    property FlatSpinBtns:Boolean read fFlatSpinBtns write fFlatSpinBtns;
    property NullStr:String read fNullStr write fNullStr;
    property Null:Boolean read fNull write fNull;
    property Month:Integer read fMonth write fMonth;
    property Height:integer read fHeight write fHeight;
  end;

  TESBInspDOWSpinEditLink = class(TInspectorEditLink)
  private
    fEdit: TESBDowSpinEdit;
    fColor,fColorBorderFocus,fColorBorderUnfocus,fColorFocus, fColorRO, fColorRW:TColor;
    fFlatBorder, fHeight: integer;
    fFlatSpinBtns, fFlatEdit,fNull: boolean;
    fNullStr,fOrigValue:string;
  public
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;
    function GetEditor: TWinControl; override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
    procedure SetOriginalValue; override;
    procedure StartEdit(Item: TInspectorItem); override;
    procedure StopEdit(Item: TInspectorItem); override;
  published
    property Color: TColor read fColor write fColor;
    property ColorBorderFocus: TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus: TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus: TColor read fColorFocus write fColorFocus;
    property ColorRO:TColor read fColorRO write fColorRO;
    property ColorRW:TColor read fColorRW write fColorRW;
    property FlatBorder: integer read fFlatBorder write fFlatBorder;
    property FlatSpinBtns: Boolean read fFlatSpinBtns write fFlatSpinBtns;
    property FlatEdit: Boolean read fFlatEdit write fFlatEdit;
    property Null: Boolean read fNull write fNull;
    property NullStr: string read fNullStr write fNullStr;
    property Height:integer read fHeight write fHeight;
  end;

  TESBInspLookUpComboBoxEditLink = class(TInspectorEditLink)
  private
    fEdit: TESBLookupComboBox;
    fItems: TStrings;
    fFlat:boolean;
    fColorBorderFocus,fColorBorderUnfocus, fColorFocus, fColorRO, fColorRW: TColor;
    fFlatBorder,fOrigIndex: integer;
    fDropDownCount,fDropDownHeight: Integer;
    procedure SetItems(const Value: TStrings);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function GetEditor: TWinControl; override;
    procedure CreateEditor(AParent: TWinControl); override;
    procedure DestroyEditor; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
    procedure SetOriginalValue; override;
    procedure StartEdit(Item: TInspectorItem); override;
    procedure StopEdit(Item: TInspectorItem); override;
    property ComboBox: TESBLookUpComboBox read fEdit;
  published
    property Items:TStrings read fItems write SetItems;
    property Flat:boolean read fFlat write fFlat;
    property FlatBorder:integer read fFlatBorder write fFlatBorder;
    property ColorBorderFocus:TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus:TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus:TColor read fColorFocus write fColorFocus;
    property ColorRO:TColor read fColorRO write fColorRO;
    property ColorRW:TColor read fColorRW write fColorRW;
    property DropDownCount:integer read fDropDownCount write fDropDownCount;
    property DropDownHeigth: integer read fDropDownHeight write fDropDownHeight;
  end;

  TESBInspMonthComboBoxEditLink = class(TInspectorEditLink)
  private
    fEdit:TESBMonthComboBox;
    fColorBorderFocus,fColorBorderUnfocus,fColorFocus,fColorRO,fColorRW:TColor;
    fDropDownCount,fOrigIndex,fDropDownHeight,fFlatBorder: integer;
    fFlat: boolean;
    fOrigValue: string;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function GetEditor: TWinControl; override;
    procedure CreateEditor(AParent: TWinControl); override;
    procedure DestroyEditor; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
    procedure SetOriginalValue; override;
    procedure StartEdit(Item: TInspectorItem); override;
    procedure StopEdit(Item: TInspectorItem); override;
    property ComboBox: TESBMonthComboBox read fEdit;
  published
    property ColorBorderFocus:TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus:TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus:TColor read fColorFocus write fColorFocus;
    property ColorRO:TColor read fColorRO write fColorRO;
    property ColorRW:TColor read fColorRW write fColorRW;
    property Flat:boolean read fFlat write fFlat;
    property FlatBorder:integer read fFlatBorder write fFlatBorder;
    property DropDownCount:integer read fDropDownCount write fDropDownCount;
    property DropHeigth: integer read fDropDownHeight write fDropDownHeight;
  end;

  TESBInspCountryComboBoxEditLink = class(TInspectorEditLink)
  private
    fEdit:TESBCountryComboBox;
    fFlat:boolean;
    fColorBorderFocus, fColorBorderUnfocus, fColorFocus, fColorRO, fColorRW: TColor;
    fDropDownCount, fOrigIndex, fDropDownHeight,fFlatBorder : integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function GetEditor: TWinControl; override;
    procedure CreateEditor(AParent: TWinControl); override;
    procedure DestroyEditor; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
    procedure SetOriginalValue; override;
    procedure StartEdit(Item: TInspectorItem); override;
    procedure StopEdit(Item: TInspectorItem); override;
    property ComboBox: TESBCountryComboBox read fEdit;
  published
    property Flat:boolean read fFlat write fFlat;
    property FlatBorder:integer read fFlatBorder write fFlatBorder;
    property ColorBorderFocus:TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus:TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus:TColor read fColorFocus write fColorFocus;
    property ColorRO:TColor read fColorRO write fColorRO;
    property ColorRW:TColor read fColorRW write fColorRW;
    property DropDownCount:integer read fDropDownCount write fDropDownCount;
    property DropHeigth: integer read fDropDownHeight write fDropDownHeight;
  end;

  TESBInspDowComboBoxEditLink = class(TInspectorEditLink)
  private
   fEdit:TESBDowComboBox;
   fColorBorderFocus, fColorBorderUnfocus,fColorFocus,fColorRO,fColorRW:TColor;
   fFlat:boolean;
   fDropDownCount, fOrigIndex, fDropDownHeight,fFlatBorder : integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function GetEditor: TWinControl; override;
    procedure CreateEditor(AParent: TWinControl); override;
    procedure DestroyEditor; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
    procedure SetOriginalValue; override;
    procedure StartEdit(Item: TInspectorItem); override;
    procedure StopEdit(Item: TInspectorItem); override;
    property ComboBox: TESBDowComboBox read fEdit;
  published
    property ColorBorderFocus:TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus:TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus:TColor read fColorFocus write fColorFocus;
    property ColorRO:TColor read fColorRO write fColorRO;
    property ColorRW:TColor read fColorRW write fColorRW;
    property Flat:boolean read fFlat write fFlat;
    property FlatBorder:integer read fFlatBorder write fFlatBorder;
    property DropDownCount:integer read fDropDownCount write fDropDownCount;
    property DropHeigth: integer read fDropDownHeight write fDropDownHeight;
  end;

  TESBInspTZComboBoxEditLink = class(TInspectorEditLink)
  private
    fEdit:TESBTZComboBox;
    fColorBorderFocus, fColorBorderUnfocus,fColorFocus,fColorRO,fColorRW:TColor;
    fDropDownCount, fOrigIndex, fDropDownHeight,fFlatBorder:integer;
    fFlat: Boolean;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function GetEditor: TWinControl; override;
    procedure CreateEditor(AParent: TWinControl); override;
    procedure DestroyEditor; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
    procedure SetOriginalValue; override;
    procedure StartEdit(Item: TInspectorItem); override;
    procedure StopEdit(Item: TInspectorItem); override;
    property ComboBox: TESBTZComboBox read fEdit;
  published
    property ColorBorderFocus:TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus:TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus:TColor read fColorFocus write fColorFocus;
    property ColorRO:TColor read fColorRO write fColorRO;
    property ColorRW:TColor read fColorRW write fColorRW;
    property FlatBorder:integer read fFlatBorder write fFlatBorder;
    property Flat:boolean read fFlat write fFlat;
    property DropDownCount:integer read fDropDownCount write fDropDownCount;
    property DropHeigth: integer read fDropDownHeight write fDropDownHeight;
  end;

  TESBInspEMUComboBoxEditLink = class(TInspectorEditLink)
  private
    fEdit:TESBEMUComboBox;
    fColorBorderFocus, fColorBorderUnfocus,fColorFocus,fColorRO,fColorRW:TColor;
    fDropDownCount, fOrigIndex, fDropDownHeight,fFlatBorder:integer;
    fFlat: Boolean;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function GetEditor: TWinControl; override;
    procedure CreateEditor(AParent: TWinControl); override;
    procedure DestroyEditor; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
    procedure SetOriginalValue; override;
    procedure StartEdit(Item: TInspectorItem); override;
    procedure StopEdit(Item: TInspectorItem); override;
    property ComboBox: TESBEMUComboBox read fEdit;
  published
    property ColorBorderFocus:TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus:TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus:TColor read fColorFocus write fColorFocus;
    property ColorRO:TColor read fColorRO write fColorRO;
    property ColorRW:TColor read fColorRW write fColorRW;
    property FlatBorder:integer read fFlatBorder write fFlatBorder;
    property Flat:boolean read fFlat write fFlat;
    property DropDownCount:integer read fDropDownCount write fDropDownCount;
    property DropHeigth: integer read fDropDownHeight write fDropDownHeight;
  end;

  TESBInspDateTimeEditLink = class(TInspectorEditLink)
  private
    fEdit:TESBDateTimeEdit;
    fOrigValue: string;
    fFormatDate,fFormatTime: string;
    fFlatborder,fDay, fMonth, fYear, fHour, fMinute, fSecond, fMillisecond: integer;
    fColorBorderFocus, fColorBorderUnfocus, fColorFocus, fColorRO, fColorRW: TColor;
    fFlat: boolean;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function GetEditor: TWinControl; override;
    procedure CreateEditor(AParent: TWinControl); override;
    procedure DestroyEditor; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
    procedure SetOriginalValue; override;
    procedure StartEdit(Item: TInspectorItem); override;
    procedure StopEdit(Item: TInspectorItem); override;
  published
    property Flat: boolean read fFlat write fFlat;
    property FlatBorder:integer read fFlatBorder write fFlatBorder;
    property FormatDate:string read fFormatDate write fFormatDate;
    property FormatTime:string read fFormatTime write fFormatTime;
    property Day:integer read fDay write fDay;
    property Month:integer read fMonth write fMonth;
    property Year:integer read fYear write fYear;
    property Hour:integer read fHour write fHour;
    property Minute:integer read fMinute write fMinute;
    property Second:integer read fSecond write fSecond;
    property Millisecond:integer read fMillisecond write fMillisecond;
    property ColorBorderFocus:TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus:TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus:TColor read fColorFocus write fColorFocus;
    property ColorRO:TColor read fColorRO write fColorRO;
    property ColorRW:TColor read fColorRW write fColorRW;
  end;

  TESBInspSuperEditLink = class(TInspectorEditLink)
  private
    fEdit:TESBSuperEdit;
    fColorBorderFocus, fColorBorderUnfocus, fcolorFocus, fColorRO, fColorRW:TColor;
    fNullStr,fOrigValue: string;
    fFlatBorder,fDecimalPlaces: integer;
    fFlat,fNull,fShowThousandSeparators,fTrimLeading,fTrimTrailing: boolean;
  public
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;
    function GetEditor: TWinControl; override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
    procedure SetOriginalValue; override;
    procedure StartEdit(Item: TInspectorItem); override;
    procedure StopEdit(Item: TInspectorItem); override;
  published
    property ColorBorderFocus:TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus:TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus:TColor read fColorFocus write fColorFocus;
    property ColorRO:TColor read fColorRO write fColorRO;
    property ColorRW:TColor read fColorRW write fColorRW;
    property FlatBorder:integer read fFlatBorder write fFlatBorder;
    property DecimalPlaces:integer read fDecimalPlaces write fDecimalPlaces;
    property Flat:boolean read fFlat write fFlat;
    property Null:boolean read fNull write fNull;
    property NullStr:string read fNullStr write fNullStr;
    property ShowThousandSeparators: boolean read fShowThousandSeparators write fShowThousandSeparators;
    property TrimLeading: boolean read fTrimLeading write fTrimLeading;
    property TrimTrailing: boolean read fTrimTrailing write fTrimTrailing;
  end;

  TESBInspComplexEditLink = class(TInspectorEditLink)
  private
    fEdit:TESBComplexEdit;
    fColor, fColorBorderFocus, fColorBorderUnfocus, fColorFocus, fColorRO, fColorRW: TColor;
    fDecimalPlaces,fFlatborder,fImag, fReal:integer;
    fFlat,fNull:boolean;
    fNullStr,fOrigValue:string;
  public
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;
    function GetEditor: TWinControl; override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
    procedure SetOriginalValue; override;
    procedure StartEdit(Item: TInspectorItem); override;
    procedure StopEdit(Item: TInspectorItem); override;
  published
    property Color:TColor read fColor write fColor;
    property ColorBorderFocus:TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus:TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus:TColor read fColorFocus write fColorFocus;
    property ColorRO:TColor read fColorRO write fColorRO;
    property ColorRW:TColor read fColorRW write fColorRW;
    property DecimalPlaces:integer read fDecimalPlaces write fDecimalPlaces;
    property FlatBorder:integer read fFlatBorder write fFlatBorder;
    property Flat:boolean read fFlat write fFlat;
    property Null:boolean read fNull write fNull;
    property NullStr:string read fNullStr write fNullStr;
    property ImaginaryPortion:integer read fImag write fImag;
    property RealPortion:integer read fReal write fReal;
  end;

  TESBInspFractionEditLink = class(TInspectorEditLink)
  private
    fEdit:TESBFractionEdit;
    fFlat,fNull:boolean;
    fOrigValue, fNullStr:string;
    fDenominator, fNumerator,fFlatBorder,fHeight,fLineWidth,fWidth: integer;
    fColorBorderFocus, fColorBorderUnfocus, fColorFocus, fColorRO, fColorRW: TColor;
  public
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;
    function GetEditor: TWinControl; override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
    procedure SetOriginalValue; override;
    procedure StartEdit(Item: TInspectorItem); override;
    procedure StopEdit(Item: TInspectorItem); override;
  published
    property FlatBorder:integer read fFlatBorder write fFlatBorder;
    property Flat:boolean read fFlat write fFlat;
    property Null:boolean read fNull write fNull;
    property NullStr:string read fNullStr write fNullStr;
    property Denominator:integer read fDenominator write fDenominator;
    property Numerator:integer read fNumerator write fNumerator;
    property ColorBorderFocus:TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus:TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus:TColor read fColorFocus write fColorFocus;
    property ColorRO:TColor read fColorRO write fColorRO;
    property ColorRW:TColor read fColorRW write fColorRW;
    property Height:integer read fHeight write fHeight;
    property LineWidth:integer read fLineWidth write fLineWidth;
    property Width:integer read fWidth write fWidth;
  end;

  TESBInspFractEditLink = class(TInspectorEditLink)
  private
    fEdit:TESBFractEdit;
    fFlatBorder,fBoundLower,fBoundUpper,fDecimalPlaces, fDecimalsFract: integer;
    fBoundsEnabled,fFlat,fNull,fTrimZeroes: boolean;
    fNullStr,fOrigValue: string;
    fColorBorderFocus, fColorBorderUnfocus, fColorFocus, fColorRO, fColorRW: TColor;
  public
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;
    function GetEditor: TWinControl; override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
    procedure SetOriginalValue; override;
    procedure StartEdit(Item: TInspectorItem); override;
    procedure StopEdit(Item: TInspectorItem); override;
  published
    property TrimTrailingZeroes: boolean read fTrimZeroes write fTrimZeroes;
    property FlatBorder:integer read fFlatBorder write fFlatBorder;
    property BoundLower: integer read fBoundLower write fBoundLower;
    property BoundUpper: integer read fBoundUpper write fBoundUpper;
    property DecimalPlaces: integer read fDecimalPlaces write fDecimalPlaces;
    property DecimalsFract: integer read fDecimalsFract write fDecimalsFract;
    property BoundsEnabled: boolean read fBoundsEnabled write fBoundsEnabled;
    property Flat: boolean read fFlat write fFlat;
    property Null: boolean read fNull write fNull;
    property NullStr: string read fNullStr write fNullStr;
    property ColorFocus: TColor read fColorFocus write fColorFocus;
    property ColorRO: TColor read fColorRO write fColorRO;
    property ColorRW: TColor read fColorRW write fColorRW;
    property ColorBorderFocus: TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus: TColor read fColorBorderUnfocus write fColorBorderUnfocus;
  end;

  TESBInspPCSEditLink = class(TInspectorEditLink)
  private
    fEdit:TESBPCSEdit;
    fColorBorderFocus, fColorBorderUnfocus,fColorFocus,fColorRO,fColorRW:TColor;
    fFlatBorder:integer;
    fFlat,fNull: Boolean;
    fNullStr,fOrigValue:string;
  public
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;
    function GetEditor: TWinControl; override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
    procedure SetOriginalValue; override;
    procedure StartEdit(Item: TInspectorItem); override;
    procedure StopEdit(Item: TInspectorItem); override;
  published
    property ColorBorderFocus:TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus:TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus:TColor read fColorFocus write fColorFocus;
    property ColorRO:TColor read fColorRO write fColorRO;
    property ColorRW:TColor read fColorRW write fColorRW;
    property FlatBorder:integer read fFlatBorder write fFlatBorder;
    property Flat:boolean read fFlat write fFlat;
    property NullStr:string read fNullStr write fNullStr;
    property Null:boolean read fNull write fNull;
  end;

  TESBInspBaseEditLink = class(TInspectorEditLink)
  private
    fEdit:TESBBaseEdit;
    fColorBorderFocus, fColorBorderUnfocus,fColorFocus,fColorRO,fColorRW:TColor;
    fFlatBorder:integer;
    fFlat,fNull: Boolean;
    fNullStr,fOrigValue: string;
    procedure CreateInstance(aParent:TWinControl); virtual;
  public
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;
    function GetEditor: TWinControl; override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    procedure SetOriginalValue; override;
    procedure StartEdit(Item: TInspectorItem); override;
    procedure StopEdit(Item: TInspectorItem); override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
  published
    property ColorBorderFocus:TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus:TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus:TColor read fColorFocus write fColorFocus;
    property ColorRO:TColor read fColorRO write fColorRO;
    property ColorRW:TColor read fColorRW write fColorRW;
    property FlatBorder:integer read fFlatBorder write fFlatBorder;
    property Flat:boolean read fFlat write fFlat;
    property Null:boolean read fNull write fNull;
    property NullStr:string read fNullStr write fNullStr;
  end;

  TESBInspPosEditLink = class(TESBInspBaseEditLink)
  private
    fCustomSeparators,fShowThousandSeparators:boolean;
    fCustomThousands:char;
  protected
    procedure CreateInstance(aParent:TWinControl); override;
  public
    procedure SetOriginalValue; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
  published
    property CustomSeparators: boolean read fCustomSeparators write fCustomSeparators;
    property CustomThousands: char read fCustomThousands write fCustomThousands;
    property ShowThousandSeparators: boolean read fShowThousandSeparators write fShowThousandSeparators;
   end;

  TESBInspIntEditLink = class(TESBInspBaseEditLink)
  private
    fCustomSeparators,fShowThousandSeparators:boolean;
    fCustomThousands:char;
  protected
    procedure CreateInstance(aParent:TWinControl); override;
  public
    procedure SetOriginalValue; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
  published
    property CustomSeparators: boolean read fCustomSeparators write fCustomSeparators;
    property CustomThousands: char read fCustomThousands write fCustomThousands;
    property ShowThousandSeparators: boolean read fShowThousandSeparators write fShowThousandSeparators;
  end;

  TESBInspPosFloatEditLink = class(TESBInspBaseEditLink)
   private
     fCustomSeparators,fShowThousandSeparators:boolean;
     fCustomThousands:char;
     fDecimalPlaces:integer;
  protected
    procedure CreateInstance(aParent:TWinControl); override;
  public
    procedure SetOriginalValue; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
  published
    property CustomSeparators: boolean read fCustomSeparators write fCustomSeparators;
    property CustomThousands: char read fCustomThousands write fCustomThousands;
    property DecimalPlaces: integer read fDecimalPlaces write fDecimalPlaces;
    property ShowThousandSeparators: boolean read fShowThousandSeparators write fShowThousandSeparators;
  end;

  TESBInspFloatEditLink = class(TESBInspBaseEditLink)
  private
    fCustomSeparators,fShowThousandSeparators:boolean;
    fCustomThousands:char;
    fDecimalPlaces:integer;
  protected
   procedure CreateInstance(aParent:TWinControl); override;
  public
    procedure SetOriginalValue; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
  published
    property CustomSeparators: boolean read fCustomSeparators write fCustomSeparators;
    property CustomThousands: char read fCustomThousands write fCustomThousands;
    property DecimalPlaces: integer read fDecimalPlaces write fDecimalPlaces;
    property ShowThousandSeparators: boolean read fShowThousandSeparators write fShowThousandSeparators;
  end;

  TESBInspSciFloatEditLink = class(TESBInspBaseEditLink)
  private
    fDecimalPlaces:integer;
    fShowThousandSeparators: boolean;
  protected
    procedure CreateInstance(aParent:TWinControl); override;
  public
    procedure SetOriginalValue; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
  published
    property DecimalPlaces:integer read fDecimalPlaces write fDecimalPlaces;
    property ShowThousandSeparators: boolean read fShowThousandSeparators write fShowThousandSeparators;
  end;

  TESBInspPercentEditLink = class(TESBInspBaseEditLink)
  private
    fCustomSeparators,fShowThousandSeparators:boolean;
    fCustomThousands,fCustomDecimal:char;
    fDecimalPlaces:integer;
  protected
   procedure CreateInstance(aParent:TWinControl); override;
  public
    procedure SetOriginalValue; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
  published
    property CustomSeparators: boolean read fCustomSeparators write fCustomSeparators;
    property CustomThousands: char read fCustomThousands write fCustomThousands;
    property DecimalPlaces: integer read fDecimalPlaces write fDecimalPlaces;
    property CustomDecimal: char read fCustomDecimal write fCustomDecimal;
    property ShowThousandSeparators: boolean read fShowThousandSeparators write fShowThousandSeparators;
  end;

  TESBInspIPEditLink = class(TESBInspBaseEditLink)
  private
    fBoundLower,fBoundUpper:string;
    fBoundsEnabled: boolean;
  protected
   procedure CreateInstance(aParent:TWinControl); override;
  public
    procedure SetOriginalValue; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
  published
    property BoundLower: string read fBoundLower write fBoundLower;
    property BoundUpper: string read fBoundUpper write fBoundUpper;
    property BoundsEnabled: boolean read fBoundsEnabled write fBoundsEnabled;
  end;

  TESBInspHexEditLink = class(TESBInspBaseEditLink)
  private
    fBoundLower,fBoundUpper:string;
    fBoundsEnabled: boolean;
  protected
    procedure CreateInstance(aParent:TWinControl); override;
  public
    procedure SetOriginalValue; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
  published
    property BoundLower: string read fBoundLower write fBoundLower;
    property BoundUpper: string read fBoundUpper write fBoundUpper;
    property BoundsEnabled: boolean read fBoundsEnabled write fBoundsEnabled;
  end;

  TESBInspYearEditLink = class(TESBInspBaseEditLink)
  private
    fBoundLowerYear,fBoundUpperYear:integer;
    fBoundsEnabled:boolean;
  protected
   procedure CreateInstance(aParent:TWinControl); override;
  public
    procedure SetOriginalValue; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
  published
    property BoundLowerYear: integer read fBoundLowerYear write fBoundLowerYear;
    property BoundUpperYear: integer read fBoundUpperYear write fBoundUpperYear;
    property BoundsEnabled: boolean read fBoundsEnabled write fBoundsEnabled;
  end;

  TESBInspDateEditLink = class(TESBInspBaseEditLink)
  private
    fBoundLowerYear,fBoundUpperYear:integer;
    fBoundLower,fBoundUpper:TDate;
    fBoundsEnabled, fBoundsYearEnable:boolean;
  protected
   procedure CreateInstance(aParent:TWinControl); override;
  public
    procedure SetOriginalValue; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
  published
    property BoundLowerYear: integer read fBoundLowerYear write fBoundLowerYear;
    property BoundUpperYear: integer read fBoundUpperYear write fBoundUpperYear;
    property BoundsYearEnabled: boolean read fBoundsYearEnable write fBoundsYearEnable;
    property BoundsEnabled: boolean read fBoundsEnabled write fBoundsEnabled;
    property BoundLower: TDate read fBoundLower write fBoundLower;
    property BoundUpper: TDate read fBoundUpper write fBoundUpper;
  end;

  TESBInspTimeEditLink = class(TESBInspBaseEditLink)
  private
    fBoundLower, fBoundUpper:TTime;
    fBoundsEnabled : boolean;
  protected
   procedure CreateInstance(aParent:TWinControl); override;
  public
    procedure SetOriginalValue; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
  published
    property BoundsEnabled: boolean read fBoundsEnabled write fBoundsEnabled;
    property BoundLower: TTime read fBoundLower write fBoundLower;
    property BoundUpper: TTime read fBoundUpper write fBoundUpper;
   end;

  TESBInspDOWEditLink = class(TESBInspBaseEditLink)
  private
    fBoundLower, fBoundUpper:integer;
    fBoundsEnabled : boolean;
  protected
    procedure CreateInstance(aParent:TWinControl); override;
  public
    procedure SetOriginalValue; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
  published
    property BoundsEnabled: boolean read fBoundsEnabled write fBoundsEnabled;
    property BoundLower: integer read fBoundLower write fBoundLower;
    property BoundUpper: integer read fBoundUpper write fBoundUpper;
  end;

  TESBInspMonthEditLink = class(TESBInspBaseEditLink)
  private
    fBoundLower, fBoundUpper:integer;
    fBoundsEnabled : boolean;
  protected
    procedure CreateInstance(aParent:TWinControl); override;
  public
    procedure SetOriginalValue; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
  published
    property BoundsEnabled: boolean read fBoundsEnabled write fBoundsEnabled;
    property BoundLower: integer read fBoundLower write fBoundLower;
    property BoundUpper: integer read fBoundUpper write fBoundUpper;
  end;

  TESBInspCurrEditLink = class(TESBInspBaseEditLink)
  private
    fBoundLower, fBoundUpper:integer;
    fBoundsEnabled,fCustomSeparators,fShowThousandSeparators : boolean;
    fCurrencyStr: string;
    fCustomDecimal, fCustomThousands: char;
    fDecimalPlaces: integer;
  protected
    procedure CreateInstance(aParent:TWinControl); override;
  public
    procedure SetOriginalValue; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
  published
    property BoundsEnabled: boolean read fBoundsEnabled write fBoundsEnabled;
    property BoundLower: integer read fBoundLower write fBoundLower;
    property BoundUpper: integer read fBoundUpper write fBoundUpper;
    property CustomSeparators: boolean read fCustomSeparators write fCustomSeparators;
    property CurrencyStr: string read fCurrencyStr write fCurrencyStr;
    property CustomDecimal: char read fCustomDecimal write fCustomDecimal;
    property CustomThousands: char read fCustomThousands write fCustomThousands;
    property DecimalPlaces: integer read fDecimalPlaces write fDecimalPlaces;
    property ShowThousandSeparators: boolean read fShowThousandSeparators write fShowThousandSeparators;
  end;

  TESBInspLongCurrEditLink = class(TESBInspBaseEditLink)
  private
    fBoundLower, fBoundUpper:integer;
    fBoundsEnabled,fCustomSeparators,fShowThousandSeparators : boolean;
    fCurrencyStr: string;
    fCustomDecimal, fCustomThousands: char;
    fDecimalPlaces: integer;
  protected
   procedure CreateInstance(aParent:TWinControl); override;
  public
    procedure SetOriginalValue; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
  published
    property BoundsEnabled: boolean read fBoundsEnabled write fBoundsEnabled;
    property BoundLower: integer read fBoundLower write fBoundLower;
    property BoundUpper: integer read fBoundUpper write fBoundUpper;
    property CustomSeparators: boolean read fCustomSeparators write fCustomSeparators;
    property CurrencyStr: string read fCurrencyStr write fCurrencyStr;
    property CustomDecimal: char read fCustomDecimal write fCustomDecimal;
    property CustomThousands: char read fCustomThousands write fCustomThousands;
    property DecimalPlaces: integer read fDecimalPlaces write fDecimalPlaces;
    property ShowThousandSeparators: boolean read fShowThousandSeparators write fShowThousandSeparators;
  end;

  TESBInspCurrencyEditLink = class(TESBInspBaseEditLink)
  private
    fBoundLower, fBoundUpper:integer;
    fBoundsEnabled,fCustomSeparators,fShowThousandSeparators : boolean;
    fCurrencyStr: string;
    fCustomDecimal, fCustomThousands: char;
    fDecimalPlaces: integer;
  protected
    procedure CreateInstance(aParent:TWinControl); override;
  public
    procedure SetOriginalValue; override;
    procedure SetProperties(R: TRect; Item: TInspectorItem); override;
  published
    property BoundsEnabled: boolean read fBoundsEnabled write fBoundsEnabled;
    property BoundLower: integer read fBoundLower write fBoundLower;
    property BoundUpper: integer read fBoundUpper write fBoundUpper;
    property CustomSeparators: boolean read fCustomSeparators write fCustomSeparators;
    property CurrencyStr: string read fCurrencyStr write fCurrencyStr;
    property CustomDecimal: char read fCustomDecimal write fCustomDecimal;
    property CustomThousands: char read fCustomThousands write fCustomThousands;
    property DecimalPlaces: integer read fDecimalPlaces write fDecimalPlaces;
    property ShowThousandSeparators: boolean read fShowThousandSeparators write fShowThousandSeparators;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TMS BarLinks',[
    TESBInspIntSpinEditLink,
    TESBInspPosSpinEditLink,
    TESBInspYearSpinEditLink,
    TESBInspMonthSpinEditLink,
    TESBInspDOWSpinEditLink,
    TESBInspFloatSpinEditLink,
    TESBInspDateTimeEditLink,
    TESBInspSuperEditLink,
    TESBInspPCSEditLink,
    TESBInspFractionEditLink,
    TESBInspFractEditLink,
    TESBInspPosEditLink,
    TESBInspIntEditLink,
    TESBInspFloatEditLink,
    TESBInspIPEditLink,
    TESBInspPercentEditLink,
    TESBInspHexEditLink,
    TESBInspSciFloatEditLink,
    TESBInspPosFloatEditLink,
    TESBInspYearEditLink,
    TESBInspDateEditLink,
    TESBInspTimeEditLink,
    TESBInspDOWEditLink,
    TESBInspCurrEditLink,
    TESBInspMonthEditLink,
    TESBInspLongCurrEditLink,
    TESBInspCurrencyEditLink,
    TESBInspLookupComboBoxEditLink,
    TESBInspMonthComboBoxEditLink,
    TESBInspDOWComboBoxEditLink,
    TESBInspTZComboBoxEditLink,
    TESBInspEMUComboBoxEditLink,
    TESBInspCountryComboBoxEditLink,
    TESBInspComplexEditLink]);
end;

{ TESBInspBaseSpinEditLink }

constructor TESBInspBaseSpinEditLink.Create(aOwner: TComponent);
begin
  inherited;
  fEdit := nil;
  WantKeyLeftRight:=true;
  WantKeyHomeEnd:=true;
  WantKeyUpDown:=true;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  ColorFocus := clWindow;
  ColorRO := clWindow;
  ColorRW := clWindow;
  FlatEdit := true;
end;

procedure TESBInspBaseSpinEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  if not Assigned(fEdit) then
          CreateInstance(aParent);
  fEdit.Width := 0;
  fEdit.Height := 0;
  fEdit.Parent := aParent;
  fEdit.Visible := false;
  fEdit.FlatEdit := true;
  fEdit.OnKeyDown := EditKeyDown;
end;

procedure TESBInspBaseSpinEditLink.CreateInstance(aParent: TWinControl);
begin
  fEdit := TESBBaseSpinEdit.Create(aParent);
end;

destructor TESBInspBaseSpinEditLink.Destroy;
begin
  if Assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBInspBaseSpinEditLink.DestroyEditor;
begin
  if Assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
  inherited;
end;

function TESBInspBaseSpinEditLink.GetEditor: TWinControl;
begin
  Result := fEdit;
end;

procedure TESBInspBaseSpinEditLink.SetOriginalValue;
begin
  inherited;
  fEdit.Text := fOrigValue;
end;

procedure TESBInspBaseSpinEditLink.StartEdit(Item: TInspectorItem);
var
  s:string;
begin
  inherited;
  s := Item.TextValue;
  fOrigValue := s;
  fEdit.Text := s;
  fEdit.Visible := True;
  fEdit.SetFocus;
end;

procedure TESBInspBaseSpinEditLink.StopEdit(Item: TInspectorItem);
begin
  inherited;
  Item.TextValue := fEdit.Text;
  fEdit.Visible := False;
end;

procedure TESBInspBaseSpinEditLink.SetProperties(R: TRect; Item: TInspectorItem);
begin
  inherited;
  InflateRect(R,-2,-1);
  R.Right := R.Right;

  fEdit.Left := R.Left;
  fEdit.Top := R.Top;
  fEdit.Width := R.Right - R.Left;
  fEdit.Height := (R.Bottom - R.Top);
  fEdit.Font.Assign(Item.InspectorPanel.Font);
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.FlatSpinBtns := fFlatSpinBtns;
  fEdit.FlatEdit := fFlatEdit;
end;

{TESBInspIntSpinEditLink}
procedure TESBInspIntSpinEditLink.CreateInstance(aParent: TWinControl);
begin
  fEdit:=TESBIntSpinEdit.Create(aParent);
end;

procedure TESBInspIntSpinEditLink.SetOriginalValue;
begin
  TESBIntSpinEdit(fEdit).Value := StrToInt(fOrigValue);
end;

procedure TESBInspIntSpinEditLink.SetProperties(R: TRect; Item: TInspectorItem);
begin
  inherited;
  InflateRect(R,-2,-1);
  R.Right := R.Right+2;

  fEdit.Left := R.Left-1;
  fEdit.Top := R.Top-1;
  fEdit.Width := (R.Right - R.Left)+1;
  fEdit.Height := R.Bottom - R.Top;
  fEdit.Font.Assign(Item.InspectorPanel.Font);

  TESBIntSpinEdit(fEdit).ShowThousandSeparators := fShowThousandSeparators;
end;

{ TESBInspDateTimeEditLink }

constructor TESBInspDateTimeEditLink.Create(aOwner: TComponent);
begin
  inherited;
  fEdit := nil;
  WantKeyLeftRight:=true;
  WantKeyHomeEnd:=true;
  WantKeyUpDown:=true;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  ColorFocus := clWindow;
  ColorRO := clWindow;
  ColorRW := clWindow;
  Flat := true;
  Day := 10;
  Month := 10;
  Year := 2002;
  Hour := 20;
  Minute := 14;
  Second := 10;
  Millisecond := 10;
end;

procedure TESBInspDateTimeEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  if not Assigned(fEdit) then
    fEdit := TESBDateTimeEdit.Create(aParent);
  fEdit.Width := 0;
  fEdit.Height := 0;
  fEdit.Parent := AParent;
  fEdit.Visible := False;
  fEdit.OnKeyDown := EditKeyDown;
end;

destructor TESBInspDateTimeEditLink.Destroy;
begin
  if Assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBInspDateTimeEditLink.DestroyEditor;
begin
  inherited;
  if assigned(fEdit) then
    fEdit.Free;
  fEdit:=nil;
end;

function TESBInspDateTimeEditLink.GetEditor: TWinControl;
begin
  Result := fEdit;
end;

procedure TESBInspDateTimeEditLink.SetOriginalValue;
var
  dateT : TDateTime;
begin
  inherited;
  dateT := StrtoDateTime(fOrigValue);
  TESBDateTimeEdit(fEdit).AsDateTime := dateT;
end;

procedure TESBInspDateTimeEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  InflateRect(R,-2,-1);
  R.Right := R.Left;

  fEdit.Left := R.Left;
  fEdit.Top := R.Top;
  fEdit.Width := R.Right - R.Left;
  fEdit.Height := R.Bottom - R.Top;
  fEdit.Font.Assign(Item.InspectorPanel.Font);

  fEdit.FormatDate := fFormatDate;
  fEdit.FormatTime := fFormatTime;
  fEdit.Day := fDay;
  fEdit.Month := fMonth;
  fEdit.Year := fYear;
  fEdit.Hour := fHour;
  fEdit.Minute := fMinute;
  fEdit.Second := fSecond;
  fEdit.Millisecond := fMillisecond;
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
end;

procedure TESBInspDateTimeEditLink.StartEdit(Item: TInspectorItem);
var
  s:string;
begin
  inherited;
  s := Item.TextValue;
  fOrigValue := s;
  if fOrigValue <> '' then
    fEdit.AsDateTime := StrToDateTime(s)
  else
    fEdit.AsDateTime := StrToDateTime('10/10/2002 14:12:13');
  fEdit.Visible := True;
  fEdit.SetFocus;
end;

procedure TESBInspDateTimeEditLink.StopEdit(Item: TInspectorItem);
begin
  inherited;
  Item.TextValue := fEdit.DateTimeStr;
  fEdit.Visible := False;
end;

{ TESBInspSuperEditLink }

constructor TESBInspSuperEditLink.Create(AOwner: TComponent);
begin
  inherited;
  WantKeyLeftRight := true;
  WantKeyHomeEnd := true;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  ColorFocus := clWindow;
  ColorRO := clWindow;
  ColorRW := clWindow;
  Flat := true;
end;

procedure TESBInspSuperEditLink.CreateEditor(AParent: TWinControl);
begin
  inherited;
  if not Assigned(fEdit) then
    fEdit := TESBSuperEdit.Create(aParent);

  fEdit.Width := 10;
  fEdit.Height := 10;
  fEdit.Parent:=aParent;
  fEdit.Visible := false;
  fEdit.Flat:=true;
  fEdit.OnKeyDown := EditKeyDown;
end;

destructor TESBInspSuperEditLink.Destroy;
begin
  if Assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBInspSuperEditLink.DestroyEditor;
begin
  inherited;
  if assigned(fEdit) then
    fEdit.Free;
  fEdit:=nil;
end;

function TESBInspSuperEditLink.GetEditor: TWinControl;
begin
  Result := fEdit;
end;

procedure TESBInspSuperEditLink.SetOriginalValue;
begin
  inherited;
  if (fOrigValue<>'') then
    fEdit.Text := fOrigValue;

end;

procedure TESBInspSuperEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  InflateRect(R,-2,-1);
  R.Right := R.Right - 20;

  fEdit.Left := R.Left;
  fEdit.Top := R.Top;
  fEdit.Width := R.Right - R.Left;
  fEdit.Height := R.Bottom - R.Top;
  fEdit.BorderStyle := bsNone;
  fEdit.Font.Assign(Item.InspectorPanel.Font);
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.FlatBorder := fFlatBorder;
  fEdit.Flat := fFlat;
  fEdit.Null := fNull;
  fEdit.NullStr := fNullStr;
  fEdit.TrimLeading := fTrimLeading;
  fEdit.TrimTrailing := fTrimTrailing;
end;

procedure TESBInspSuperEditLink.StartEdit(Item: TInspectorItem);
var
  s:string;
begin
  inherited;
  s := Item.TextValue;
  fOrigValue := s;
  fEdit.Text := s;
  fEdit.Visible := True;
  fEdit.SetFocus;
end;

procedure TESBInspSuperEditLink.StopEdit(Item: TInspectorItem);
begin
  inherited;
  Item.TextValue := fEdit.Text;
  fEdit.Visible := False;
end;

{ TESBInspComplexEditLink }

constructor TESBInspComplexEditLink.Create(aOwner: TComponent);
begin
  inherited;
  WantKeyLeftRight:=true;
  WantKeyHomeEnd:=true;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  ColorFocus := clWindow;
  ColorRO := clWindow;
  ColorRW := clWindow;
  Color := clWindow;
  Flat := true;
end;

procedure TESBInspComplexEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  if not Assigned(fEdit) then
    fEdit := TESBComplexEdit.Create(aParent);

  fEdit.Width := 10;
  fEdit.Height := 10;
  fEdit.Parent:=aParent;
  fEdit.Visible := false;
  fEdit.Flat:=true;
  fEdit.OnKeyDown := EditKeyDown;
end;

destructor TESBInspComplexEditLink.Destroy;
begin
  if Assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBInspComplexEditLink.DestroyEditor;
begin
  inherited;
  if assigned(fEdit) then
    fEdit.Free;
  fEdit:=nil;
end;

function TESBInspComplexEditLink.GetEditor: TWinControl;
begin
  Result := fEdit;
end;

procedure TESBInspComplexEditLink.SetOriginalValue;
begin
  inherited;
  if (fOrigValue<>'') and (pos(':',fOrigValue)>0) then
  begin
   fEdit.RealPortion:=strtofloat(copy(fOrigValue,1,pos(':',fOrigValue)-1));
   fEdit.ImaginaryPortion:=strtofloat(copy(fOrigValue,pos(':',fOrigValue)+1,length(fOrigValue)));
  end;
end;

procedure TESBInspComplexEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  InflateRect(R,-2,-1);
  R.Right := R.Right - 20;

  fEdit.Left := R.Left;
  fEdit.Top := R.Top;
  fEdit.Width := R.Right - R.Left;
  fEdit.Height := R.Bottom - R.Top;
  fEdit.Font.Assign(Item.InspectorPanel.Font);

  fEdit.Color := fColor;
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.Flat := fFlat;
  fEdit.FlatBorder := fFlatBorder;
  fEdit.Null := fNull;
  fEdit.NullStr := fNullStr;
  fEdit.DecimalPlaces := fDecimalPlaces;
  fEdit.ImaginaryPortion := fImag;
  fEdit.RealPortion := fReal;
end;

procedure TESBInspComplexEditLink.StartEdit(Item: TInspectorItem);
var
  s:string;
begin
  inherited;
  s := Item.TextValue;
  fOrigValue := s;

  if fOrigValue <> '' then
  begin
    fEdit.RealPortion := StrToFloat(copy(s,1,pos(':',s)-1));
    fEdit.ImaginaryPortion := StrToFloat(copy(s,pos(':',s)+1,length(s)));
  end
  else
  begin
    fEdit.RealPortion := 0;
    fEdit.ImaginaryPortion := 0;
  end;

  fEdit.Visible := True;
  fEdit.SetFocus;
end;

procedure TESBInspComplexEditLink.StopEdit(Item: TInspectorItem);
begin
  inherited;
  Item.TextValue := FloatToStr(fEdit.RealPortion)+': ' + FloatToStr(fEdit.ImaginaryPortion);
  fEdit.Visible := False;
end;

{ TESBInspFloatSpinEditLink }
constructor TESBInspFloatSpinEditLink.Create(aOwner: TComponent);
begin
  inherited;
  WantKeyLeftRight:=true;
  WantKeyHomeEnd:=true;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  ColorFocus := clWindow;
  ColorRO := clWindow;
  ColorRW := clWindow;
  DecimalPlaces := 2;
  FlatEdit := true;
end;

procedure TESBInspFloatSpinEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  if not Assigned(fEdit) then
    fEdit := TESBFloatSpinEdit.Create(aParent);

  fEdit.Width := 10;
  fEdit.Height := 10;
  fEdit.Parent:=aParent;
  fEdit.Visible := false;
  fEdit.FlatEdit := true;
  fEdit.OnKeyDown := EditKeyDown;
end;

destructor TESBInspFloatSpinEditLink.Destroy;
begin
  if Assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBInspFloatSpinEditLink.DestroyEditor;
begin
  inherited;
  if Assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
end;

function TESBInspFloatSpinEditLink.GetEditor: TWinControl;
begin
  Result := fEdit;
end;

procedure TESBInspFloatSpinEditLink.SetOriginalValue;
begin
  fEdit.Value := StrToFloat(fOrigValue);
end;

procedure TESBInspFloatSpinEditLink.SetProperties(R: TRect; Item: TInspectorItem);
begin
  inherited;
  InflateRect(R,-2,-1);
  R.Right := R.Right+2;

  fEdit.Left := R.Left-1;
  fEdit.Top := R.Top-1;
  fEdit.Width := (R.Right - R.Left)+1;
  fEdit.Height := R.Bottom - R.Top;
  fEdit.Font.Assign(Item.InspectorPanel.Font);

  fEdit.ShowThousandSeparators := fShowThousandSeparators;
  fEdit.DecimalPlaces := fDecimalPlaces;
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.DecimalPlaces := fDecimalPlaces;
  fEdit.FlatBorder := fFlatBorder;
  fEdit.FlatEdit := fFlatEdit;
  fEdit.Null := fNull;
  fEdit.NullStr := fNullStr;
  fEdit.FlatSpinBtns := fFlatSpinBtns;
end;

procedure TESBInspFloatSpinEditLink.StartEdit(Item: TInspectorItem);
begin
  inherited;
  fEdit.Text := Item.TextValue;
  fEdit.Visible := true;
  fEdit.SetFocus;
end;

procedure TESBInspFloatSpinEditLink.StopEdit(Item: TInspectorItem);
begin
  inherited;
  fEdit.Visible := false;
  Item.TextValue := fEdit.Text;
end;

{ TESBInspYearSpinEditLink }
procedure TESBInspYearSpinEditLink.CreateInstance(aParent: TWinControl);
begin
  inherited;
  fEdit := TESBYearSpinEdit.Create(aParent);
end;

procedure TESBInspYearSpinEditLink.SetOriginalValue;
begin
  inherited;
    if (fOrigValue='') then
      TESBYearSpinEdit(fEdit).Year := 1900
    else
      TESBYearSpinEdit(fEdit).Year := StrToInt(fOrigValue);
end;

procedure TESBInspYearSpinEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  R.Right := R.Right+2;
  fEdit.Left := R.Left-1;
  fEdit.Top := R.Top - 1;
  fEdit.Width := (R.Right - R.Left)+1;
  fEdit.Height := R.Bottom - R.Top;
  fEdit.Font.Assign(Item.InspectorPanel.Font);

  TESBYearSpinEdit(fEdit).YearCutoff := fYearCutOff;

end;

{ TESBInspFractionEditLink }

constructor TESBInspFractionEditLink.Create(aOwner: TComponent);
begin
  inherited;
  WantKeyLeftRight:=true;
  WantKeyHomeEnd:=true;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  ColorFocus := clWindow;
  ColorRO := clWindow;
  ColorRW := clWindow;
  Flat := true;
  LineWidth := 1;
  Height := 46;
end;

procedure TESBInspFractionEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  if not Assigned(fEdit) then
    fEdit := TESBFractionEdit.Create(aParent);
  fEdit.Width := 10;
  fEdit.Height := 32;
  fEdit.Parent:=aParent;
  fEdit.Visible := false;
  fEdit.OnKeyDown := EditKeyDown;
end;

destructor TESBInspFractionEditLink.Destroy;
begin
  if Assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBInspFractionEditLink.DestroyEditor;
begin
  inherited;
  if Assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
end;

function TESBInspFractionEditLink.GetEditor: TWinControl;
begin
  Result := fEdit;
end;

procedure TESBInspFractionEditLink.SetOriginalValue;
begin
  inherited;
  if (fOrigValue<>'') and (pos('/',fOrigValue)>0) then
  begin
    fEdit.Numerator:=StrToInt(copy(fOrigValue,1,pos('/',fOrigValue)-1));
    fEdit.Denominator:=StrToInt(copy(fOrigValue,pos('/',fOrigValue)+1,length(fOrigValue)));
  end;
end;

procedure TESBInspFractionEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  InflateRect(R,-2,-1);
  R.Right := R.Right;

  fEdit.Left := R.Left;
  fEdit.Top := R.Top;
  fEdit.Width := R.Right - R.Left;
  fEdit.Height := R.Bottom - R.Top;

  fEdit.Font.Assign(Item.InspectorPanel.Font);

  fEdit.Flat := fFlat;
  fEdit.FlatBorder := fFlatBorder;
  fEdit.Null := fNull;
  fEdit.NullStr := fNullStr;
  fEdit.Denominator := fDenominator;
  fEdit.Numerator := fNumerator;
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.LineWidth := fLineWidth;
  fEdit.Height := fHeight;
end;

procedure TESBInspFractionEditLink.StartEdit(Item: TInspectorItem);
var
  s:string;
begin
  inherited;
  s := Item.TextValue;
  fOrigValue := s;

  if fOrigValue <> '' then
  begin
    fEdit.Numerator:=StrToInt(copy(fOrigValue,1,pos('/',fOrigValue)-1));
    fEdit.Denominator:=StrToInt(copy(fOrigValue,pos('/',fOrigValue)+1,length(fOrigValue)));
  end
  else
  begin
    fEdit.Denominator := 0;
    fEdit.Numerator := 0;
  end;

  fEdit.Visible := True;
  fEdit.SetFocus;
end;

procedure TESBInspFractionEditLink.StopEdit(Item: TInspectorItem);
begin
  inherited;
  Item.TextValue :=inttostr(fEdit.Numerator)+'/'+inttostr(fEdit.Denominator);
  fEdit.Visible := false;
end;

{ TESBInspFractEditLink }

constructor TESBInspFractEditLink.Create(aOwner: TComponent);
begin
  inherited;
  WantKeyLeftRight:=true;
  WantKeyHomeEnd:=true;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  ColorFocus := clWindow;
  ColorRO := clWindow;
  ColorRW := clWindow;
  Flat := true;
end;

procedure TESBInspFractEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  if not Assigned(fEdit) then
    fEdit := TESBFractEdit.Create(aParent);
  fEdit.Width := 10;
  fEdit.Height := 20;
  fEdit.Parent:=aParent;
  fEdit.Visible := false;
  fEdit.OnKeyDown := EditKeyDown;
end;

destructor TESBInspFractEditLink.Destroy;
begin
  if not Assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBInspFractEditLink.DestroyEditor;
begin
  inherited;
  if not Assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
end;

function TESBInspFractEditLink.GetEditor: TWinControl;
begin
  Result := fEdit;
end;

procedure TESBInspFractEditLink.SetOriginalValue;
begin
  inherited;
  if (fOrigValue <> '') then
   fEdit.text :=fOrigValue;
end;

procedure TESBInspFractEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  InflateRect(R,-2,-1);
  R.Right := R.Right;

  fEdit.Left := R.Left;
  fEdit.Top := R.Top;
  fEdit.Width := R.Right - R.Left;
  fEdit.Height := R.Bottom - R.Top;

  fEdit.Font.Assign(Item.InspectorPanel.Font);

  fEdit.Flat := fFlat;
  fEdit.FlatBorder := fFlatBorder;
  fEdit.Null := fNull;
  fEdit.NullStr := fNullStr;
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.TrimTrailingZeroes := fTrimZeroes;
  fEdit.DecimalPlaces := fDecimalPlaces;
  fEdit.DecimalsFract := fDecimalsFract;
  fEdit.BoundLower := fBoundLower;
  fEdit.BoundUpper := fBoundUpper;
  fEdit.BoundsEnabled := fBoundsEnabled;
end;

procedure TESBInspFractEditLink.StartEdit(Item: TInspectorItem);
begin
  inherited;
  if (fOrigValue<>'') then
   fEdit.text :=fOrigValue;

  fEdit.Visible := True;
  fEdit.SetFocus;
end;

procedure TESBInspFractEditLink.StopEdit(Item: TInspectorItem);
begin
  inherited;
  Item.TextValue := fEdit.Text;
  fEdit.Visible := false;

end;

{ TESBInspPCSEditLink }
constructor TESBInspPCSEditLink.Create(aOwner: TComponent);
begin
  inherited;
 WantKeyLeftRight:=true;
 WantKeyHomeEnd:=true;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  ColorFocus := clWindow;
  ColorRO := clWindow;
  ColorRW := clWindow;
  Flat := true;
end;

procedure TESBInspPCSEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  if not Assigned(fEdit) then
    fEdit := TESBPCSEdit.Create(aParent);
  fEdit.Width := 10;
  fEdit.Height := 20;
  fEdit.Parent:=aParent;
  fEdit.Visible := false;
  fEdit.OnKeyDown := EditKeyDown;
end;

destructor TESBInspPCSEditLink.Destroy;
begin
  if assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBInspPCSEditLink.DestroyEditor;
begin
  inherited;
  if assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
end;

function TESBInspPCSEditLink.GetEditor: TWinControl;
begin
  result := fEdit;
end;

procedure TESBInspPCSEditLink.SetOriginalValue;
begin
  inherited;
  if (fOrigValue <> '') then
    fEdit.Text := fOrigValue;
end;

procedure TESBInspPCSEditLink.SetProperties(R: TRect; Item: TInspectorItem);
begin
  inherited;
  InflateRect(R,-2,-1);
  R.Right := R.Right;
  fEdit.Left := R.Left;
  fEdit.Top := R.Top;
  fEdit.Width := R.Right - R.Left;
  fEdit.Height := R.Bottom - R.Top;
  fEdit.Font.Assign(Item.InspectorPanel.Font);

  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.Flat := fFlat;
  fEdit.FlatBorder := fFlatBorder;
  fEdit.Null := fNull;
  fEdit.NullStr := fNullStr;
end;

procedure TESBInspPCSEditLink.StartEdit(Item: TInspectorItem);
begin
  inherited;
  fEdit.Text := Item.TextValue;
  fEdit.Visible := true;
  fEdit.SetFocus;
end;

procedure TESBInspPCSEditLink.StopEdit(Item: TInspectorItem);
begin
  inherited;
  Item.TextValue := fEdit.Text;
  fEdit.Visible := False;
end;

{ TESBInspBaseEditLink }

constructor TESBInspBaseEditLink.Create(aOwner: TComponent);
begin
  inherited;
  fEdit := nil;
  WantKeyLeftRight:=true;
  WantKeyHomeEnd:=true;
  WantKeyUpDown:=true;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  ColorFocus := clWindow;
  ColorRO := clWindow;
  ColorRW := clWindow;
  Flat := true;
end;

procedure TESBInspBaseEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  if not Assigned(fEdit) then
          CreateInstance(aParent);
  fEdit.Width := 0;
  fEdit.Height := 0;
  fEdit.Parent := aParent;
  fEdit.Visible := false;
  fEdit.OnKeyDown := EditKeyDown;
end;

procedure TESBInspBaseEditLink.CreateInstance(aParent: TWinControl);
begin
  fEdit := TESBBaseEdit.Create(aParent);
end;

destructor TESBInspBaseEditLink.Destroy;
begin
  if Assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBInspBaseEditLink.DestroyEditor;
begin
  inherited;
  if Assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
end;

function TESBInspBaseEditLink.GetEditor: TWinControl;
begin
  Result := fEdit;
end;

procedure TESBInspBaseEditLink.SetOriginalValue;
begin
  inherited;
  fEdit.Text := fOrigValue;
end;

procedure TESBInspBaseEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  InflateRect(R,-2,-1);
  R.Right := R.Right;

  fEdit.Left := R.Left;
  fEdit.Top := R.Top;
  fEdit.Width := R.Right - R.Left;
  fEdit.Height := R.Bottom - R.Top;
  fEdit.Font.Assign(Item.InspectorPanel.Font);

  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.Flat := fFlat;
  fEdit.FlatBorder := fFlatBorder;
  fEdit.Null := fNull;
  fEdit.NullStr := fNullStr;
end;

procedure TESBInspBaseEditLink.StartEdit(Item: TInspectorItem);
var
  s:string;
begin
  inherited;
  s := Item.TextValue;
  fOrigValue := s;
  fEdit.Text := s;
  fEdit.Visible := True;
  fEdit.SetFocus;
end;

procedure TESBInspBaseEditLink.StopEdit(Item: TInspectorItem);
begin
  inherited;
  Item.TextValue := fEdit.Text;
  fEdit.Visible := False;
end;

{ TESBInspPosEditLink }

procedure TESBInspPosEditLink.CreateInstance(aParent: TWinControl);
begin
  inherited;
  fEdit:=TESBPosEdit.Create(aParent);
end;

procedure TESBInspPosEditLink.SetOriginalValue;
begin
  inherited;
  fEdit.Text := fOrigValue;
end;

procedure TESBInspPosEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  InflateRect(R,-2,-1);
  R.Right := R.Right;

  fEdit.Left := R.Left;
  fEdit.Top := R.Top;
  fEdit.Width := R.Right - R.Left;
  fEdit.Height := R.Bottom - R.Top;
  fEdit.Font.Assign(Item.InspectorPanel.Font);

  TESBPosEdit(fEdit).CustomSeparators := fCustomSeparators;
  TESBPosEdit(fEdit).CustomThousands := fCustomThousands;
  TESBPosEdit(fEdit).ShowThousandSeparators := fShowThousandSeparators;
end;

{ TESBInspIntEditLink }

procedure TESBInspIntEditLink.CreateInstance(aParent: TWinControl);
begin
  inherited;
  fEdit:=TESBIntEdit.Create(aParent);
end;

procedure TESBInspIntEditLink.SetOriginalValue;
begin
  inherited;
  fEdit.Text := fOrigValue;
end;

procedure TESBInspIntEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  InflateRect(R,-2,-1);
  R.Right := R.Right;

  fEdit.Left := R.Left;
  fEdit.Top := R.Top;
  fEdit.Width := R.Right - R.Left;
  fEdit.Height := R.Bottom - R.Top;
  fEdit.Font.Assign(Item.InspectorPanel.Font);

  TESBIntEdit(fEdit).CustomSeparators := fCustomSeparators;
  TESBIntEdit(fEdit).CustomThousands := fCustomThousands;
  TESBIntEdit(fEdit).ShowThousandSeparators := fShowThousandSeparators;

end;

{ TESBInspPosFloatEditLink }

procedure TESBInspPosFloatEditLink.CreateInstance(aParent: TWinControl);
begin
  inherited;
  fEdit:=TESBPosFloatEdit.Create(aParent);
end;

procedure TESBInspPosFloatEditLink.SetOriginalValue;
begin
  inherited;
  fEdit.Text := fOrigValue;
end;

procedure TESBInspPosFloatEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  InflateRect(R,-2,-1);
  R.Right := R.Right;

  fEdit.Left := R.Left;
  fEdit.Top := R.Top;
  fEdit.Width := R.Right - R.Left;
  fEdit.Height := R.Bottom - R.Top;
  fEdit.Font.Assign(Item.InspectorPanel.Font);

  TESBPosFloatEdit(fEdit).CustomSeparators := fCustomSeparators;
  TESBPercentEdit(fEdit).ShowThousandSeparators := fShowThousandSeparators;
  TESBPosFloatEdit(fEdit).CustomThousands := fCustomThousands;
  TESBPosFloatEdit(fEdit).DecimalPlaces := fDecimalPlaces;
end;

{ TESBInspFloatEditLink }

procedure TESBInspFloatEditLink.CreateInstance(aParent: TWinControl);
begin
  inherited;
  fEdit:=TESBFloatEdit.Create(aParent);
end;

procedure TESBInspFloatEditLink.SetOriginalValue;
begin
  inherited;
  fEdit.Text := fOrigValue;
end;

procedure TESBInspFloatEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  InflateRect(R,-2,-1);
  R.Right := R.Right;

  fEdit.Left := R.Left;
  fEdit.Top := R.Top;
  fEdit.Width := R.Right - R.Left;
  fEdit.Height := R.Bottom - R.Top;
  fEdit.Font.Assign(Item.InspectorPanel.Font);

  TESBFloatEdit(fEdit).CustomSeparators := fCustomSeparators;
  TESBFloatEdit(fEdit).ShowThousandSeparators := fShowThousandSeparators;
  TESBFloatEdit(fEdit).CustomThousands := fCustomThousands;
  TESBFloatEdit(fEdit).DecimalPlaces := fDecimalPlaces;

end;

{ TESBInspSciFloatEditLink }

procedure TESBInspSciFloatEditLink.CreateInstance(aParent: TWinControl);
begin
  inherited;
  fEdit:=TESBSciFloatEdit.Create(aParent);
end;

procedure TESBInspSciFloatEditLink.SetOriginalValue;
begin
  inherited;
  fEdit.Text := fOrigValue;
end;

procedure TESBInspSciFloatEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  TESBSciFloatEdit(fEdit).DecimalPlaces := fDecimalPlaces;
  TESBSciFloatEdit(fEdit).ShowThousandSeparators := fShowThousandSeparators;
end;

{ TESBInspPercentEditLink }

procedure TESBInspPercentEditLink.CreateInstance(aParent: TWinControl);
begin
  inherited;
  fEdit:=TESBPercentEdit.Create(aParent);
end;

procedure TESBInspPercentEditLink.SetOriginalValue;
begin
  inherited;
  fEdit.Text := fOrigValue;
end;

procedure TESBInspPercentEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  TESBPercentEdit(fEdit).CustomSeparators := fCustomSeparators;
  TESBPercentEdit(fEdit).ShowThousandSeparators := fShowThousandSeparators;
  TESBPercentEdit(fEdit).CustomDecimal := fCustomDecimal;
  TESBPercentEdit(fEdit).CustomThousands := fCustomThousands;
  TESBPercentEdit(fEdit).DecimalPlaces := fDecimalPlaces;
end;

{ TESBInspIPEditLink }

procedure TESBInspIPEditLink.CreateInstance(aParent: TWinControl);
begin
  inherited;
  fEdit:=TESBIPEdit.Create(aParent);
end;

procedure TESBInspIPEditLink.SetOriginalValue;
begin
  inherited;
  fEdit.Text := fOrigValue;
end;

procedure TESBInspIPEditLink.SetProperties(R: TRect; Item: TInspectorItem);
begin
  inherited;
  TESBIPEdit(fEdit).BoundLower := fBoundLower;
  TESBIPEdit(fEdit).BoundUpper := fBoundUpper;
  TESBIPEdit(fEdit).BoundsEnabled := fBoundsEnabled;
end;

{ TESBInspHexEditLink }

procedure TESBInspHexEditLink.CreateInstance(aParent: TWinControl);
begin
  inherited;
  fEdit:=TESBHexEdit.Create(aParent);
end;

procedure TESBInspHexEditLink.SetOriginalValue;
begin
  inherited;
  fEdit.Text := fOrigValue;

end;

procedure TESBInspHexEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  TESBHexEdit(fEdit).BoundLower := fBoundLower;
  TESBHexEdit(fEdit).BoundUpper := fBoundUpper;
  TESBHexEdit(fEdit).BoundsEnabled := fBoundsEnabled;
end;

{ TESBInspYearEditLink }

procedure TESBInspYearEditLink.CreateInstance(aParent: TWinControl);
begin
  inherited;
  fEdit:=TESBYearEdit.Create(aParent);
end;

procedure TESBInspYearEditLink.SetOriginalValue;
begin
  inherited;
  fEdit.Text := fOrigValue;
end;

procedure TESBInspYearEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  TESBYearEdit(fEdit).BoundLowerYear := fBoundLowerYear;
  TESBYearEdit(fEdit).BoundUpperYear := fBoundUpperYear;
  TESBYearEdit(fEdit).BoundsEnabled := fBoundsEnabled;
end;

{ TESBInspDateEditLink }

procedure TESBInspDateEditLink.CreateInstance(aParent: TWinControl);
begin
  inherited;
   fEdit := TESBDateEdit.Create(aParent);
end;

procedure TESBInspDateEditLink.SetOriginalValue;
begin
  inherited;
  fEdit.Text := fOrigValue;
end;

procedure TESBInspDateEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  TESBDateEdit(fEdit).BoundLowerYear := fBoundLowerYear;
  TESBDateEdit(fEdit).BoundUpperYear := fBoundUpperYear;
  TESBDateEdit(fEdit).BoundLower := fBoundLower;
  TESBDateEdit(fEdit).BoundUpper := fBoundUpper;
  TESBDateEdit(fEdit).BoundsEnabled := fBoundsEnabled;
  TESBDateEdit(fEdit).BoundsYearEnable := fBoundsYearEnable;
end;

{ TESBInspTimeEditLink }

procedure TESBInspTimeEditLink.CreateInstance(aParent: TWinControl);
begin
  inherited;
   fEdit:=TESBTimeEdit.Create(aParent);
end;

procedure TESBInspTimeEditLink.SetOriginalValue;
begin
  inherited;
  fEdit.Text := fOrigValue;
end;

procedure TESBInspTimeEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  TESBTimeEdit(fEdit).BoundLower := fBoundLower;
  TESBTimeEdit(fEdit).BoundUpper := fBoundUpper;
  TESBTimeEdit(fEdit).BoundsEnabled := fBoundsEnabled;
end;

{ TESBInspDOWEditLink }

procedure TESBInspDOWEditLink.CreateInstance(aParent: TWinControl);
begin
  inherited;
  fEdit := TESBDOWEdit.Create(aParent);
end;

procedure TESBInspDOWEditLink.SetOriginalValue;
begin
  inherited;
  fEdit.Text := fOrigValue;
end;

procedure TESBInspDOWEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  TESBDOWEdit(fEdit).BoundLower := fBoundLower;
  TESBDOWEdit(fEdit).BoundUpper := fBoundUpper;
  TESBDOWEdit(fEdit).BoundsEnabled := fBoundsEnabled;
end;

{ TESBInspMonthEditLink }

procedure TESBInspMonthEditLink.CreateInstance(aParent: TWinControl);
begin
  inherited;
  fEdit := TESBMonthEdit.Create(aParent);
end;

procedure TESBInspMonthEditLink.SetOriginalValue;
begin
  inherited;
  fEdit.Text := fOrigValue;
end;

procedure TESBInspMonthEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  TESBMonthEdit(fEdit).BoundLower := fBoundLower;
  TESBMonthEdit(fEdit).BoundUpper := fBoundUpper;
  TESBMonthEdit(fEdit).BoundsEnabled := fBoundsEnabled;
end;

{ TESBInspCurrEditLink }

procedure TESBInspCurrEditLink.CreateInstance(aParent: TWinControl);
begin
  inherited;
  fEdit := TESBCurrEdit.Create(aParent);
end;

procedure TESBInspCurrEditLink.SetOriginalValue;
begin
  inherited;
  fEdit.Text := fOrigValue;
end;

procedure TESBInspCurrEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  TESBCurrEdit(fEdit).BoundLower := fBoundLower;
  TESBCurrEdit(fEdit).BoundUpper := fBoundUpper;
  TESBCurrEdit(fEdit).BoundsEnabled := fBoundsEnabled;
  TESBCurrEdit(fEdit).CurrencyStr := fCurrencyStr;
  TESBCurrEdit(fEdit).CustomDecimal := fCustomDecimal;
  TESBCurrEdit(fEdit).CustomSeparators := fCustomSeparators;
  TESBCurrEdit(fEdit).CustomThousands := fCustomThousands;
  TESBCurrEdit(fEdit).DecimalPlaces := fDecimalPlaces;
end;

{ TESBInspLongCurrEditLink }

procedure TESBInspLongCurrEditLink.CreateInstance(aParent: TWinControl);
begin
  inherited;
  fEdit := TESBLongCurrEdit.Create(aParent);
end;

procedure TESBInspLongCurrEditLink.SetOriginalValue;
begin
  inherited;
  fEdit.Text := fOrigValue;
end;

procedure TESBInspLongCurrEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  TESBLongCurrEdit(fEdit).BoundLower := fBoundLower;
  TESBLongCurrEdit(fEdit).BoundUpper := fBoundUpper;
  TESBLongCurrEdit(fEdit).BoundsEnabled := fBoundsEnabled;
  TESBLongCurrEdit(fEdit).CurrencyStr := fCurrencyStr;
  TESBLongCurrEdit(fEdit).CustomDecimal := fCustomDecimal;
  TESBLongCurrEdit(fEdit).CustomSeparators := fCustomSeparators;
  TESBLongCurrEdit(fEdit).CustomThousands := fCustomThousands;
  TESBLongCurrEdit(fEdit).DecimalPlaces := fDecimalPlaces;
end;

{ TESBInspCurrencyEditLink }

procedure TESBInspCurrencyEditLink.CreateInstance(aParent: TWinControl);
begin
  inherited;
  fEdit := TESBCurrencyEdit.Create(aParent);
end;

procedure TESBInspCurrencyEditLink.SetOriginalValue;
begin
  inherited;
  fEdit.Text := fOrigValue;
end;

procedure TESBInspCurrencyEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  TESBCurrencyEdit(fEdit).BoundLower := fBoundLower;
  TESBCurrencyEdit(fEdit).BoundUpper := fBoundUpper;
  TESBCurrencyEdit(fEdit).BoundsEnabled := fBoundsEnabled;
  TESBCurrencyEdit(fEdit).CurrencyStr := fCurrencyStr;
  TESBCurrencyEdit(fEdit).CustomDecimal := fCustomDecimal;
  TESBCurrencyEdit(fEdit).CustomSeparators := fCustomSeparators;
  TESBCurrencyEdit(fEdit).CustomThousands := fCustomThousands;
  TESBCurrencyEdit(fEdit).DecimalPlaces := fDecimalPlaces;
end;

{ TESBInspPosSpinEditLink }
constructor TESBInspPosSpinEditLink.Create(aOwner: TComponent);
begin
  inherited;
  WantKeyLeftRight:=true;
  WantKeyHomeEnd:=true;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  ColorFocus := clWindow;
  ColorRO := clWindow;
  ColorRW := clWindow;
  FlatEdit := true;
  Height := 46;
end;

procedure TESBInspPosSpinEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  if not Assigned(fEdit) then
    fEdit := TESBPosSpinEdit.Create(aParent);

  fEdit.Width := 10;
  fEdit.Height := 10;
  fEdit.Parent:=aParent;
  fEdit.Visible := false;
  fEdit.OnKeyDown := EditKeyDown;
end;

destructor TESBInspPosSpinEditLink.Destroy;
begin
  if assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBInspPosSpinEditLink.DestroyEditor;
begin
  inherited;
  if assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
end;

function TESBInspPosSpinEditLink.GetEditor: TWinControl;
begin
  result := fEdit;
end;

procedure TESBInspPosSpinEditLink.SetOriginalValue;
begin
  inherited;
  fEdit.Text := fOrigValue;
end;

procedure TESBInspPosSpinEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  InflateRect(R,-2,-1);
  R.Right := R.Right+2;

  fEdit.Left := R.Left-1;
  fEdit.Top := R.Top-1;
  fEdit.Width := (R.Right - R.Left)+1;
  fEdit.Height := (R.Bottom - R.Top);
  fEdit.Font.Assign(Item.InspectorPanel.Font);

  fEdit.ShowThousandSeparators := fShowThousandSeparators;
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.FlatBorder := fFlatBorder;
  fEdit.FlatEdit := fFlatEdit;
  fEdit.Null := fNull;
  fEdit.NullStr := fNullStr;
  fEdit.FlatSpinBtns := fFlatSpinBtns;
end;

procedure TESBInspPosSpinEditLink.StartEdit(Item: TInspectorItem);
var
  s:string;
begin
  inherited;
  s := Item.TextValue;
  fOrigValue := s;
  fEdit.Text := s;
  fEdit.Visible := True;
  fEdit.SetFocus;
end;

procedure TESBInspPosSpinEditLink.StopEdit(Item: TInspectorItem);
begin
  inherited;
  Item.TextValue := fEdit.Text;
  fEdit.Visible := false;
end;

{ TESBInspMonthSpinEditLink }

constructor TESBInspMonthSpinEditLink.Create(aOwner: TComponent);
begin
  inherited;
  fEdit := nil;
  WantKeyLeftRight:=true;
  WantKeyHomeEnd:=true;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  ColorFocus := clWindow;
  ColorRO := clWindow;
  ColorRW := clWindow;
  FlatEdit := true;
end;

procedure TESBInspMonthSpinEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  if not Assigned(fEdit) then
    fEdit := TESBMonthSpinEdit.Create(aParent);

  fEdit.Width := 0;
  fEdit.Height := 0;
  fEdit.Parent:=aParent;
  fEdit.Visible := false;
  fEdit.OnKeyDown := EditKeyDown;
end;

destructor TESBInspMonthSpinEditLink.Destroy;
begin
  if assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBInspMonthSpinEditLink.DestroyEditor;
begin
  inherited;
  if assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
end;

function TESBInspMonthSpinEditLink.GetEditor: TWinControl;
begin
  result := fEdit;
end;

procedure TESBInspMonthSpinEditLink.SetOriginalValue;
begin
  inherited;
  fEdit.MonthShort := fOrigValue;
end;

procedure TESBInspMonthSpinEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  InflateRect(R,-2,-1);
  R.Right := R.Right+2;

  fEdit.Left := R.Left-1;
  fEdit.Top := R.Top-1;
  fEdit.Width := (R.Right - R.Left)+1;
  fEdit.Height := R.Bottom - R.Top;
  fEdit.Font.Assign(Item.InspectorPanel.Font);

  fEdit.Color := fColor;
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.FlatBorder := fFlatBorder;
  fEdit.FlatEdit := fFlatEdit;
  fEdit.Null := fNull;
  fEdit.NullStr := fNullStr;
  fEdit.FlatSpinBtns := fFlatSpinBtns;
end;

procedure TESBInspMonthSpinEditLink.StartEdit(Item: TInspectorItem);
var
  s:string;
begin
  inherited;
  s := Item.TextValue;
  fOrigValue := s;

  if (s = '') then
    fEdit.Month := 0
  else
    fEdit.MonthShort := s;

  fEdit.Visible := True;
  fEdit.SetFocus;
end;

procedure TESBInspMonthSpinEditLink.StopEdit(Item: TInspectorItem);
begin
  inherited;
  Item.TextValue := fEdit.MonthShort;
  fEdit.Visible := False;


end;

{ TESBDOWSpinEditLink }

constructor TESBInspDOWSpinEditLink.Create(aOwner: TComponent);
begin
  inherited;
  fEdit := nil;
  WantKeyLeftRight:=true;
  WantKeyHomeEnd:=true;
  WantKeyUpDown:=true;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  ColorFocus := clWindow;
  ColorRO := clWindow;
  ColorRW := clWindow;
  FlatEdit := true;
end;

procedure TESBInspDOWSpinEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  if not assigned(fEdit) then
    fEdit := TESBDowSpinEdit.Create(aParent);

  fEdit.Width := 0;
  fEdit.Height := 0;
  fEdit.Parent:=aParent;
  fEdit.Visible := false;
  fEdit.OnKeyDown := EditKeyDown;
end;

destructor TESBInspDOWSpinEditLink.Destroy;
begin
  if assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBInspDOWSpinEditLink.DestroyEditor;
begin
  inherited;
  if assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
end;

function TESBInspDOWSpinEditLink.GetEditor: TWinControl;
begin
  result := fEdit;
end;

procedure TESBInspDOWSpinEditLink.SetOriginalValue;
begin
  inherited;
  if(fOrigValue <> '') then
    fEdit.DowShort := fOrigValue;
end;

procedure TESBInspDOWSpinEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  InflateRect(R,-2,-1);
  R.Right := R.Right+2;

  fEdit.Left := R.Left-1;
  fEdit.Top := R.Top-1;
  fEdit.Width := (R.Right - R.Left)+1;
  fEdit.Height := R.Bottom - R.Top;
  fEdit.Font.Assign(Item.InspectorPanel.Font);

  fEdit.Color := fColor;
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.FlatBorder := fFlatBorder;
  fEdit.FlatEdit := fFlatEdit;
  fEdit.Null := fNull;
  fEdit.NullStr := fNullStr;
  fEdit.FlatSpinBtns := fFlatSpinBtns;

end;

procedure TESBInspDOWSpinEditLink.StartEdit(Item: TInspectorItem);
var
  s:string;
begin
  inherited;
  s := Item.TextValue;
  fOrigValue := s;
  if (s = '') then
    fEdit.DOWShort := 'zo'
  else
    fEdit.DOWShort := s;
  fEdit.Visible := true;
  fEdit.SetFocus;
end;

procedure TESBInspDOWSpinEditLink.StopEdit(Item: TInspectorItem);
begin
  inherited;
  Item.TextValue := fEdit.Text;
  fEdit.Visible := False;
end;

{ TESBInspLookUpComboBoxEditLink }

constructor TESBInspLookUpComboBoxEditLink.Create(AOwner: TComponent);
begin
  inherited;
  fEdit := nil;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  ColorFocus := clWindow;
  ColorRO := clWindow;
  ColorRW := clWindow;
  fDropDownHeight := 100;
  WantKeyUpDown := True;
  WantKeyReturn := True;
  fItems := TStringList.Create;
  DropDownCount := 5;
  Flat := true;
end;

procedure TESBInspLookUpComboBoxEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  if not assigned(fEdit) then
    fEdit := TESBLookupComboBox.create(aParent);

  fEdit.OnKeyDown := EditKeyDown;
  fEdit.Width := 0;
  fEdit.Height := 0;
  fEdit.Parent:=aParent;
  fEdit.Visible := false;
end;

destructor TESBInspLookUpComboBoxEditLink.Destroy;
begin
  if Assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
  fItems.free;
  inherited;
end;

procedure TESBInspLookUpComboBoxEditLink.DestroyEditor;
begin
  inherited;
  if Assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
end;

function TESBInspLookUpComboBoxEditLink.GetEditor: TWinControl;
begin
  Result := fEdit;
end;

procedure TESBInspLookUpComboBoxEditLink.SetItems(const Value: TStrings);
begin
  fItems.Assign(Value);
end;

procedure TESBInspLookUpComboBoxEditLink.SetOriginalValue;
begin
  inherited;
  fEdit.ItemIndex := fOrigIndex;
end;

procedure TESBInspLookUpComboBoxEditLink.SetProperties(R: TRect; Item: TInspectorItem);
begin
  fEdit.Font.Assign(Item.InspectorPanel.Font);
  fEdit.Items := fItems;
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.Flat := fFlat;
  fEdit.FlatBorder := fFlatBorder;
  fEdit.DropDownCount := fDropDownCount;
  fEdit.Left := R.Left;
  fEdit.Top := R.Top;
  fEdit.Width := R.Right - R.Left;
  fEdit.Height := R.Bottom - R.Top;
  inherited;
  FOrigIndex := fEdit.ItemIndex;
end;

procedure TESBInspLookUpComboBoxEditLink.StartEdit(Item: TInspectorItem);
begin
  inherited;
  fEdit.Visible := True;
  fEdit.SetFocus;
  fEdit.DroppedDown := True;
end;

procedure TESBInspLookUpComboBoxEditLink.StopEdit(Item: TInspectorItem);
begin
  inherited;
  Item.IntValue := fEdit.ItemIndex;
  Item.TextValue := fEdit.AsItem;
  fEdit.Visible := False;
end;

{ TESBInspMonthComboBoxEditLink }

constructor TESBInspMonthComboBoxEditLink.Create(AOwner: TComponent);
begin
  inherited;
  fEdit := nil;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  ColorFocus := clWindow;
  ColorRO := clWindow;
  ColorRW := clWindow;
  fDropDownHeight := 100;
  WantKeyUpDown := True;
  WantKeyReturn := True;
  DropDownCount := 5;
  Flat := true;
end;

procedure TESBInspMonthComboBoxEditLink.CreateEditor(AParent: TWinControl);
begin
  inherited;
  if not assigned(fEdit) then
    fEdit := TESBMonthComboBox.create(aParent);

  fEdit.Width := 0;
  fEdit.Height := 0;
  fEdit.Parent:=aParent;
  fEdit.ItemIndex := 0;
  fEdit.Visible := false;
  fEdit.OnKeyDown := EditKeyDown;
end;

destructor TESBInspMonthComboBoxEditLink.Destroy;
begin
  if Assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBInspMonthComboBoxEditLink.DestroyEditor;
begin
  inherited;
  if Assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
end;

function TESBInspMonthComboBoxEditLink.GetEditor: TWinControl;
begin
  result := fEdit;
end;

procedure TESBInspMonthComboBoxEditLink.SetOriginalValue;
begin
  inherited;
  fEdit.ItemIndex := fOrigIndex;
end;

procedure TESBInspMonthComboBoxEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  fEdit.Font.Assign(Item.InspectorPanel.Font);
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.Flat := fFlat;
  fEdit.FlatBorder := fFlatBorder;
  fEdit.DropDownCount := fDropDownCount;
  fEdit.Left := R.Left;
  fEdit.Top := R.Top;
  fEdit.Width := R.Right - R.Left;
  fEdit.Height := R.Bottom - R.Top;
  inherited;
  FOrigIndex := fEdit.ItemIndex;
end;

procedure TESBInspMonthComboBoxEditLink.StartEdit(Item: TInspectorItem);
begin
  inherited;
  fEdit.Visible := True;
  fEdit.ItemIndex := Item.IntValue;
  fEdit.MonthLong := Item.TextValue;
  fEdit.SetFocus;
  fEdit.DroppedDown := True;
end;

procedure TESBInspMonthComboBoxEditLink.StopEdit(Item: TInspectorItem);
begin
  inherited;
  Item.IntValue := fEdit.ItemIndex;
  Item.TextValue := fEdit.MonthLong;
  fEdit.Visible := False;
end;

{ TESBInspCountryComboBoxEditLink }

constructor TESBInspCountryComboBoxEditLink.Create(AOwner: TComponent);
begin
  inherited;
  fEdit := nil;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  ColorFocus := clWindow;
  ColorRO := clWindow;
  ColorRW := clWindow;
  WantKeyUpDown:=true;
  WantKeyPriorNext:=true;
  WantKeyHomeEnd:=true;
  WantKeyReturn := true;
  fDropDownHeight := 100;
  DropDownCount := 5;
  Flat := true;
end;

procedure TESBInspCountryComboBoxEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  if not assigned(fEdit) then
    fEdit:=TESBCountryComboBox.Create(aParent);

  fEdit.Width:=0;
  fEdit.Height:=0;
  fEdit.Parent:=aParent;
  fEdit.ItemIndex := 0;
  fEdit.Visible := false;
  fEdit.OnKeydown:= EditKeyDown;
  ReadCountryList(ESBCountryList,'esbcountry.xml');
  TESBCountryComboBox(fEdit).LoadItems;
end;

destructor TESBInspCountryComboBoxEditLink.Destroy;
begin
  if assigned(fEdit) then
    fEdit.Free;
  fEdit:=nil;
  inherited;
end;

procedure TESBInspCountryComboBoxEditLink.DestroyEditor;
begin
  inherited;
  if assigned(fEdit) then
    fEdit.Free;
  fEdit:=nil;
end;

function TESBInspCountryComboBoxEditLink.GetEditor: TWinControl;
begin
  result := fEdit;
end;

procedure TESBInspCountryComboBoxEditLink.SetOriginalValue;
begin
  inherited;
  fEdit.ItemIndex := fOrigIndex;
end;

procedure TESBInspCountryComboBoxEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  fEdit.Font.Assign(Item.InspectorPanel.Font);
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.Flat := fFlat;
  fEdit.FlatBorder := fFlatBorder;
  fEdit.DropDownCount := fDropDownCount;
  fEdit.Left := R.Left;
  fEdit.Top := R.Top;
  fEdit.Width := R.Right - R.Left;
  fEdit.Height := R.Bottom - R.Top;
  inherited;
  FOrigIndex := fEdit.ItemIndex;
end;

procedure TESBInspCountryComboBoxEditLink.StartEdit(Item: TInspectorItem);
begin
  inherited;
  fEdit.Visible := True;
  fEdit.SetFocus;
  fEdit.DroppedDown := True;
end;

procedure TESBInspCountryComboBoxEditLink.StopEdit(Item: TInspectorItem);
begin
  inherited;
  Item.IntValue := fEdit.ItemIndex;
  Item.TextValue := fEdit.Items[fEdit.ItemIndex];
  fEdit.Visible := False;
end;

{ TESBInspDowComboBoxEditLink }

constructor TESBInspDowComboBoxEditLink.Create(AOwner: TComponent);
begin
  inherited;
  fEdit := nil;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  ColorFocus := clWindow;
  ColorRO := clWindow;
  ColorRW := clWindow;
  WantKeyUpDown:=true;
  WantKeyPriorNext:=true;
  WantKeyHomeEnd:=true;
  WantKeyReturn := true;
  fDropDownHeight := 100;
  DropDownCount := 5;
  Flat := true;
end;

procedure TESBInspDowComboBoxEditLink.CreateEditor(AParent: TWinControl);
begin
  inherited;
  if not assigned(fEdit) then
    fEdit:=TESBDowComboBox.Create(aParent);

  fEdit.Width:=0;
  fEdit.Height:=0;
  fEdit.Parent:=aParent;
  fEdit.ItemIndex := 0;
  fEdit.Visible := false;
  fEdit.OnKeydown:= EditKeyDown;
end;

destructor TESBInspDowComboBoxEditLink.Destroy;
begin
  if assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBInspDowComboBoxEditLink.DestroyEditor;
begin
  inherited;
  if assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
end;

function TESBInspDowComboBoxEditLink.GetEditor: TWinControl;
begin
  result := fEdit;
end;

procedure TESBInspDowComboBoxEditLink.SetOriginalValue;
begin
  inherited;
  fEdit.ItemIndex := fOrigIndex;
end;

procedure TESBInspDowComboBoxEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  fEdit.Font.Assign(Item.InspectorPanel.Font);
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.Flat := fFlat;
  fEdit.FlatBorder := fFlatBorder;
  fEdit.DropDownCount := fDropDownCount;
  fEdit.Left := R.Left;
  fEdit.Top := R.Top;
  fEdit.Width := R.Right - R.Left;
  fEdit.Height := R.Bottom - R.Top;
  inherited;
  FOrigIndex := fEdit.ItemIndex;
end;

procedure TESBInspDowComboBoxEditLink.StartEdit(Item: TInspectorItem);
begin
  inherited;
  fEdit.Visible := True;
  fEdit.ItemIndex := Item.IntValue;
  fEdit.DOWLong := Item.TextValue;
  fEdit.SetFocus;
  fEdit.DroppedDown := True;
end;

procedure TESBInspDowComboBoxEditLink.StopEdit(Item: TInspectorItem);
begin
  inherited;
  Item.IntValue := fEdit.ItemIndex;
  Item.TextValue := fEdit.DOWLong;
  fEdit.Visible := False;
end;

{ TESBInspTZComboBoxEditLink }

constructor TESBInspTZComboBoxEditLink.Create(AOwner: TComponent);
begin
  inherited;
  fEdit := nil;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  ColorFocus := clWindow;
  ColorRO := clWindow;
  ColorRW := clWindow;
  WantKeyUpDown:=true;
  WantKeyPriorNext:=true;
  WantKeyHomeEnd:=true;
  WantKeyReturn := true;
  fDropDownHeight := 100;
  DropDownCount := 5;
  Flat := true;
end;

procedure TESBInspTZComboBoxEditLink.CreateEditor(AParent: TWinControl);
begin
  inherited;
  if not assigned(fEdit) then
    fEdit:=TESBTZComboBox.Create(aParent);

  fEdit.Width:=0;
  fEdit.Height:=0;
  fEdit.Parent:=aParent;
  fEdit.ItemIndex := 0;
  fEdit.Visible := false;
  fEdit.OnKeydown:= EditKeyDown;
end;

destructor TESBInspTZComboBoxEditLink.Destroy;
begin
  if assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBInspTZComboBoxEditLink.DestroyEditor;
begin
  inherited;
  if assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
end;

function TESBInspTZComboBoxEditLink.GetEditor: TWinControl;
begin
  result := fEdit;
end;

procedure TESBInspTZComboBoxEditLink.SetOriginalValue;
begin
  inherited;
  fEdit.ItemIndex := fOrigIndex;
end;

procedure TESBInspTZComboBoxEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  fEdit.Font.Assign(Item.InspectorPanel.Font);
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.Flat := fFlat;
  fEdit.FlatBorder := fFlatBorder;
  fEdit.DropDownCount := fDropDownCount;
  fEdit.Left := R.Left;
  fEdit.Top := R.Top;
  fEdit.Width := R.Right - R.Left;
  fEdit.Height := R.Bottom - R.Top;
  inherited;
  FOrigIndex := fEdit.ItemIndex;
end;

procedure TESBInspTZComboBoxEditLink.StartEdit(Item: TInspectorItem);
begin
  inherited;
  fEdit.Visible := True;
  fEdit.Items[fEdit.ItemIndex] := Item.TextValue;
  fEdit.SetFocus;
  fEdit.DroppedDown := True;
end;

procedure TESBInspTZComboBoxEditLink.StopEdit(Item: TInspectorItem);
begin
  inherited;
  Item.IntValue := fEdit.ItemIndex;
  Item.TextValue := fEdit.Items[fEdit.ItemIndex];
  fEdit.Visible := False;
end;

{ TESBInspEMUComboBoxEditLink }

constructor TESBInspEMUComboBoxEditLink.Create(AOwner: TComponent);
begin
  inherited;
  fEdit := nil;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  ColorFocus := clWindow;
  ColorRO := clWindow;
  ColorRW := clWindow;
  WantKeyUpDown:=true;
  WantKeyPriorNext:=true;
  WantKeyHomeEnd:=true;
  WantKeyReturn := true;
  fDropDownHeight := 100;
  DropDownCount := 5;
  Flat := true;
end;

procedure TESBInspEMUComboBoxEditLink.CreateEditor(AParent: TWinControl);
begin
  inherited;
  if not assigned(fEdit) then
    fEdit:=TESBEMUComboBox.Create(aParent);

  fEdit.Width:=0;
  fEdit.Height:=0;
  fEdit.Parent:=aParent;
  fEdit.ItemIndex := 0;
  fEdit.Visible := false;
  fEdit.OnKeydown:= EditKeyDown;
end;

destructor TESBInspEMUComboBoxEditLink.Destroy;
begin
  if assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBInspEMUComboBoxEditLink.DestroyEditor;
begin
  inherited;
  if assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
end;

function TESBInspEMUComboBoxEditLink.GetEditor: TWinControl;
begin
  result := fEdit;
end;

procedure TESBInspEMUComboBoxEditLink.SetOriginalValue;
begin
  inherited;
  fEdit.ItemIndex := fOrigIndex;
end;

procedure TESBInspEMUComboBoxEditLink.SetProperties(R: TRect;
  Item: TInspectorItem);
begin
  inherited;
  fEdit.Font.Assign(Item.InspectorPanel.Font);
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.Flat := fFlat;
  fEdit.FlatBorder := fFlatBorder;
  fEdit.DropDownCount := fDropDownCount;
  fEdit.Left := R.Left;
  fEdit.Top := R.Top;
  fEdit.Width := R.Right - R.Left;
  fEdit.Height := R.Bottom - R.Top;
  inherited;
  FOrigIndex := fEdit.ItemIndex;
end;

procedure TESBInspEMUComboBoxEditLink.StartEdit(Item: TInspectorItem);
begin
  inherited;
  fEdit.Visible := True;
  fEdit.Items[fEdit.ItemIndex] := Item.TextValue;
  fEdit.SetFocus;
  fEdit.DroppedDown := True;
end;

procedure TESBInspEMUComboBoxEditLink.StopEdit(Item: TInspectorItem);
begin
  inherited;
  Item.IntValue := fEdit.ItemIndex;
  Item.TextValue := fEdit.Items[fEdit.ItemIndex];
  fEdit.Visible := False;
end;

initialization
  ReadCountryList(ESBCountryList,'esbcountry.xml');
end.
