{*******************************************************************
TADVSTRINGGRID ESBPCS EDITLINK components
for Delphi & C++Builder


written by TMS Software
           copyright © 2009
           Email : info@tmssoftware.com
           Web : http://www.tmssoftware.com

ESBPCS : ESB Professional Computation Suite
         by ESB Consultancy
         Web : www.esbconsult.com.au

The source code is given as is. The author is not responsible
for any possible damage done due to the use of this code.
The component can be freely used in any application. The complete
source code remains property of the author and may not be distributed,
published, given or sold in any form as such. No parts of the source
code can be included in any other component or application without
written authorization of the author.
********************************************************************}

unit esblinks;

interface

uses
  controls, graphics, sysutils, forms, advgrid, windows, classes, dialogs,
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
  TESBBaseEditLink = class(TEditLink)
  private
    fEdit: TESBBaseEdit;
    fColorBorderFocus, fColorBorderUnfocus, fColorFocus, fColorRO, fColorRW: TColor;
    fFlatBorder: integer;
    fFlat, fNull: Boolean;
    fNullStr: string;
  protected
    procedure EditExit(sender: TObject);
    procedure CreateInstance(aParent: TWinControl); virtual;
  public
    constructor Create(aOwner: TComponent); override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    function GetEditorValue: string; override;
    procedure SetEditorValue(s: string); override;
    function GetEditControl: TWinControl; override;
    procedure SetProperties; override;
  published
    property ColorBorderFocus: TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus: TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus: TColor read fColorFocus write fColorFocus;
    property ColorRO: TColor read fColorRO write fColorRO;
    property ColorRW: TColor read fColorRW write fColorRW;
    property FlatBorder: integer read fFlatBorder write fFlatBorder;
    property Flat: boolean read fFlat write fFlat;
    property Null: boolean read fNull write fNull;
    property NullStr: string read fNullStr write fNullStr;
  end;

  TESBSuperEditLink = class(TEditLink)
  private
    fEdit: TESBSuperEdit;
    fColorBorderFocus, fColorBorderUnfocus, fcolorFocus, fColorRO, fColorRW: TColor;
    fNullStr: string;
    fFlatBorder, fDecimalPlaces: integer;
    fFlat, fNull, fShowThousandSeparators, fTrimLeading, fTrimTrailing: boolean;
  protected
    procedure EditExit(sender: TObject);
  public
    procedure SetProperties; override;
    constructor Create(aOwner: TComponent); override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    function GetEditorValue: string; override;
    procedure SetEditorValue(s: string); override;
    function GetEditControl: TWinControl; override;
  published
    property ColorBorderFocus: TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus: TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus: TColor read fColorFocus write fColorFocus;
    property ColorRO: TColor read fColorRO write fColorRO;
    property ColorRW: TColor read fColorRW write fColorRW;
    property FlatBorder: integer read fFlatBorder write fFlatBorder;
    property DecimalPlaces: integer read fDecimalPlaces write fDecimalPlaces;
    property Flat: boolean read fFlat write fFlat;
    property Null: boolean read fNull write fNull;
    property NullStr: string read fNullStr write fNullStr;
    property ShowThousandSeparators: boolean read fShowThousandSeparators write fShowThousandSeparators;
    property TrimLeading: boolean read fTrimLeading write fTrimLeading;
    property TrimTrailing: boolean read fTrimTrailing write fTrimTrailing;
  end;

  TESBDateTimeEditLink = class(TEditLink)
  private
    fEdit: TESBDateTimeEdit;
    fColor, fColorBorderFocus, fColorBorderUnfocus, fcolorFocus, fColorRO, fColorRW: TColor;
    fNullStr, fFormatDate, fFormatTime: string;
    fFlatBorder: integer;
    fDay, fMonth, fYear, fHour, fMinute, fSecond, fMillisecond: integer;
    fFlat, fNull: boolean;
  protected
    procedure EditExit(sender: TObject);
  public
    constructor Create(aOwner: TComponent); override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    function GetEditorValue: string; override;
    procedure SetEditorValue(s: string); override;
    function GetEditControl: TWinControl; override;
    procedure SetProperties; override;
  published
    property Color: TColor read fColor write fColor;
    property ColorBorderFocus: TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus: TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus: TColor read fColorFocus write fColorFocus;
    property ColorRO: TColor read fColorRO write fColorRO;
    property ColorRW: TColor read fColorRW write fColorRW;
    property FlatBorder: integer read fFlatBorder write fFlatBorder;
    property Flat: boolean read fFlat write fFlat;
    property Null: boolean read fNull write fNull;
    property NullStr: string read fNullStr write fNullStr;
    property FormatDate: string read fFormatDate write fFormatDate;
    property FormatTime: string read fFormatTime write fFormatTime;
    property Day: integer read fDay write fDay;
    property Month: integer read fMonth write fMonth;
    property Year: integer read fYear write fYear;
    property Hour: integer read fHour write fHour;
    property Minute: integer read fMinute write fMinute;
    property Second: integer read fSecond write fSecond;
    property Millisecond: integer read fMillisecond write fMillisecond;
  end;

  TESBComplexEditLink = class(TEditLink)
  private
    fEdit: TESBComplexEdit;
    fColor, fColorBorderFocus, fColorBorderUnfocus, fColorFocus, fColorRO, fColorRW: TColor;
    fDecimalPlaces, fFlatborder, fImag, fReal: integer;
    fFlat, fNull: boolean;
    fNullStr: string;
  protected
    procedure EditExit(sender: TObject);
  public
    constructor Create(aOwner: TComponent); override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    function GetEditorValue: string; override;
    procedure SetEditorValue(s: string); override;
    function GetEditControl: TWinControl; override;
    procedure SetProperties; override;
  published
    property Color: TColor read fColor write fColor;
    property ColorBorderFocus: TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus: TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus: TColor read fColorFocus write fColorFocus;
    property ColorRO: TColor read fColorRO write fColorRO;
    property ColorRW: TColor read fColorRW write fColorRW;
    property DecimalPlaces: integer read fDecimalPlaces write fDecimalPlaces;
    property FlatBorder: integer read fFlatBorder write fFlatBorder;
    property Flat: boolean read fFlat write fFlat;
    property Null: boolean read fNull write fNull;
    property NullStr: string read fNullStr write fNullStr;
    property ImaginaryPortion: integer read fImag write fImag;
    property RealPortion: integer read fReal write fReal;
  end;

  TESBFractionEditLink = class(TEditLink)
  private
    fEdit: TESBFractionEdit;
    fColor, fColorBorderFocus, fColorBorderUnfocus, fColorFocus, fColorRO, fColorRW: TColor;
    fFlat, fNull: boolean;
    fNullStr: string;
    fDenominator, fNumerator, fFlatBorder: integer;
  protected
    procedure EditExit(sender: TObject);
  public
    constructor Create(aOwner: TComponent); override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    function GetEditorValue: string; override;
    procedure SetEditorValue(s: string); override;
    function GetEditControl: TWinControl; override;
    procedure SetProperties; override;
  published
    property Color: TColor read fColor write fColor;
    property ColorBorderFocus: TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus: TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus: TColor read fColorFocus write fColorFocus;
    property ColorRO: TColor read fColorRO write fColorRO;
    property ColorRW: TColor read fColorRW write fColorRW;
    property FlatBorder: integer read fFlatBorder write fFlatBorder;
    property Flat: boolean read fFlat write fFlat;
    property Null: boolean read fNull write fNull;
    property NullStr: string read fNullStr write fNullStr;
    property Denominator: integer read fDenominator write fDenominator;
    property Numerator: integer read fNumerator write fNumerator;
  end;

  TESBFractEditLink = class(TEditLink)
  private
    fEdit: TESBFractEdit;
    fFlatBorder, fBoundLower, fBoundUpper, fDecimalPlaces, fDecimalsFract: integer;
    fBoundsEnabled, fFlat, fNull, fTrimZeroes: boolean;
    fNullStr: string;
    fColorBorderFocus, fColorBorderUnfocus, fColorFocus, fColorRO, fColorRW: TColor;
  protected
    procedure EditExit(sender: TObject);
  public
    constructor Create(aOwner: TComponent); override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    function GetEditorValue: string; override;
    procedure SetEditorValue(s: string); override;
    function GetEditControl: TWinControl; override;
    procedure SetProperties; override;
  published
    property TrimTrailingZeroes: boolean read fTrimZeroes write fTrimZeroes;
    property FlatBorder: integer read fFlatBorder write fFlatBorder;
    property BoundLower: integer read fBoundLower write fBoundLower;
    property BoundUpper: integer read fBoundUpper write fBoundUpper;
    property DecimalPlaces: integer read fDecimalPlaces write fDecimalPlaces;
    property DecimalsFract: integer read fDecimalsFract write fDecimalsFract;
    property BoundsEnabled: boolean read fBoundsEnabled write fBoundsEnabled;
    property Flat: boolean read fFlat write fFlat;
    property Null: boolean read fNull write fNull;
    property NullStr: string read fNullStr write fNullStr;
    property ColorborderFocus: TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorborderUnfocus: TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus: TColor read fColorFocus write fColorFocus;
    property ColorRO: TColor read fColorRO write fColorRO;
    property ColorRW: TColor read fColorRW write fColorRW;
  end;

  TESBPCSEditLink = class(TEditLink)
  private
    fEdit: TESBPCSEdit;
    fColorBorderFocus, fColorBorderUnfocus, fColorFocus, fColorRO, fColorRW: TColor;
    fFlatBorder: integer;
    fFlat, fNull: Boolean;
    fNullStr: string;
  protected
    procedure EditExit(sender: TObject);
  public
    constructor Create(aOwner: TComponent); override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    function GetEditorValue: string; override;
    procedure SetEditorValue(s: string); override;
    function GetEditControl: TWinControl; override;
    procedure SetProperties; override;
  published
    property ColorBorderFocus: TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus: TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus: TColor read fColorFocus write fColorFocus;
    property ColorRO: TColor read fColorRO write fColorRO;
    property ColorRW: TColor read fColorRW write fColorRW;
    property FlatBorder: integer read fFlatBorder write fFlatBorder;
    property Flat: boolean read fFlat write fFlat;
    property NullStr: string read fNullStr write fNullStr;
    property Null: boolean read fNull write fNull;
  end;

  TESBPosEditLink = class(TESBBaseEditLink)
  private
    fCustomSeparators, fShowThousandSeparators: boolean;
    fCustomThousands: char;
  protected
    procedure CreateInstance(aParent: TWinControl); override;
  public
    procedure SetProperties; override;
  published
    property CustomSeparators: boolean read fCustomSeparators write fCustomSeparators;
    property CustomThousands: char read fCustomThousands write fCustomThousands;
    property ShowThousandSeparators: boolean read fShowThousandSeparators write fShowThousandSeparators;
  end;

  TESBIntEditLink = class(TESBBaseEditLink)
  private
    fCustomSeparators, fShowThousandSeparators: boolean;
    fCustomThousands: char;
  protected
    procedure CreateInstance(aParent: TWinControl); override;
  public
    procedure SetProperties; override;
  published
    property CustomSeparators: boolean read fCustomSeparators write fCustomSeparators;
    property CustomThousands: char read fCustomThousands write fCustomThousands;
    property ShowThousandSeparators: boolean read fShowThousandSeparators write fShowThousandSeparators;
  end;

  TESBPosFloatEditLink = class(TESBBaseEditLink)
  private
    fCustomSeparators, fShowThousandSeparators: boolean;
    fCustomThousands: char;
    fDecimalPlaces: integer;
  protected
    procedure CreateInstance(aParent: TWinControl); override;
  public
    procedure SetProperties; override;
  published
    property CustomSeparators: boolean read fCustomSeparators write fCustomSeparators;
    property CustomThousands: char read fCustomThousands write fCustomThousands;
    property DecimalPlaces: integer read fDecimalPlaces write fDecimalPlaces;
    property ShowThousandSeparators: boolean read fShowThousandSeparators write fShowThousandSeparators;
  end;

  TESBFloatEditLink = class(TESBBaseEditLink)
  private
    fCustomSeparators, fShowThousandSeparators: boolean;
    fCustomThousands: char;
    fDecimalPlaces: integer;
  protected
    procedure CreateInstance(aParent: TWinControl); override;
  public
    procedure SetProperties; override;
  published
    property CustomSeparators: boolean read fCustomSeparators write fCustomSeparators;
    property CustomThousands: char read fCustomThousands write fCustomThousands;
    property DecimalPlaces: integer read fDecimalPlaces write fDecimalPlaces;
    property ShowThousandSeparators: boolean read fShowThousandSeparators write fShowThousandSeparators;
  end;

  TESBSciFloatEditLink = class(TESBBaseEditLink)
  private
    fDecimalPlaces: integer;
    fShowThousandSeparators: boolean;
  protected
    procedure CreateInstance(aParent: TWinControl); override;
  public
    procedure SetProperties; override;
  published
    property DecimalPlaces: integer read fDecimalPlaces write fDecimalPlaces;
    property ShowThousandSeparators: boolean read fShowThousandSeparators write fShowThousandSeparators;
  end;

  TESBPercentEditLink = class(TESBBaseEditLink)
  private
    fCustomSeparators, fShowThousandSeparators: boolean;
    fCustomThousands, fCustomDecimal: char;
    fDecimalPlaces: integer;
  protected
    procedure CreateInstance(aParent: TWinControl); override;
  public
    procedure SetProperties; override;
  published
    property CustomSeparators: boolean read fCustomSeparators write fCustomSeparators;
    property CustomThousands: char read fCustomThousands write fCustomThousands;
    property DecimalPlaces: integer read fDecimalPlaces write fDecimalPlaces;
    property CustomDecimal: char read fCustomDecimal write fCustomDecimal;
    property ShowThousandSeparators: boolean read fShowThousandSeparators write fShowThousandSeparators;
  end;

  TESBIPEditLink = class(TESBBaseEditLink)
  private
    fBoundLower, fBoundUpper: string;
    fBoundsEnabled: boolean;
  protected
    procedure CreateInstance(aParent: TWinControl); override;
  public
    procedure SetProperties; override;
  published
    property BoundLower: string read fBoundLower write fBoundLower;
    property BoundUpper: string read fBoundUpper write fBoundUpper;
    property BoundsEnabled: boolean read fBoundsEnabled write fBoundsEnabled;
  end;

  TESBHexEditLink = class(TESBBaseEditLink)
  private
    fBoundLower, fBoundUpper: string;
    fBoundsEnabled: boolean;
  protected
    procedure CreateInstance(aParent: TWinControl); override;
  public
    procedure SetProperties; override;
  published
    property BoundLower: string read fBoundLower write fBoundLower;
    property BoundUpper: string read fBoundUpper write fBoundUpper;
    property BoundsEnabled: boolean read fBoundsEnabled write fBoundsEnabled;
  end;

  TESBYearEditLink = class(TESBBaseEditLink)
  private
    fBoundLowerYear, fBoundUpperYear: integer;
    fBoundsEnabled: boolean;
  protected
    procedure CreateInstance(aParent: TWinControl); override;
  public
    procedure SetProperties; override;
  published
    property BoundLowerYear: integer read fBoundLowerYear write fBoundLowerYear;
    property BoundUpperYear: integer read fBoundUpperYear write fBoundUpperYear;
    property BoundsEnabled: boolean read fBoundsEnabled write fBoundsEnabled;
  end;

  TESBDateEditLink = class(TESBBaseEditLink)
  private
    fBoundLowerYear, fBoundUpperYear: integer;
    fBoundLower, fBoundUpper: TDate;
    fBoundsEnabled, fBoundsYearEnable: boolean;
  protected
    procedure CreateInstance(aParent: TWinControl); override;
  public
    procedure SetProperties; override;
  published
    property BoundLowerYear: integer read fBoundLowerYear write fBoundLowerYear;
    property BoundUpperYear: integer read fBoundUpperYear write fBoundUpperYear;
    property BoundsYearEnabled: boolean read fBoundsYearEnable write fBoundsYearEnable;
    property BoundsEnabled: boolean read fBoundsEnabled write fBoundsEnabled;
    property BoundLower: TDate read fBoundLower write fBoundLower;
    property BoundUpper: TDate read fBoundUpper write fBoundUpper;
  end;

  TESBTimeEditLink = class(TESBBaseEditLink)
  private
    fBoundLower, fBoundUpper: TTime;
    fBoundsEnabled: boolean;
  protected
    procedure CreateInstance(aParent: TWinControl); override;
  public
    procedure SetProperties; override;
  published
    property BoundsEnabled: boolean read fBoundsEnabled write fBoundsEnabled;
    property BoundLower: TTime read fBoundLower write fBoundLower;
    property BoundUpper: TTime read fBoundUpper write fBoundUpper;
  end;

  TESBDOWEditLink = class(TESBBaseEditLink)
  private
    fBoundLower, fBoundUpper: integer;
    fBoundsEnabled: boolean;
  protected
    procedure CreateInstance(aParent: TWinControl); override;
  public
    procedure SetProperties; override;
  published
    property BoundsEnabled: boolean read fBoundsEnabled write fBoundsEnabled;
    property BoundLower: integer read fBoundLower write fBoundLower;
    property BoundUpper: integer read fBoundUpper write fBoundUpper;
  end;

  TESBMonthEditLink = class(TESBBaseEditLink)
  private
    fBoundLower, fBoundUpper: integer;
    fBoundsEnabled: boolean;
  protected
    procedure CreateInstance(aParent: TWinControl); override;
  public
    procedure SetProperties; override;
  published
    property BoundsEnabled: boolean read fBoundsEnabled write fBoundsEnabled;
    property BoundLower: integer read fBoundLower write fBoundLower;
    property BoundUpper: integer read fBoundUpper write fBoundUpper;
  end;

  TESBCurrEditLink = class(TESBBaseEditLink)
  private
    fBoundLower, fBoundUpper: integer;
    fBoundsEnabled, fCustomSeparators, fShowThousandSeparators: boolean;
    fCurrencyStr: string;
    fCustomDecimal, fCustomThousands: char;
    fDecimalPlaces: integer;
  protected
    procedure CreateInstance(aParent: TWinControl); override;
  public
    procedure SetProperties; override;
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

  TESBLongCurrEditLink = class(TESBBaseEditLink)
  private
    fBoundLower, fBoundUpper: integer;
    fBoundsEnabled, fCustomSeparators, fShowThousandSeparators: boolean;
    fCurrencyStr: string;
    fCustomDecimal, fCustomThousands: char;
    fDecimalPlaces: integer;
  protected
    procedure CreateInstance(aParent: TWinControl); override;
  public
    procedure SetProperties; override;
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

  TESBCurrencyEditLink = class(TESBBaseEditLink)
  private
    fBoundLower, fBoundUpper: integer;
    fBoundsEnabled, fCustomSeparators, fShowThousandSeparators: boolean;
    fCurrencyStr: string;
    fCustomDecimal, fCustomThousands: char;
    fDecimalPlaces: integer;
  protected
    procedure CreateInstance(aParent: TWinControl); override;
  public
    procedure SetProperties; override;
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

  TESBBaseSpinEditLink = class(TEditLink)
  private
    fEdit: TESBBaseSpinEdit;
    fColor, fColorBorderFocus, fColorBorderUnfocus, fcolorFocus, fColorRO, fColorRW: TColor;
    fFlatBorder: integer;
    fFlatEdit, fFlatSpinBtns, fNull: Boolean;
    fNullStr: string;
  protected
    procedure EditExit(sender: TObject);
    procedure CreateInstance(aParent: TWinControl); virtual;
  public
    constructor Create(aOwner: TComponent); override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    function GetEditorValue: string; override;
    procedure SetEditorValue(s: string); override;
    function GetEditControl: TWinControl; override;
    procedure SetProperties; override;
  published
    property Color: TColor read fColor write fColor;
    property ColorBorderFocus: TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus: TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus: TColor read fColorFocus write fColorFocus;
    property ColorRO: TColor read fColorRO write fColorRO;
    property ColorRW: TColor read fColorRW write fColorRW;
    property FlatBorder: integer read fFlatBorder write fFlatBorder;
    property FlatSpinBtns: boolean read fFlatSpinBtns write fFlatSpinBtns;
    property FlatEdit: boolean read fFlatEdit write fFlatEdit;
    property NullStr: string read fNullStr write fNullStr;
    property Null: boolean read fNull write fNull;
  end;

  TESBIntSpinEditLink = class(TESBBaseSpinEditLink)
  private
    fShowThousandSeparators: boolean;
  protected
    procedure CreateInstance(aParent: TWinControl); override;
  public
    procedure SetEditorValue(s: string); override;
    procedure setProperties; override;
    function GetEditorValue: string; override;
  published
    property ShowThousandSeparators: boolean read fShowThousandSeparators write fShowThousandSeparators;
  end;

  TESBPosSpinEditLink = class(TEditLink)
  private
    fEdit: TESBPosSpinEdit;
    fShowThousandSeparators: boolean;
    fColorBorderFocus, fColorBorderUnfocus, fcolorFocus, fColorRO, fColorRW: TColor;
    fNullStr: string;
    fFlatBorder: integer;
    fFlatEdit, fNull, fFlatSpinBtns: boolean;
  public
    constructor Create(aOwner: TComponent); override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    function GetEditorValue: string; override;
    procedure SetEditorValue(s: string); override;
    function GetEditControl: TWinControl; override;
    procedure SetProperties; override;
  published
    property ShowThousandSeparators: Boolean read fShowThousandSeparators write fShowThousandSeparators;
    property ColorBorderFocus: TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus: TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus: TColor read fColorFocus write fColorFocus;
    property ColorRO: TColor read fColorRO write fColorRO;
    property ColorRW: TColor read fColorRW write fColorRW;
    property FlatBorder: integer read fFlatBorder write fFlatBorder;
    property FlatEdit: boolean read fFlatEdit write fFlatEdit;
    property Null: boolean read fNull write fNull;
    property NullStr: string read fNullStr write fNullStr;
    property FlatSpinBtns: boolean read fFlatSpinBtns write fFlatSpinBtns;
  end;

  TESBFloatSpinEditLink = class(TESBBaseSpinEditLink)
  private
    fEdit: TESBFloatSpinEdit;
    fDecimalPlaces: byte;
    fShowThousandSeparators: boolean;
    fColorBorderFocus, fColorBorderUnfocus, fcolorFocus, fColorRO, fColorRW: TColor;
    fNullStr: string;
    fFlatBorder: integer;
    fFlatEdit, fNull, fFlatSpinBtns: boolean;
  protected
    procedure EditExit(sender: TObject);
  public
    constructor Create(aOwner: TComponent); override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    function GetEditorValue: string; override;
    procedure SetEditorValue(s: string); override;
    function GetEditControl: TWinControl; override;
    procedure SetProperties; override;
  published
    property DecimalPlaces: byte read fDecimalPlaces write fDecimalPlaces;
    property ShowThousandSeparators: Boolean read fShowThousandSeparators write fShowThousandSeparators;
    property ColorBorderFocus: TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus: TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus: TColor read fColorFocus write fColorFocus;
    property ColorRO: TColor read fColorRO write fColorRO;
    property ColorRW: TColor read fColorRW write fColorRW;
    property FlatBorder: integer read fFlatBorder write fFlatBorder;
    property FlatEdit: boolean read fFlatEdit write fFlatEdit;
    property Null: boolean read fNull write fNull;
    property NullStr: string read fNullStr write fNullStr;
    property FlatSpinBtns: boolean read fFlatSpinBtns write fFlatSpinBtns;
  end;

  TESBYearSpinEditLink = class(TESBBaseSpinEditLink)
  private
    fYearCutOff: Integer;
  protected
    procedure CreateInstance(aParent: TWinControl); override;
  public
    procedure SetEditorValue(s: string); override;
    procedure setProperties; override;
    function GetEditorValue: string; override;
  published
    property YearCutOff: Integer read fYearCutOff write fYearCutOff;
  end;

  TESBMonthSpinEditLink = class(TEditLink)
  private
    fEdit: TESBMonthSpinEdit;
    fColor, fColorBorderFocus, fColorBorderUnfocus, fColorFocus, fColorRO, fColorRW: TColor;
    fFlatBorder, fMonth: Integer;
    fNull, fFlatEdit, fFlatSpinBtns: boolean;
    fNullStr: string;
  protected
    procedure EditExit(sender: TObject);
  public
    constructor Create(aOwner: TComponent); override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    procedure setProperties; override;
    function GetEditorValue: string; override;
    procedure SetEditorValue(s: string); override;
    function GetEditControl: TWinControl; override;
  published
    property Color: TColor read fColor write fColor;
    property ColorBorderFocus: TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus: TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus: TColor read fColorFocus write fColorFocus;
    property ColorRO: TColor read fColorRO write fColorRO;
    property ColorRW: TColor read fColorRW write fColorRW;
    property FlatBorder: integer read fFlatBorder write fFlatBorder;
    property FlatEdit: Boolean read fFlatEdit write fFLatEdit;
    property FlatSpinBtns: Boolean read fFlatSpinBtns write fFlatSpinBtns;
    property NullStr: string read fNullStr write fNullStr;
    property Null: Boolean read fNull write fNull;
    property Month: Integer read fMonth write fMonth;
  end;

  TESBDOWSpinEditLink = class(TEditLink)
  private
    fEdit: TESBDOWSpinEdit;
    fColor, fColorBorderFocus, fColorBorderUnfocus, fColorFocus, fColorRO, fColorRW: TColor;
    fFlatBorder: integer;
    fFlatSpinBtns, fFlatEdit, fNull: boolean;
    fNullStr: string;
  protected
    procedure EditExit(sender: TObject);
  public
    constructor Create(aOwner: TComponent); override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    procedure setProperties; override;
    procedure SetEditorValue(s: string); override;
    function GetEditorValue: string; override;
    function GetEditControl: TWinControl; override;
  published
    property Color: TColor read fColor write fColor;
    property ColorBorderFocus: TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus: TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus: TColor read fColorFocus write fColorFocus;
    property ColorRO: TColor read fColorRO write fColorRO;
    property ColorRW: TColor read fColorRW write fColorRW;
    property FlatBorder: integer read fFlatBorder write fFlatBorder;
    property FlatSpinBtns: Boolean read fFlatSpinBtns write fFlatSpinBtns;
    property FlatEdit: Boolean read fFlatEdit write fFlatEdit;
    property Null: Boolean read fNull write fNull;
    property NullStr: string read fNullStr write fNullStr;
  end;

  TESBLookUpComboBoxEditLink = class(TEditLink)
  private
    fEdit: TESBLookupComboBox;
    fItems: TStrings;
    fFlat: boolean;
    fColorBorderFocus, fColorBorderUnfocus, fColorFocus, fColorRO, fColorRW: TColor;
    fFlatBorder, fDropDownCount: integer;
    procedure SetItems(const Value: TStrings);
  protected
    procedure EditExit(sender: TObject);
  public
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    function GetEditorValue: string; override;
    procedure SetEditorValue(s: string); override;
    function GetEditControl: TWinControl; override;
    procedure SetRect(r: TRect); override;
    procedure SetProperties; override;
  published
    property Items: TStrings read fItems write SetItems;
    property Flat: boolean read fFlat write fFlat;
    property FlatBorder: integer read fFlatBorder write fFlatBorder;
    property ColorBorderFocus: TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus: TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus: TColor read fColorFocus write fColorFocus;
    property ColorRO: TColor read fColorRO write fColorRO;
    property ColorRW: TColor read fColorRW write fColorRW;
    property DropDownCount: integer read fDropDownCount write fDropDownCount;
  end;

  TESBMonthComboBoxEditLink = class(TEditLink)
  private
    fEdit: TESBMonthComboBox;
    fColorBorderFocus, fColorBorderUnfocus, fColorFocus, fColorRO, fColorRW: TColor;
    fFlat: boolean;
    fFlatBorder: integer;
  protected
    procedure EditExit(sender: TObject);
  public
    constructor Create(aOwner: TComponent); override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    function GetEditorValue: string; override;
    procedure SetEditorValue(s: string); override;
    function GetEditControl: TWinControl; override;
    procedure SetRect(r: trect); override;
    procedure setProperties; override;
  published
    property ColorBorderFocus: TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus: TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus: TColor read fColorFocus write fColorFocus;
    property ColorRO: TColor read fColorRO write fColorRO;
    property ColorRW: TColor read fColorRW write fColorRW;
    property Flat: boolean read fFlat write fFlat;
    property FlatBorder: integer read fFlatBorder write fFlatBorder;
  end;

  TESBCountryComboBoxEditLink = class(TEditLink)
  private
    fEdit: TESBCountryComboBox;
    fFlat: boolean;
    fColorBorderFocus, fColorBorderUnfocus, fColorFocus, fColorRO, fColorRW: TColor;
    fFlatBorder: integer;
  protected
    procedure EditExit(Sender: TObject);
  public
    constructor Create(aOwner: TComponent); override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    function GetEditorValue: string; override;
    procedure SetEditorValue(s: string); override;
    function GetEditControl: TWinControl; override;
    procedure SetProperties; override;
  published
    property Flat: boolean read fFlat write fFlat;
    property FlatBorder: integer read fFlatBorder write fFlatBorder;
    property ColorBorderFocus: TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus: TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus: TColor read fColorFocus write fColorFocus;
    property ColorRO: TColor read fColorRO write fColorRO;
    property ColorRW: TColor read fColorRW write fColorRW;
  end;

  TESBDowComboBoxEditLink = class(TEditLink)
  private
    fEdit: TESBDowComboBox;
    fColorBorderFocus, fColorBorderUnfocus, fColorFocus, fColorRO, fColorRW: TColor;
    fFlat: boolean;
    fFlatBorder: integer;
  protected
    procedure EditExit(sender: TObject);
  public
    constructor Create(aOwner: TComponent); override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    function GetEditorValue: string; override;
    procedure SetEditorValue(s: string); override;
    function GetEditControl: TWinControl; override;
    procedure SetRect(r: trect); override;
    procedure setProperties; override;
  published
    property ColorBorderFocus: TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus: TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus: TColor read fColorFocus write fColorFocus;
    property ColorRO: TColor read fColorRO write fColorRO;
    property ColorRW: TColor read fColorRW write fColorRW;
    property Flat: boolean read fFlat write fFlat;
    property FlatBorder: integer read fFlatBorder write fFlatBorder;
  end;

  TESBTZComboBoxEditLink = class(TEditLink)
  private
    fEdit: TESBTZComboBox;
    fColorBorderFocus, fColorBorderUnfocus, fColorFocus, fColorRO, fColorRW: TColor;
    fFlatBorder: integer;
    fFlat: Boolean;
  protected
    procedure EditExit(sender: TObject);
  public
    constructor Create(aOwner: TComponent); override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    function GetEditorValue: string; override;
    procedure SetEditorValue(s: string); override;
    function GetEditControl: TWinControl; override;
    procedure SetRect(r: trect); override;
    procedure SetProperties; override;
  published
    property ColorBorderFocus: TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus: TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus: TColor read fColorFocus write fColorFocus;
    property ColorRO: TColor read fColorRO write fColorRO;
    property ColorRW: TColor read fColorRW write fColorRW;
    property FlatBorder: integer read fFlatBorder write fFlatBorder;
    property Flat: boolean read fFlat write fFlat;
  end;

  TESBEMUComboBoxEditLink = class(TEditLink)
  private
    fEdit: TESBEMUComboBox;
    fColorBorderFocus, fColorBorderUnfocus, fColorFocus, fColorRO, fColorRW: TColor;
    fFlatBorder: integer;
    fFlat: Boolean;
  protected
    procedure EditExit(sender: TObject);
  public
    constructor Create(aOwner: TComponent); override;
    procedure CreateEditor(aParent: TWinControl); override;
    procedure DestroyEditor; override;
    function GetEditorValue: string; override;
    procedure SetEditorValue(s: string); override;
    function GetEditControl: TWinControl; override;
    procedure SetRect(r: trect); override;
    procedure SetProperties; override;
  published
    property ColorBorderFocus: TColor read fColorBorderFocus write fColorBorderFocus;
    property ColorBorderUnfocus: TColor read fColorBorderUnfocus write fColorBorderUnfocus;
    property ColorFocus: TColor read fColorFocus write fColorFocus;
    property ColorRO: TColor read fColorRO write fColorRO;
    property ColorRW: TColor read fColorRW write fColorRW;
    property FlatBorder: integer read fFlatBorder write fFlatBorder;
    property Flat: boolean read fFlat write fFlat;
  end;

