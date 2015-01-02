library DLLProj2;

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
  DLLUnit2 in 'DLLUnit2.pas' {DLLForm2};

{$R *.res}

procedure ShowDllForm2;stdcall;
begin
  DLLForm2 := TDLLForm2.Create(nil);
  DLLForm2.Show;
end;

function ShowDllFormModal2:integer;stdcall;
begin
  DLLForm2 := TDLLForm2.Create(nil);
  Result := DLLForm2.ShowModal;
end;

exports
    ShowDllForm2,
    ShowDllFormModal2;

begin
end.
