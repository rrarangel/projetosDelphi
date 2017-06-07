unit uWebService_Correios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, InvokeRegistry, StdCtrls, Rio, SOAPHTTPClient;

type
  TForm1 = class(TForm)
    HTTPRIO1: THTTPRIO;
    Edit1: TEdit;
    Memo1: TMemo;
    HTTPRIO2: THTTPRIO;
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  CEP, AtendeCliente1;

{$R *.dfm}

procedure TForm1.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
//ObjSoap : CEPServicePort;
objSoap      : AtendeCliente;
cep1         : String;
foEndereco   : enderecoERP;
begin
    if key = VK_RETURN then
     begin

        //ObjSoap := (HTTPRIO1 as CEPServicePort);
        //ObjSoap := (HTTPRIO2 as AtendeCliente);
        objSoap := GetAtendeCliente(True,'',HTTPRIO2);
        //cep1 := Edit1.Text;
        //enderecoERP := ObjSoap.consultaCEP(cep1);
        //Memo1.Lines.Add(objSoap.consultaCEP(cep1).bairro);
        //foEndereco.Create;
        //foEndereco.
        objSoap.consultaCEP('41615000');


     end;
end;

end.