procedure Register;

implementation

{ TESBBaseSpinEditLink }

constructor TESBBaseSpinEditLink.Create(aOwner: TComponent);
begin
  inherited;
  WantKeyLeftRight := true;
  WantKeyHomeEnd := true;
  WantKeyUpDown := true;
  ColorRO := clWindow;
  ColorRW := clWindow;
  ColorFocus := clWindow;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  FlatEdit := true;
end;

procedure TESBBaseSpinEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  CreateInstance(aParent);
  fEdit.OnKeydown := EditKeyDown;
  fEdit.OnExit := EditExit;
  fEdit.top := 0;
  fEdit.left := 0;
  fEdit.Width := 0;
  fEdit.Height := 0;
  fEdit.Parent := aParent;
  fEdit.FlatEdit := true;
  fEdit.ColorBorderFocus := clWindow;
  fEdit.ColorBorderUnfocus := clWindow;
  fEdit.colorFocus := clWindow;
  fEdit.ColorRO := clWindow;
  fEdit.ColorRW := clWindow;
end;

procedure TESBBaseSpinEditLink.CreateInstance(aParent: TWinControl);
begin
  fEdit := TESBBaseSpinEdit.Create(aParent);
end;

procedure TESBBaseSpinEditLink.DestroyEditor;
begin
  if assigned(fEdit) then fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBBaseSpinEditLink.EditExit(sender: TObject);
