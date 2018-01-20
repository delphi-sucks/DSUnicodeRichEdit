unit DS.Vcl.UnicodeDBRichEdit;

interface

uses
  Vcl.Controls, Vcl.DBCtrls;

type
  TDSUnicodeDBRichEdit = class(TDBRichEdit)
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  end;

procedure Register;

implementation

uses
  System.Classes,
  DS.UnicodeRichEdit;

{ TDSUnicodeDBRichEdit }

procedure TDSUnicodeDBRichEdit.CreateParams(var Params: TCreateParams);
begin
  inherited;
  CreateSubClass(Params, RICHEDIT_UNICODE_CLASS);
end;

procedure Register;
begin
   RegisterComponents('Delphi-Sucks | Unicode', [TDSUnicodeDBRichEdit]);
end;

end.
