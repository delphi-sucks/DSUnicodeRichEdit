unit DS.Vcl.UnicodeRichEdit;

interface

uses
  Vcl.Controls, Vcl.ComCtrls;

type
  TDSUnicodeRichEdit = class(TRichEdit)
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  end;

procedure Register;

implementation

uses
  System.Classes,
  DS.UnicodeRichEdit;

{ TDSUnicodeRichEdit }

procedure TDSUnicodeRichEdit.CreateParams(var Params: TCreateParams);
begin
  inherited;
  CreateSubClass(Params, RICHEDIT_UNICODE_CLASS);
end;

procedure Register;
begin
   RegisterComponents('Delphi-Sucks | Unicode', [TDSUnicodeRichEdit]);
end;

end.