begin
  HideEditor;
end;

function TESBBaseSpinEditLink.GetEditControl: TWinControl;
begin
  result := fEdit;
end;


function TESBBaseSpinEditLink.GetEditorValue: string;
begin
end;

procedure TESBBaseSpinEditLink.SetEditorValue(s: string);
begin
end;

procedure TESBBaseSpinEditLink.SetProperties;
begin
  inherited;
  fEdit.Color := fColor;
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.FlatBorder := fFlatBorder;
  fEdit.FlatEdit := fFlatEdit;
  fEdit.FlatSpinBtns := fFlatSpinBtns;
  fEdit.Null := fNull;
  fEdit.NullStr := fNullStr;
end;

{ TESBPCSEditLink }

constructor TESBPCSEditLink.Create(aOwner: TComponent);
begin
  inherited;
  WantKeyLeftRight := true;
  WantKeyHomeEnd := true;
  ColorRO := clWindow;
  ColorRW := clWindow;
  ColorFocus := clWindow;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  Flat := true;
end;

procedure TESBPCSEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  fEdit := TESBPCSEdit.Create(aParent);
  fEdit.OnKeydown := EditKeyDown;
  fEdit.OnExit := EditExit;
  fEdit.top := 0;
  fEdit.left := 0;
  fEdit.Width := 0;
  fEdit.Height := 0;
  fEdit.Parent := aParent;
  fEdit.BorderStyle := bsNone;
