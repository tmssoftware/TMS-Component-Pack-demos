library DLLProj3;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  SysUtils,
  Classes,
  DLLUnit3 in 'DLLUnit3.pas' {DLLForm3};

{$R *.res}

procedure ShowDllForm3;stdcall;
begin
  DLLForm3 := TDLLForm3.Create(nil);
  DLLForm3.Show;
end;

function ShowDllFormModal3:integer;stdcall;
begin
  DLLForm3 := TDLLForm3.Create(nil);
  Result := DLLForm3.ShowModal;
end;

exports
    ShowDllForm3,
    ShowDllFormModal3;

begin
end.
