unit DS.UnicodeRichEdit;

interface

const
  RICHEDIT_UNICODE_CLASSA = 'RICHEDIT50A';
  RICHEDIT_UNICODE_CLASSW = 'RICHEDIT50W';
  RICHEDIT_UNICODE_CLASS = RICHEDIT_UNICODE_CLASSW;

  RICHEDIT_UNICODE_MODULENAME = 'MSFTEDIT.DLL';

implementation

uses
  Winapi.Windows,
  System.SysUtils;

var
  FRichEditUnicodeModule: HMODULE;

initialization
begin
  FRichEditUnicodeModule := LoadLibrary(RICHEDIT_UNICODE_MODULENAME);
  if FRichEditUnicodeModule <= HINSTANCE_ERROR then
  begin
    raise Exception.Create('Could not load library "' + RICHEDIT_UNICODE_MODULENAME + '"!');
  end;
end;

finalization
begin
  if FRichEditUnicodeModule <> 0 then
  begin
    FreeLibrary(FRichEditUnicodeModule);
  end;
end;

end.