end;

procedure TESBPCSEditLink.DestroyEditor;
begin
  if assigned(fEdit) then fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBPCSEditLink.EditExit(sender: TObject);
begin
  HideEditor;
end;

function TESBPCSEditLink.GetEditControl: TWinControl;
begin
  result := fEdit;
end;

function TESBPCSEditLink.GetEditorValue: string;
begin
  result := fEdit.Text;
end;

procedure TESBPCSEditLink.SetEditorValue(s: string);
begin
  fEdit.Text := s;
end;

procedure TESBPCSEditLink.SetProperties;
begin
  inherited;
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

{ TESBPosEditLink }

procedure TESBPosEditLink.CreateInstance(aParent: TWinControl);
begin
  fEdit := TESBPosEdit.Create(aParent);
end;

procedure TESBPosEditLink.SetProperties;
begin
  inherited;
  TESBPosEdit(fEdit).CustomSeparators := fCustomSeparators;
  TESBPosEdit(fEdit).CustomThousands := fCustomThousands;
  TESBPosEdit(fEdit).ShowThousandSeparators := fShowThousandSeparators;
end;

{ TESBIntEditLink }

procedure TESBIntEditLink.CreateInstance(aParent: TWinControl);
begin
  fEdit := TESBIntEdit.Create(aParent);
end;

procedure TESBIntEditLink.SetProperties;
begin
  inherited;
  TESBIntEdit(fEdit).CustomSeparators := fCustomSeparators;
  TESBIntEdit(fEdit).CustomThousands := fCustomThousands;
  TESBIntEdit(fEdit).ShowThousandSeparators := fShowThousandSeparators;
end;

{ TESBBaseEditLink }

constructor TESBBaseEditLink.Create(aOwner: TComponent);
begin
  inherited;
  WantKeyLeftRight := true;
  WantKeyHomeEnd := true;
  ColorRO := clWindow;
  ColorRW := clWindow;
  ColorFocus := clWindow;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  Flat := true;
end;

