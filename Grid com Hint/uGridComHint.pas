unit uGridComHint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, Unit2, Unit3;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    Sp: TADOStoredProc;
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure mouseToCell(X, Y: integer; var ACol, ARow: longint);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  MeuHint : TMyHint;
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}


procedure TForm1.DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
   MColumn, MRow: Longint;
begin
   // A partir da posi��o do mouse obtemos a coordenada da c�lula do grid
   MouseToCell(X,Y,MColumn,MRow);
   // Se for uma c�lula v�lida ...
   if (MRow > 0) and (MColumn >0) and (Mcolumn <= DbGrid1.Columns.Count) then
   begin
      // Fazemos a coluna do Grid ser a coluna apontada pelo mouse, para isso usamos a classe amiga
      // definida no come�o da unit
      //TCellGrid(DBGrid1).col := MColumn;

      // Movemos o DataSet para a linha apontada pelo mouse deslocando em rela��o � sua posi��o
      // anterior
      //DBGrid1.DataSource.DataSet.MoveBy(MRow - TCellGrid(DBGrid1).row);

      // Se o dado apontado n�o for do tipo String nem Variant n�o apresentamos o Hint
      if (DBGrid1.Columns[MColumn-1].Field.DataType <> ftString) and
         (DBGrid1.Columns[MColumn-1].Field.DataType <> ftVariant) then
      begin
         DBGrid1.Hint := '';
         MeuHint.ReleaseHandle;
         Exit;
      end;
      // Passamos o conte�do do campo para o Hint do Grid e chamamos a fun��o para exibi-lo

      DBgrid1.Hint := DBGrid1.Columns[MColumn-1].Field.AsString;
      MeuHint.doActivateHint(DBGrid1);
   end
else
   begin
      // Se n�o for c�lula v�lida limpo o Hint
      DBGrid1.Hint := '';
      MeuHint.ReleaseHandle;
    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

  // Crio a minha janela de Hint
   MeuHint := TMyHint.Create(Self);

end;

procedure TForm1.FormShow(Sender: TObject);
begin

   Sp.Close;
   Sp.ProcedureName := 'Sre_AtivacaoGuincho';
   Sp.Parameters.Refresh;
   Sp.Parameters.ParamByName('@DataInicial').Value := '01/02/2017';
   Sp.Parameters.ParamByName('@DataFinal').Value := '01/02/2017';
   Sp.Open;

end;

procedure TForm1.mouseToCell(X, Y: integer; var ACol, ARow: Integer);
var
   Coord: TGridCoord;
begin
   Coord := DbGrid1.MouseCoord(X,Y);
   ACol := Coord.X;
   ARow := Coord.Y;
end;

end.
