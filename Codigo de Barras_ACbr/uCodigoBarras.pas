unit uCodigoBarras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ACBrBarCode;

type
  TForm1 = class(TForm)
    ACBrBarCode1: TACBrBarCode;
    edt1: TEdit;
    btn1: TButton;
    lbl1: TLabel;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  ACBrBarCode1.Text := edt1.Text;
  lbl1.Caption := edt1.Text;
end;

end.