procedure TESBBaseEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  CreateInstance(aParent);
  fEdit.OnKeydown := EditKeyDown;
  fEdit.OnExit := EditExit;
  fEdit.top := 0;
  fEdit.left := 0;
  fEdit.Width := 0;
  fEdit.Height := 0;
  fEdit.Parent := aParent;
  fEdit.BorderStyle := bsNone;
end;

procedure TESBBaseEditLink.CreateInstance(aParent: TWinControl);
begin
  fEdit := TESBBaseEdit.Create(aParent);
end;

procedure TESBBaseEditLink.DestroyEditor;
begin
  if assigned(fEdit) then fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBBaseEditLink.EditExit(sender: TObject);
begin
  HideEditor;
end;

function TESBBaseEditLink.GetEditControl: TWinControl;
begin
  result := fEdit;
end;

function TESBBaseEditLink.GetEditorValue: string;
begin
  result := fEdit.Text;
end;

procedure TESBBaseEditLink.SetEditorValue(s: string);
begin
  fEdit.Text := s;
end;

procedure TESBBaseEditLink.SetProperties;
begin
  inherited;
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

{ TESBSciFloatEditLink }

procedure TESBSciFloatEditLink.CreateInstance(aParent: TWinControl);
begin
  fEdit := TESBSciFloatEdit.Create(aParent);
end;

procedure TESBSciFloatEditLink.SetProperties;
begin
  inherited;
  TESBSciFloatEditLink(fEdit).DecimalPlaces := fDecimalPlaces;
  TESBSciFloatEditLink(fEdit).ShowThousandSeparators := fShowThousandSeparators;
end;

{ TESBFloatEditLink }

procedure TESBFloatEditLink.CreateInstance(aParent: TWinControl);
begin
  fEdit := TESBFloatEdit.Create(aParent);
end;

procedure TESBFloatEditLink.SetProperties;
begin
  inherited;
  TESBFloatEdit(fEdit).CustomSeparators := fCustomSeparators;
  TESBFloatEdit(fEdit).ShowThousandSeparators := fShowThousandSeparators;
  TESBFloatEdit(fEdit).CustomThousands := fCustomThousands;
  TESBFloatEdit(fEdit).DecimalPlaces := fDecimalPlaces;
end;

{ TESBPercentEditLink }

procedure TESBPercentEditLink.CreateInstance(aParent: TWinControl);
begin
  fEdit := TESBPercentEdit.Create(aParent);
end;

procedure TESBPercentEditLink.SetProperties;
begin
  inherited;
  TESBPercentEdit(fEdit).CustomSeparators := fCustomSeparators;
  TESBPercentEdit(fEdit).ShowThousandSeparators := fShowThousandSeparators;
  TESBPercentEdit(fEdit).CustomDecimal := fCustomDecimal;
  TESBPercentEdit(fEdit).CustomThousands := fCustomThousands;
  TESBPercentEdit(fEdit).DecimalPlaces := fDecimalPlaces;
end;

{ TESBPosFloatEditLink }

procedure TESBPosFloatEditLink.CreateInstance(aParent: TWinControl);
begin
  fEdit := TESBPosFloatEdit.Create(aParent);
end;

procedure TESBPosFloatEditLink.SetProperties;
begin
  inherited;
  TESBPosFloatEdit(fEdit).CustomSeparators := fCustomSeparators;
  TESBPercentEdit(fEdit).ShowThousandSeparators := fShowThousandSeparators;
  TESBPosFloatEdit(fEdit).CustomThousands := fCustomThousands;
  TESBPosFloatEdit(fEdit).DecimalPlaces := fDecimalPlaces;
end;

{ TESBIPEditLink }

procedure TESBIPEditLink.CreateInstance(aParent: TWinControl);
begin
  fEdit := TESBIPEdit.Create(aParent);
end;

procedure TESBIPEditLink.SetProperties;
begin
  inherited;
  TESBIPEdit(fEdit).BoundLower := fBoundLower;
  TESBIPEdit(fEdit).BoundUpper := fBoundUpper;
  TESBIPEdit(fEdit).BoundsEnabled := fBoundsEnabled;
end;

{ TESBHexEditLink }

procedure TESBHexEditLink.CreateInstance(aParent: TWinControl);
begin
  fEdit := TESBHexEdit.Create(aParent);
end;

procedure TESBHexEditLink.SetProperties;
begin
  inherited;
  TESBHexEdit(fEdit).BoundLower := fBoundLower;
  TESBHexEdit(fEdit).BoundUpper := fBoundUpper;
  TESBHexEdit(fEdit).BoundsEnabled := fBoundsEnabled;
end;

{ TESBYearEditLink }

procedure TESBYearEditLink.CreateInstance(aParent: TWinControl);
begin
  fEdit := TESBYearEdit.Create(aParent);
end;

procedure TESBYearEditLink.SetProperties;
begin
  inherited;
  TESBYearEdit(fEdit).BoundLowerYear := fBoundLowerYear;
  TESBYearEdit(fEdit).BoundUpperYear := fBoundUpperYear;
  TESBYearEdit(fEdit).BoundsEnabled := fBoundsEnabled;
end;


{ TESBDateEditLink }

procedure TESBDateEditLink.CreateInstance(aParent: TWinControl);
begin
  fEdit := TESBDateEdit.Create(aParent);
end;

procedure TESBDateEditLink.SetProperties;
begin
  inherited;
  TESBDateEdit(fEdit).BoundLowerYear := fBoundLowerYear;
  TESBDateEdit(fEdit).BoundUpperYear := fBoundUpperYear;
  TESBDateEdit(fEdit).BoundLower := fBoundLower;
  TESBDateEdit(fEdit).BoundUpper := fBoundUpper;
  TESBDateEdit(fEdit).BoundsEnabled := fBoundsEnabled;
  TESBDateEdit(fEdit).BoundsYearEnable := fBoundsYearEnable;
end;

{ TESBTimeEditLink }

procedure TESBTimeEditLink.CreateInstance(aParent: TWinControl);
begin
  fEdit := TESBTimeEdit.Create(aParent);
end;

procedure TESBTimeEditLink.setProperties;
begin
  inherited;
  TESBTimeEdit(fEdit).BoundLower := fBoundLower;
  TESBTimeEdit(fEdit).BoundUpper := fBoundUpper;
  TESBTimeEdit(fEdit).BoundsEnabled := fBoundsEnabled;
end;

{ TESBDOWEditLink }

procedure TESBDOWEditLink.CreateInstance(aParent: TWinControl);
begin
  fEdit := TESBDOWEdit.Create(aParent);
end;

procedure TESBDOWEditLink.SetProperties;
begin
  inherited;
  TESBDOWEdit(fEdit).BoundLower := fBoundLower;
  TESBDOWEdit(fEdit).BoundUpper := fBoundUpper;
  TESBDOWEdit(fEdit).BoundsEnabled := fBoundsEnabled;
end;

{ TESBMonthEditLink }

procedure TESBMonthEditLink.CreateInstance(aParent: TWinControl);
begin
  fEdit := TESBMonthEdit.Create(aParent);
end;

procedure TESBMonthEditLink.SetProperties;
begin
  inherited;
  TESBMonthEdit(fEdit).BoundLower := fBoundLower;
  TESBMonthEdit(fEdit).BoundUpper := fBoundUpper;
  TESBMonthEdit(fEdit).BoundsEnabled := fBoundsEnabled;
end;

{ TESBCurrEditLink }

procedure TESBCurrEditLink.CreateInstance(aParent: TWinControl);
begin
  fEdit := TESBCurrEdit.Create(aParent);
end;

procedure TESBCurrEditLink.SetProperties;
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

{ TESBLongCurrEditLink }

procedure TESBLongCurrEditLink.CreateInstance(aParent: TWinControl);
begin
  fEdit := TESBLongCurrEdit.Create(aParent);
end;

procedure TESBLongCurrEditLink.SetProperties;
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

{ TESBCurrencyEditLink }

procedure TESBCurrencyEditLink.CreateInstance(aParent: TWinControl);
begin
  fEdit := TESBCurrencyEdit.Create(aParent);
end;

procedure TESBCurrencyEditLink.SetProperties;
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

{TESBDateTimeEditLink}

constructor TESBDateTimeEditLink.Create(aOwner: TComponent);
begin
  inherited;
  WantKeyLeftRight := true;
  WantKeyHomeEnd := true;
  ColorRO := clWindow;
  ColorRW := clWindow;
  ColorFocus := clWindow;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  Day := 10;
  Month := 10;
  Year := 2002;
  Hour := 10;
  Minute := 10;
  Second := 10;
  Millisecond := 10;
  Flat := true;
end;

procedure TESBDateTimeEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  fEdit := TESBDateTimeEdit.Create(aParent);
  fEdit.OnKeyDown := EditKeyDown;
  fEdit.OnExit := EditExit;
  fEdit.Top := 0;
  fEdit.Left := 0;
  fEdit.Width := 0;
  fEdit.Parent := aParent;
  WantKeyLeftRight := true;
  WantKeyHomeEnd := true;
end;

procedure TESBDateTimeEditLink.DestroyEditor;
begin
  if assigned(fEdit) then fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBDateTimeEditLink.EditExit(sender: TObject);
begin
  HideEditor;
end;

function TESBDateTimeEditLink.GetEditControl: TWinControl;
begin
  result := fEdit;
end;

function TESBDateTimeEditLink.GetEditorValue: string;
var
  datum: TDateTime;
begin
  datum := fEdit.AsDateTime;
  result := DateTimeToStr(datum);
end;

procedure TESBDateTimeEditLink.SetEditorValue(s: string);
var
  dateT: TDateTime;
