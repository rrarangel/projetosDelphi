program WebService_Correios;

uses
  Forms,
  uWebService_Correios in 'uWebService_Correios.pas' {Form1},
  cep in 'CEP.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
