unit ExJvDBSearchEdit1;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, JvExStdCtrls, JvEdit, JvDBSearchEdit;

type
  TJvDBSearchEdit1 = class(TJvDBSearchEdit)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Grupo Recursos', [TJvDBSearchEdit1]);
end;

end.