begin
  if (s <> '') then
  begin
    dateT := StrtoDateTime(copy(s, 0, 19));
    TESBDateTimeEdit(fEdit).AsDateTime := dateT;
  end;
end;

procedure TESBDateTimeEditLink.SetProperties;
begin
  inherited;
  fEdit.Color := fColor;
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.FlatBorder := fFlatBorder;
  fEdit.Flat := fFlat;
  fEdit.Null := fNull;
  fEdit.NullStr := fNullStr;
  fEdit.FormatDate := fFormatDate;
  fEdit.FormatTime := fFormatTime;
  fEdit.Day := fDay;
  fEdit.Month := fMonth;
  fEdit.Year := fYear;
  fEdit.Hour := fHour;
  fEdit.Minute := fMinute;
  fEdit.Second := fSecond;
  fEdit.Millisecond := fMillisecond;
end;


{TESBSuperEditLink}

constructor TESBSuperEditLink.Create(aOwner: TComponent);
begin
  inherited;
  WantKeyLeftRight := true;
  WantKeyHomeEnd := true;
  ColorRO := clWindow;
  ColorRW := clWindow;
  ColorFocus := clWindow;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  Flat := true;
end;

procedure TESBSuperEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  fEdit := TESBSuperEdit.Create(aParent);
  fEdit.OnKeyDown := EditKeyDown;
  fEdit.OnExit := EditExit;
  fEdit.Top := 0;
  fEdit.Left := 0;
  fEdit.Width := 0;
  fEdit.Parent := aParent;
  WantKeyLeftRight := true;
  WantKeyHomeEnd := true;
end;

procedure TESBSuperEditLink.DestroyEditor;
begin
  if assigned(fEdit) then fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBSuperEditLink.EditExit(sender: TObject);
begin
  HideEditor;
end;

function TESBSuperEditLink.GetEditControl: TWinControl;
begin
  result := fEdit;
end;

function TESBSuperEditLink.GetEditorValue: string;
begin
  result := fEdit.Text;
end;

procedure TESBSuperEditLink.SetEditorValue(s: string);
begin
  if (s <> '') then
    fEdit.Text := s;
end;

procedure TESBSuperEditLink.SetProperties;
begin
  inherited;
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

{ TESBComplexEditLink }

constructor TESBComplexEditLink.Create(aOwner: TComponent);
begin
  inherited;
  WantKeyLeftRight := true;
  WantKeyHomeEnd := true;
  ColorRO := clWindow;
  ColorRW := clWindow;
  ColorFocus := clWindow;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  Flat := true;
end;

procedure TESBComplexEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  fEdit := TESBComplexEdit.Create(aParent);
  fEdit.OnKeydown := EditKeyDown;
  fEdit.OnExit := EditExit;
  fEdit.top := 0;
  fEdit.left := 0;
  fEdit.Width := 0;
  fEdit.Height := 0;
  fEdit.Parent := aParent;
  WantKeyLeftRight := true;
  WantKeyHomeEnd := true;
end;

procedure TESBComplexEditLink.DestroyEditor;
begin
  if assigned(fEdit) then fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBComplexEditLink.EditExit(sender: TObject);
begin
  HideEditor;
end;

function TESBComplexEditLink.GetEditControl: TWinControl;
begin
  result := fEdit;
end;

function TESBComplexEditLink.GetEditorValue: string;
begin
  result := floattostr(fedit.RealPortion) + ':' + floattostr(fedit.ImaginaryPortion);
end;

procedure TESBComplexEditLink.SetEditorValue(s: string);
begin
  if (s <> '') and (pos(':', s) > 0) then
  begin
    fedit.RealPortion := strtofloat(copy(s, 1, pos(':', s) - 1));
    fedit.ImaginaryPortion := strtofloat(copy(s, pos(':', s) + 1, length(s)));
  end;
end;

procedure TESBComplexEditLink.SetProperties;
begin
  inherited;
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

{ TESBFractionEditLink }

constructor TESBFractionEditLink.Create(aOwner: TComponent);
begin
  inherited;
  WantKeyLeftRight := true;
  WantKeyHomeEnd := true;
  ColorRO := clWindow;
  ColorRW := clWindow;
  ColorFocus := clWindow;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  Flat := true;
end;

procedure TESBFractionEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  fEdit := TESBFractionEdit.Create(aParent);
  fEdit.OnKeydown := EditKeyDown;
  fEdit.OnExit := EditExit;
  fEdit.top := 0;
  fEdit.left := 0;
  fEdit.Width := 0;
  fEdit.Height := 0;
  fEdit.Parent := aParent;
  WantKeyLeftRight := true;
  WantKeyHomeEnd := true;
end;

procedure TESBFractionEditLink.DestroyEditor;
begin
  if assigned(fEdit) then fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBFractionEditLink.EditExit(sender: TObject);
begin
  HideEditor;
end;

function TESBFractionEditLink.GetEditControl: TWinControl;
begin
  result := fEdit;
end;

function TESBFractionEditLink.GetEditorValue: string;
begin
  result := inttostr(fEdit.Numerator) + '/' + inttostr(fEdit.Denominator);
end;

procedure TESBFractionEditLink.SetEditorValue(s: string);
begin
  if (s <> '') and (pos('/', s) > 0) then
  begin
    fEdit.Numerator := strtoint(copy(s, 1, pos('/', s) - 1));
    fEdit.Denominator := strtoint(copy(s, pos('/', s) + 1, length(s)));
  end;
end;

procedure TESBFractionEditLink.SetProperties;
begin
  inherited;
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
  fEdit.Denominator := fDenominator;
  fEdit.Numerator := fNumerator;
end;

{TESBFractEditLink}

constructor TESBFractEditLink.Create(aOwner: TComponent);
begin
  inherited;
  WantKeyLeftRight := true;
  WantKeyHomeEnd := true;
  ColorRO := clWindow;
  ColorRW := clWindow;
  ColorFocus := clWindow;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  Flat := true;
end;

procedure TESBFractEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  fEdit := TESBFractEdit.Create(aParent);
  fEdit.OnKeydown := EditKeyDown;
  fEdit.OnExit := EditExit;
  fEdit.top := 0;
  fEdit.left := 0;
  fEdit.Width := 0;
  fEdit.Height := 0;
  fEdit.Parent := aParent;
  WantKeyLeftRight := true;
  WantKeyHomeEnd := true;
end;

procedure TESBFractEditLink.DestroyEditor;
begin
  if assigned(fEdit) then fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBFractEditLink.EditExit(sender: TObject);
begin
  HideEditor;
end;

function TESBFractEditLink.GetEditControl: TWinControl;
begin
  result := fEdit;
end;

function TESBFractEditLink.GetEditorValue: string;
begin
  result := fEdit.Text;
end;

procedure TESBFractEditLink.SetEditorValue(s: string);
begin
  if (s <> '') then
    fEdit.text := s;
end;

procedure TESBFractEditLink.SetProperties;
begin
  inherited;
  fEdit.TrimTrailingZeroes := fTrimZeroes;
  fEdit.BoundLower := fBoundLower;
  fEdit.BoundsEnabled := fBoundsEnabled;
  fEdit.BoundUpper := fBoundUpper;
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnFocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.DecimalPlaces := fDecimalPlaces;
  fEdit.DecimalsFract := fDecimalsFract;
  fEdit.Flat := fFlat;
  fEdit.FlatBorder := fFlatBorder;
  fEdit.Null := fNull;
  fEdit.NullStr := fNullStr;
end;

{ TESBIntSpinEditLink }

procedure TESBIntSpinEditLink.CreateInstance(aParent: TWinControl);
begin
  fEdit := TESBIntSpinEdit.Create(aParent);
end;

function TESBIntSpinEditLink.GetEditorValue: string;
begin
  result := inttostr(TESBIntSpinEdit(fEdit).value);
end;

procedure TESBIntSpinEditLink.SetEditorValue(s: string);
begin
  if (s = '') then TESBIntSpinEdit(fEdit).Value := 0 else
    TESBIntSpinEdit(fEdit).value := strtoint(s);
end;

procedure TESBIntSpinEditLink.setProperties;
begin
  TESBIntSpinEdit(fEdit).ShowThousandSeparators := fShowThousandSeparators;
end;

{ TESBFloatSpinEditLink }

constructor TESBFloatSpinEditLink.Create(aOwner: TComponent);
begin
  inherited;
  WantKeyLeftRight := true;
  WantKeyHomeEnd := true;
  ColorRO := clWindow;
  ColorRW := clWindow;
  ColorFocus := clWindow;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  DecimalPlaces := 2;
  FlatEdit := true;
end;

procedure TESBFloatSpinEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  fEdit := TESBFloatSpinEdit.Create(aParent);
  fEdit.OnKeydown := EditKeyDown;
  fEdit.OnExit := EditExit;
  fEdit.top := 0;
  fEdit.left := 0;
  fEdit.Width := 0;
  fEdit.Height := 0;
  fEdit.Parent := aParent;
  WantKeyLeftRight := true;
  WantKeyHomeEnd := true;
end;

procedure TESBFloatSpinEditLink.DestroyEditor;
begin
  if assigned(fEdit) then fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBFloatSpinEditLink.EditExit(sender: TObject);
begin
  hideEditor;
end;

function TESBFloatSpinEditLink.GetEditControl: TWinControl;
begin
  result := fEdit;
end;

function TESBFloatSpinEditLink.GetEditorValue: string;
begin
  result := FloatToStr(fEdit.Value);
