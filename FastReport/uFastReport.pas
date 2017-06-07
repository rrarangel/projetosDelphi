unit uFastReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, frxClass, frxDBSet, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    frxReport1: TfrxReport;
    con1: TADOConnection;
    sp1: TADOStoredProc;
    frxDBDataset1: TfrxDBDataset;
    btn1: TBitBtn;
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

  sp1.Close;
  sp1.ProcedureName := 'Sre_Relatorio_Operacional_Simples';
  sp1.Parameters.Refresh;
  sp1.Parameters.ParamByName('@DTInicio').Value := '01/01/2017';
  sp1.Parameters.ParamByName('@DTFinal').Value := '11/05/2017';
  sp1.Parameters.ParamByName('@HoraInicio').Value := '00:00';
  sp1.Parameters.ParamByName('@HoraFinal').Value := '23:59';
  sp1.Open;

  sp1.Active := true;

  frxReport1.ShowReport;


end;

end.
