unit uAutoComplete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, DBCtrls;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    con1: TADOConnection;
    sp1: TADOStoredProc;
    ds1: TDataSource;
    lst1: TListBox;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    procedure edt1Change(Sender: TObject);
    procedure lst1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure lst1DblClick(Sender: TObject);
    procedure pegarDados();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.edt1Change(Sender: TObject);
begin

  //Se o campo estiver vazio, não faz nada e esconde o listbox.
  if edt1.Text = '' then
   begin
     lst1.Clear;
     lst1.Visible := false;
     Exit();
   end;

   //Carrega procedure
   sp1.Close;
   sp1.ProcedureName := 'stb_usuarios_LocAutoComplete';
   sp1.Parameters.Refresh;
   sp1.Parameters.ParamByName('@nome').Value := edt1.Text;
   sp1.Open;

   //Seta o listbox como visible e preenche que o resultado da procedure.
   lst1.Visible := true;
   lst1.Clear;
   while (not sp1.eof) do
    begin
       lst1.Items.Add(sp1.FieldByName('Usu_Nome').AsString);
     sp1.Next();
    end;

    //Pega o valor extra vindo da stored.
    edt2.Clear;
    edt2.Text := sp1.FieldByName('Usu_cod').AsString;


    if (sp1.RecordCount <= 0) then
     begin
      lst1.Visible := false;
      lst1.Clear;
     end;


end;

procedure TForm1.lst1DblClick(Sender: TObject);
begin

 pegarDados();

end;

procedure TForm1.lst1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_RETURN) and (lst1.ItemIndex > -1) then
   begin
      pegarDados();
   end
   else
   begin
    Exit();
   end;


end;

procedure TForm1.pegarDados;
begin
   //Pega o valor selecionado na listbox.
    edt1.Text := lst1.Items[lst1.ItemIndex];
    lst1.Clear;
    lst1.Visible := false;
    edt1.SetFocus;
    edt1.SelectAll;

    edt5.Text := sp1.FieldByName('Usu_email').AsString;
    edt3.Text := sp1.FieldByName('Usu_matricula').AsString;
    edt4.Text := sp1.FieldByName('Usu_telefone').AsString;
end;

end.
