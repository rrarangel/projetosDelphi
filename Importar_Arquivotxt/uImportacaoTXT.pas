unit uImportacaoTXT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, sMaskEdit, sCustomComboEdit, sTooledit,
  sDirectory_Edit, ExtDlgs, DB, ADODB, sSkinManager, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    openText: TOpenTextFileDialog;
    Button2: TButton;
    Sp: TADOStoredProc;
    Conn: TADOConnection;
    Label2: TLabel;
    sSkinManager1: TsSkinManager;
    Panel1: TPanel;
    Edit2: TEdit;
    Label3: TLabel;
    Button3: TButton;
    Button4: TButton;
    Edit3: TEdit;
    Edit5: TEdit;
    Label4: TLabel;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tipoOperacao : String;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 if openText.Execute then
  begin
     Edit1.Text := openText.FileName;

  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin

  tipoOperacao := 'RENAVAM';
  if Edit1.Text = '' then
   begin
     ShowMessage('Favor localizar o arquivo antes de importar!');
     Abort;
   end;

  Cursor := crHourGlass;

  Application.ProcessMessages;

  Label2.Caption := 'Copiando o arquivo para o local de importação...';

  try
    CopyFile(PChar(Edit1.Text),PChar(Edit2.Text),false);
  except on e : Exception do
   begin
    ShowMessage('Erro ao copiar o arquivo para o local de importação devido ao erro'
    + #13 + e.Message);
     Label2.Caption := 'Erro ao copiar o arquivo.';
   end;

  end;


  //------------
  //Conectar ao servidor



  Label2.Caption := 'Importando dados para a base de dados...';
  try
    Sp.Close;
    Sp.ProcedureName := 'stb_ImportarOCR_TXT';
    Sp.Parameters.Refresh;
    Sp.Parameters.ParamByName('@vloCampo').Value := tipoOperacao;
    Sp.Parameters.ParamByName('@caminhoArquivo').Value := Edit2.Text;
    Sp.ExecProc;
    Label2.Caption := 'Dados importados.';

    ShowMessage('Arquivo importado para a base de dados com sucesso!');
  except on e : Exception do
   begin
    ShowMessage('Erro ao copiar o arquivo para o local de importação devido ao erro'
    + #13 + e.Message);
    Label2.Caption := 'Erro ao atualizar a base de dados.';
   end;

  end;


    Cursor := crDefault;


end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  panel1.Visible := True;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Panel1.Visible := False;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin

  tipoOperacao := 'RENACH';
  if Edit5.Text = '' then
   begin
     ShowMessage('Favor localizar o arquivo antes de importar!');
     Abort;
   end;

  Cursor := crHourGlass;

  Application.ProcessMessages;

  Label2.Caption := 'Copiando o arquivo para o local de importação...';

  try
    CopyFile(PChar(Edit5.Text),PChar(Edit3.Text),false);
  except on e : Exception do
   begin
    ShowMessage('Erro ao copiar o arquivo para o local de importação devido ao erro'
    + #13 + e.Message);
     Label2.Caption := 'Erro ao copiar o arquivo.';
   end;

  end;


  //------------
  //Conectar ao servidor



  Label2.Caption := 'Importando dados para a base de dados...';
  try
    Sp.Close;
    Sp.ProcedureName := 'stb_ImportarOCR_TXT';
    Sp.Parameters.Refresh;
    Sp.Parameters.ParamByName('@vloCampo').Value := tipoOperacao;
    Sp.Parameters.ParamByName('@caminhoArquivo').Value := Edit3.Text;
    Sp.ExecProc;
    Label2.Caption := 'Dados importados.';

    ShowMessage('Arquivo importado para a base de dados com sucesso!');
  except on e : Exception do
   begin
    ShowMessage('Erro ao copiar o arquivo para o local de importação devido ao erro'
    + #13 + e.Message);
    Label2.Caption := 'Erro ao atualizar a base de dados.';
   end;

  end;


    Cursor := crDefault;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
 if openText.Execute then
  begin
     Edit5.Text := openText.FileName;

  end;
end;

end.
