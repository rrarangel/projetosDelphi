unit uZeroEsquerda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    procedure edt1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.edt1Exit(Sender: TObject);
begin
 Edt1.Text := Format('%.12d', [StrToInt(Edt1.Text)]);
end;

end.