end;

procedure TESBFloatSpinEditLink.SetEditorValue(s: string);
begin
  if (s <> '') then
    fEdit.Value := StrToFloat(s);
end;

procedure TESBFloatSpinEditLink.SetProperties;
begin
  inherited;
  fEdit.DecimalPlaces := fDecimalPlaces;
  fEdit.ShowThousandSeparators := fShowThousandSeparators;
end;

{ TESBYearSpinEditLink }

procedure TESBYearSpinEditLink.CreateInstance(aParent: TWinControl);
begin
  fEdit := TESBYearSpinEdit.Create(aParent);
end;

function TESBYearSpinEditLink.GetEditorValue: string;
begin
  result := inttostr(TESBYearSpinEdit(fEdit).Year);
end;

procedure TESBYearSpinEditLink.SetEditorValue(s: string);
begin
  if (s = '') then TESBYearSpinEdit(fEdit).Year := 0 else
    TESBYearSpinEdit(fEdit).Year := strtoint(s);
end;

procedure TESBYearSpinEditLink.setProperties;
begin
  inherited;
  TESBYearSpinEdit(fEdit).YearCutoff := fYearCutOff;
end;

{ TESBMonthSpinEditLink }

constructor TESBMonthSpinEditLink.Create(aOwner: TComponent);
begin
  inherited;
  WantKeyLeftRight := true;
  WantKeyUpDown := true;
  WantKeyHomeEnd := true;
  ColorRO := clWindow;
  ColorRW := clWindow;
  ColorFocus := clWindow;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  FlatEdit := true;
end;

procedure TESBMonthSpinEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  fEdit := TESBMonthSpinEdit.Create(aParent);
  fEdit.OnKeydown := EditKeyDown;
  fEdit.OnExit := EditExit;
  fEdit.top := 0;
  fEdit.left := 0;
  fEdit.Width := 0;
  fEdit.Height := 0;
  fEdit.Parent := aParent;
end;

procedure TESBMonthSpinEditLink.DestroyEditor;
begin
  if assigned(fEdit) then fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBMonthSpinEditLink.EditExit(sender: TObject);
begin
  HideEditor;
end;

function TESBMonthSpinEditLink.GetEditControl: TWinControl;
begin
  result := fEdit;
end;

function TESBMonthSpinEditLink.GetEditorValue: string;
begin
  result := fEdit.MonthShort;
end;

procedure TESBMonthSpinEditLink.SetEditorValue(s: string);
begin
  if not (s = '') then
    fEdit.MonthShort := s
  else
    fEdit.MonthShort := 'jan';
end;

procedure TESBMonthSpinEditLink.setProperties;
begin
  inherited;
  fEdit.Color := fColor;
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.FlatEdit := fFlatEdit;
  fEdit.FlatSpinBtns := fFlatSpinBtns;
  fEdit.FlatBorder := fFlatBorder;
  fEdit.Month := fMonth;
end;

{ TESBDOWSpinEditLink }

constructor TESBDOWSpinEditLink.Create(aOwner: TComponent);
begin
  inherited;
  WantKeyLeftRight := true;
  WantKeyUpDown := true;
  WantKeyHomeEnd := true;
  ColorRO := clWindow;
  ColorRW := clWindow;
  ColorFocus := clWindow;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  FlatEdit := true;
end;

procedure TESBDOWSpinEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  fEdit := TESBDOWSpinEdit.Create(aParent);
  fEdit.OnKeydown := EditKeyDown;
  fEdit.OnExit := EditExit;
  fEdit.top := 0;
  fEdit.left := 0;
  fEdit.Width := 0;
  fEdit.Height := 0;
  fEdit.Parent := aParent;
end;


procedure TESBDOWSpinEditLink.DestroyEditor;
begin
  if assigned(fEdit) then fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBDOWSpinEditLink.setProperties;
begin
  fEdit.Color := fColor;
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fcolorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.FlatBorder := fFlatBorder;
  fEdit.FlatSpinBtns := fFlatSpinBtns;
  fEdit.FlatEdit := fFlatEdit;
  fEdit.Null := fNull;
  fEdit.NullStr := fNullStr;
end;

procedure TESBDOWSpinEditLink.EditExit(sender: TObject);
begin
  HideEditor;
end;

function TESBDOWSpinEditLink.GetEditControl: TWinControl;
begin
  result := fEdit;
end;

function TESBDOWSpinEditLink.GetEditorValue: string;
begin
  result := fEdit.DOWShort;
end;

procedure TESBDOWSpinEditLink.SetEditorValue(s: string);
begin
  if (s <> '') then
    fEdit.DOWShort := s
  else
    fEdit.DOWShort := 'zo';
end;

{ TESBMonthComboBoxEditLink }

constructor TESBMonthComboBoxEditLink.Create(aOwner: TComponent);
begin
  inherited;
  WantKeyUpDown := true;
  WantKeyPriorNext := true;
  WantKeyHomeEnd := true;
  ColorRO := clWindow;
  ColorRW := clWindow;
  ColorFocus := clWindow;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  Flat := true;
end;

procedure TESBMonthComboBoxEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  fEdit := TESBMonthComboBox.Create(aParent);
  fEdit.OnKeydown := EditKeyDown;
  fEdit.OnExit := EditExit;
  fEdit.top := 0;
  fEdit.left := 0;
  fEdit.Width := 0;
  fEdit.Height := 0;
  fEdit.Parent := aParent;
  fEdit.ItemIndex := 0;
end;

procedure TESBMonthComboBoxEditLink.DestroyEditor;
begin
  if assigned(fEdit) then fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBMonthComboBoxEditLink.EditExit(sender: TObject);
begin
  HideEditor;
end;

function TESBMonthComboBoxEditLink.GetEditControl: TWinControl;
begin
  result := fEdit;
end;

function TESBMonthComboBoxEditLink.GetEditorValue: string;
begin
  result := fEdit.MonthLong;
end;

procedure TESBMonthComboBoxEditLink.SetEditorValue(s: string);
begin
  if (s <> '') then
    fEdit.MonthLong := s;
end;

procedure TESBMonthComboBoxEditLink.SetRect(r: trect);
begin
  inherited;
  fEdit.height := 100;
end;

procedure TESBMonthComboBoxEditLink.setProperties;
begin
  inherited;
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.Flat := fFlat;
  fEdit.FlatBorder := fFlatBorder;
end;

{TESBLookUpComboBox}

constructor TESBLookUpComboBoxEditLink.Create(aOwner: TComponent);
begin
  inherited;
  WantKeyUpDown := true;
  WantKeyPriorNext := true;
  WantKeyHomeEnd := true;
  fItems := TStringList.Create;
  ColorRO := clWindow;
  ColorRW := clWindow;
  ColorFocus := clWindow;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  Flat := true;
end;

procedure TESBLookUpComboBoxEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  fEdit := TESBLookUpComboBox.Create(aParent);
  fEdit.OnKeydown := EditKeyDown;
  fEdit.OnExit := EditExit;
  fEdit.top := 0;
  fEdit.left := 0;
  fEdit.Width := 0;
  fEdit.Height := 0;
  fEdit.Parent := aParent;
  fEdit.AddItem('hall', aParent);
end;

procedure TESBLookUpComboBoxEditLink.DestroyEditor;
begin
  if assigned(fEdit) then fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBLookUpComboBoxEditLink.EditExit(sender: TObject);
begin
  HideEditor;
end;

function TESBLookUpComboBoxEditLink.GetEditControl: TWinControl;
begin
  result := fEdit;
end;

function TESBLookUpComboBoxEditLink.GetEditorValue: string;
begin
  result := fEdit.AsItem;
end;

procedure TESBLookUpComboBoxEditLink.SetEditorValue(s: string);
begin
  fEdit.AsItem := s;
end;

procedure TESBLookUpComboBoxEditLink.SetRect(r: trect);
begin
  inherited;
  fEdit.height := 100;
end;

procedure TESBLookUpComboBoxEditLink.SetProperties;
begin
  inherited;
  fEdit.Items := fItems;
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.Flat := fFlat;
  fEdit.FlatBorder := fFlatBorder;
  fEdit.DropDownCount := fDropDownCount;
end;

{TESBCountryComboBoxEditLink}

constructor TESBCountryComboBoxEditLink.Create(aOwner: TComponent);
begin
  inherited;
  WantKeyUpDown := true;
  WantKeyPriorNext := true;
  WantKeyHomeEnd := true;
  ColorRO := clWindow;
  ColorRW := clWindow;
  ColorFocus := clWindow;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  Flat := true;
end;

procedure TESBCountryComboBoxEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  fEdit := TESBCountryComboBox.Create(aParent);
  fEdit.OnKeydown := EditKeyDown;
  fEdit.OnExit := EditExit;
  fEdit.top := 0;
  fEdit.left := 0;
  fEdit.Width := 0;
  fEdit.Height := 0;
  fEdit.Parent := aParent;
  ReadCountryList(ESBCountryList, 'esbcountry.xml');
  TESBCountryComboBox(fEdit).LoadItems;
end;

procedure TESBCountryComboBoxEditLink.DestroyEditor;
begin
  if assigned(fEdit) then fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBCountryComboBoxEditLink.EditExit(sender: TObject);
begin
  HideEditor;
end;

function TESBCountryComboBoxEditLink.GetEditControl: TWinControl;
begin
  result := fEdit;
end;

function TESBCountryComboBoxEditLink.GetEditorValue: string;
begin
  result := fedit.Items[fedit.itemindex];
