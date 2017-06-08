unit uUsarDBNavigator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, DBCtrls, Mask, ExtCtrls, Buttons, pngimage,
  sBitBtn;

type
  TForm1 = class(TForm)
    sp1: TADOStoredProc;
    btn1: TButton;
    con1: TADOConnection;
    sp1CodDepartamento: TAutoIncField;
    sp1Nome: TStringField;
    sp1CodSecretaria: TIntegerField;
    sp1Tipo: TStringField;
    sp1TFT: TBooleanField;
    sp1CVO: TBooleanField;
    Label1: TLabel;
    dbedtCodDepartamento: TDBEdit;
    ds1: TDataSource;
    Label2: TLabel;
    dbedtNome: TDBEdit;
    Label3: TLabel;
    dbedtCodSecretaria: TDBEdit;
    Label4: TLabel;
    dbedtTipo: TDBEdit;
    dbchkTFT: TDBCheckBox;
    dbchkCVO: TDBCheckBox;
    dbnvgr1: TDBNavigator;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.sBitBtn1Click(Sender: TObject);
begin
    dbnvgr1.BtnClick(nbPrior);
end;

procedure TForm1.sBitBtn2Click(Sender: TObject);
begin
     dbnvgr1.BtnClick(nbInsert);
end;

end.
