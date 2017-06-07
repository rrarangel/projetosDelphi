unit uConfINI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IniFiles;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    chk1: TCheckBox;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
var
confFile : TIniFile;
begin

   try
     confFile := TIniFile.Create('C:\SQL\confINI.ini');

                          //Seção       //Identificador   //Valor
     confFile.WriteString('confGeral', 'NomeOperador', edt1.Text);
     confFile.WriteBool('confGeral', 'Teste1', chk1.Checked);

    finally
     FreeAndNil(confFile);
   end;


end;

procedure TForm1.FormShow(Sender: TObject);
var
confFile : TIniFile;
begin

   try
    confFile := TIniFile.Create('C:\SQL\confINI.ini');
    edt1.Text := confFile.ReadString('confGeral', 'NomeOperador','');
    chk1.Checked := confFile.ReadBool('confGeral','Teste1',false);

    finally
     FreeAndNil(confFile);
   end;

end;

end.