end;

procedure TESBCountryComboBoxEditLink.SetEditorValue(s: string);
begin
  fEdit.Itemindex := fedit.Items.IndexOf(S);
end;

procedure TESBCountryComboBoxEditLink.SetProperties;
begin
  inherited;
  fEdit.Flat := fFlat;
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fedit.ColorRW := clred;
  fEdit.FlatBorder := fFlatBorder;
  fEdit.Height := 200;
end;

{ TESBDowComboBoxEditLink }

constructor TESBDowComboBoxEditLink.Create(aOwner: TComponent);
begin
  inherited;
  WantKeyUpDown := true;
  WantKeyPriorNext := true;
  WantKeyHomeEnd := true;
  ColorRO := clWindow;
  ColorRW := clWindow;
  ColorFocus := clWindow;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  Flat := true;
end;

procedure TESBDowComboBoxEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  fEdit := TESBDowComboBox.Create(aParent);
  fEdit.OnKeydown := EditKeyDown;
  fEdit.OnExit := EditExit;
  fEdit.top := 0;
  fEdit.left := 0;
  fEdit.Width := 0;
  fEdit.Height := 0;
  fEdit.Parent := aParent;
  fEdit.ItemIndex := 0;
end;

procedure TESBDowComboBoxEditLink.DestroyEditor;
begin
  if assigned(fEdit) then fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBDowComboBoxEditLink.EditExit(sender: TObject);
begin
  HideEditor;
end;

function TESBDowComboBoxEditLink.GetEditControl: TWinControl;
begin
  result := fEdit;
end;

function TESBDowComboBoxEditLink.GetEditorValue: string;
begin
  result := fEdit.DOWLong;
end;

procedure TESBDowComboBoxEditLink.SetEditorValue(s: string);
begin
  if (s <> '') then
    fEdit.DOWLong := s;
end;

procedure TESBDowComboBoxEditLink.SetRect(r: trect);
begin
  inherited;
  fEdit.Height := 100;
end;

procedure TESBDowComboBoxEditLink.setProperties;
begin
  inherited;
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.Flat := fFlat;
  fEdit.FlatBorder := fFlatBorder;
end;

{ TESBTZComboBoxEditLink }

constructor TESBTZComboBoxEditLink.Create(aOwner: TComponent);
begin
  inherited;
  WantKeyUpDown := true;
  WantKeyPriorNext := true;
  WantKeyHomeEnd := true;
  ColorRO := clWindow;
  ColorRW := clWindow;
  ColorFocus := clWindow;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  Flat := true;
end;

procedure TESBTZComboBoxEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  fEdit := TESBTZComboBox.Create(aParent);
  fEdit.OnKeydown := EditKeyDown;
  fEdit.OnExit := EditExit;
  fEdit.top := 0;
  fEdit.left := 0;
  fEdit.Width := 0;
  fEdit.Height := 0;
  fEdit.Parent := aParent;
end;

procedure TESBTZComboBoxEditLink.DestroyEditor;
begin
  if assigned(fEdit) then fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBTZComboBoxEditLink.EditExit(sender: TObject);
begin
  HideEditor;
end;

function TESBTZComboBoxEditLink.GetEditControl: TWinControl;
begin
  result := fEdit;
end;

function TESBTZComboBoxEditLink.GetEditorValue: string;
begin
  if fEdit.ItemIndex >= 0 then
    result := fEdit.Items[fEdit.ItemIndex]
  else result := '';
end;

procedure TESBTZComboBoxEditLink.SetEditorValue(s: string);
begin
  if (s <> '') then fEdit.DisplayName := s;
end;

procedure TESBTZComboBoxEditLink.SetRect(r: trect);
begin
  inherited;
  fEdit.Height := 100;
end;

procedure TESBTZComboBoxEditLink.SetProperties;
begin
  inherited;
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.Flat := fFlat;
  fEdit.FlatBorder := fFlatBorder;
end;


{ TESBEMUComboBoxEditLink }

constructor TESBEMUComboBoxEditLink.Create(aOwner: TComponent);
begin
  inherited;
  WantKeyUpDown := true;
  WantKeyPriorNext := true;
  WantKeyHomeEnd := true;
  ColorRO := clWindow;
  ColorRW := clWindow;
  ColorFocus := clWindow;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  Flat := true;
end;

procedure TESBEMUComboBoxEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  fEdit := TESBEMUComboBox.Create(aParent);
  fEdit.OnKeydown := EditKeyDown;
  fEdit.OnExit := EditExit;
  fEdit.top := 0;
  fEdit.left := 0;
  fEdit.Width := 0;
  fEdit.Height := 0;
  fEdit.Parent := aParent;
end;

procedure TESBEMUComboBoxEditLink.DestroyEditor;
begin
  if assigned(fEdit) then fEdit.Free;
  fEdit := nil;
  inherited;
end;

procedure TESBEMUComboBoxEditLink.EditExit(sender: TObject);
begin
  HideEditor;
end;

function TESBEMUComboBoxEditLink.GetEditControl: TWinControl;
begin
  result := fEdit;
end;

function TESBEMUComboBoxEditLink.GetEditorValue: string;
begin
  fEdit.EMUFormat := eefShortEMU;
  if fEdit.EMU > 0 then result := fEdit.EMUShort;
end;

procedure TESBEMUComboBoxEditLink.SetEditorValue(s: string);
begin
  if (s <> '') then fEdit.EMUShort := s;
end;

procedure TESBEMUComboBoxEditLink.SetRect(r: trect);
begin
  inherited;
  fEdit.Height := 100;
end;

procedure TESBEMUComboBoxEditLink.SetProperties;
begin
  inherited;
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.Flat := fFlat;
  fEdit.FlatBorder := fFlatBorder;
end;

procedure Register;
begin
  RegisterComponents('TMS EditLinks', [
    TESBComplexEditLink,
      TESBSuperEditLink,
      TESBDateTimeEditLink,
      TESBFractEditLink,
      TESBCountryComboBoxEditLink,
      TESBLookUpComboBoxEditLink,
      TESBFractionEditLink,
      TESBPCSEditLink,
      TESBPosEditLink,
      TESBIntEditLink,
      TESBPosFloatEditLink,
      TESBFloatEditLink,
      TESBSciFloatEditLink,
      TESBPercentEditLink,
      TESBIPEditLink,
      TESBHexEditLink,
      TESBYearEditLink,
      TESBDateEditLink,
      TESBTimeEditLink,
      TESBDOWEditLink,
      TESBMonthEditLink,
      TESBCurrEditLink,
      TESBLongCurrEditLink,
      TESBCurrencyEditLink,
      TESBPosSpinEditLink,
      TESBIntSpinEditLink,
      TESBFloatSpinEditLink,
      TESBYearSpinEditLink,
      TESBMonthSpinEditLink,
      TESBDOWSpinEditLink,
      TESBMonthComboBoxEditLink,
      TESBDowComboBoxEditLink,
      TESBTZComboBoxEditLink,
      TESBEMUComboBoxEditLink]);
end;

destructor TESBLookUpComboBoxEditLink.Destroy;
begin
  fItems.Free;
  inherited;
end;

procedure TESBLookUpComboBoxEditLink.SetItems(const Value: TStrings);
begin
  fItems.Assign(Value);
end;

{ TESBPosSpinEditLink }

constructor TESBPosSpinEditLink.Create(aOwner: TComponent);
begin
  inherited;
  WantKeyUpDown := true;
  WantKeyPriorNext := true;
  WantKeyHomeEnd := true;
  ColorRO := clWindow;
  ColorRW := clWindow;
  ColorFocus := clWindow;
  ColorBorderFocus := clWindow;
  ColorBorderUnfocus := clWindow;
  FlatEdit := true;
end;

procedure TESBPosSpinEditLink.CreateEditor(aParent: TWinControl);
begin
  inherited;
  fEdit := TESBPosSpinEdit.Create(aParent);
  fEdit.OnKeydown := EditKeyDown;
  fEdit.OnExit := EditExit;
  fEdit.top := 0;
  fEdit.left := 0;
  fEdit.Width := 0;
  fEdit.Height := 0;
  fEdit.Parent := aParent;
end;

procedure TESBPosSpinEditLink.DestroyEditor;
begin
  inherited;
  if assigned(fEdit) then
    fEdit.Free;
  fEdit := nil;
end;

function TESBPosSpinEditLink.GetEditControl: TWinControl;
begin
  result := fEdit;
end;

function TESBPosSpinEditLink.GetEditorValue: string;
begin
  result := fEdit.Text;
end;

procedure TESBPosSpinEditLink.SetEditorValue(s: string);
begin
  inherited;
  fEdit.Text := s;
end;

procedure TESBPosSpinEditLink.SetProperties;
begin
  inherited;
  fEdit.ShowThousandSeparators := fShowThousandSeparators;
  fEdit.ColorBorderFocus := fColorBorderFocus;
  fEdit.ColorBorderUnfocus := fColorBorderUnfocus;
  fEdit.ColorFocus := fColorFocus;
  fEdit.ColorRO := fColorRO;
  fEdit.ColorRW := fColorRW;
  fEdit.FlatBorder := fFlatBorder;
  fEdit.FlatEdit := fFlatEdit;
  fEdit.null := fNull;
  fEdit.NullStr := fNullStr;
  fEdit.FlatSpinBtns := fFlatSpinBtns;
end;

initialization
  ReadCountryList(ESBCountryList, 'esbcountry.xml');

end.
