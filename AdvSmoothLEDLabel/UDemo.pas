{********************************************************************}
{ TMS TAdvSmoothLedLabel Demo                                        }
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
  Dialogs, AdvSmoothLedLabel, ExtCtrls, StdCtrls;
type

  TForm177 = class(TForm)
    AdvSmoothLedLabel2: TAdvSmoothLedLabel;
    AdvSmoothLedLabel3: TAdvSmoothLedLabel;
    Timer1: TTimer;
    Button1: TButton;
    AdvSmoothLedLabel1: TAdvSmoothLedLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form177: TForm177;

implementation

{$R *.dfm}

const
  SystemBasicInformation = 0;
  SystemPerformanceInformation = 2;
  SystemTimeInformation = 3;

type
  TPDWord = ^DWORD;

  TSystem_Basic_Information = packed record
    dwUnknown1: DWORD;
    uKeMaximumIncrement: ULONG;
    uPageSize: ULONG;
    uMmNumberOfPhysicalPages: ULONG;
    uMmLowestPhysicalPage: ULONG;
    uMmHighestPhysicalPage: ULONG;
    uAllocationGranularity: ULONG;
    pLowestUserAddress: Pointer;
    pMmHighestUserAddress: Pointer;
    uKeActiveProcessors: ULONG;
    bKeNumberProcessors: byte;
    bUnknown2: byte;
    wUnknown3: word;
  end;

type
  TSystem_Performance_Information = packed record
    liIdleTime: LARGE_INTEGER; {LARGE_INTEGER}
    dwSpare: array[0..75] of DWORD;
  end;

type
  TSystem_Time_Information = packed record
    liKeBootTime: LARGE_INTEGER;
    liKeSystemTime: LARGE_INTEGER;
    liExpTimeZoneBias: LARGE_INTEGER;
    uCurrentTimeZoneId: ULONG;
    dwReserved: DWORD;
  end;

var
  NtQuerySystemInformation: function(infoClass: DWORD;
    buffer: Pointer;
    bufSize: DWORD;
    returnSize: TPDword): DWORD; stdcall = nil;


  liOldIdleTime: LARGE_INTEGER = ();
  liOldSystemTime: LARGE_INTEGER = ();

function Li2Double(x: LARGE_INTEGER): Double;
begin
  Result := x.HighPart * 4.294967296E9 + x.LowPart
end;

procedure GetCPUUsage;
var
  SysBaseInfo: TSystem_Basic_Information;
  SysPerfInfo: TSystem_Performance_Information;
  SysTimeInfo: TSystem_Time_Information;
  status: Longint; {long}
  dbSystemTime: Double;
  dbIdleTime: Double;

  bLoopAborted : boolean;

begin
  if @NtQuerySystemInformation = nil then
    NtQuerySystemInformation := GetProcAddress(GetModuleHandle('ntdll.dll'),
      'NtQuerySystemInformation');

  // get number of processors in the system

  status := NtQuerySystemInformation(SystemBasicInformation, @SysBaseInfo, SizeOf(SysBaseInfo), nil);
  if status <> 0 then Exit;

  bLoopAborted := False;

  while not bLoopAborted do
  begin

    // get new system time
    status := NtQuerySystemInformation(SystemTimeInformation, @SysTimeInfo, SizeOf(SysTimeInfo), nil);
    if status <> 0 then Exit;

    // get new CPU's idle time
    status := NtQuerySystemInformation(SystemPerformanceInformation, @SysPerfInfo, SizeOf(SysPerfInfo), nil);
    if status <> 0 then Exit;

    // if it's a first call - skip it
    if (liOldIdleTime.QuadPart <> 0) then
    begin

      // CurrentValue = NewValue - OldValue
      dbIdleTime := Li2Double(SysPerfInfo.liIdleTime) - Li2Double(liOldIdleTime);
      dbSystemTime := Li2Double(SysTimeInfo.liKeSystemTime) - Li2Double(liOldSystemTime);

      // CurrentCpuIdle = IdleTime / SystemTime
      dbIdleTime := dbIdleTime / dbSystemTime;

      // CurrentCpuUsage% = 100 - (CurrentCpuIdle * 100) / NumberOfProcessors
      dbIdleTime := 100.0 - dbIdleTime * 100.0 / SysBaseInfo.bKeNumberProcessors + 0.5;

      // Show Percentage
      Form177.AdvSmoothLedLabel1.Caption.Value := dbIdleTime;

      Application.ProcessMessages;

      // Abort if user pressed ESC or Application is terminated
      bLoopAborted := (GetKeyState(VK_ESCAPE) and 128 = 128) or Application.Terminated;

    end;

    // store new CPU's idle and system time
    liOldIdleTime := SysPerfInfo.liIdleTime;
    liOldSystemTime := SysTimeInfo.liKeSystemTime;

    // wait one second
    Sleep(1000);
  end;
end;

procedure TForm177.Button1Click(Sender: TObject);
begin
  GetCPUUsage;
end;

procedure TForm177.FormCreate(Sender: TObject);
begin
  DoubleBuffered := true;
end;

end.
