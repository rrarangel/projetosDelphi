unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids;

type
  TMyHint  = class(THintWindow)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure doActivateHint(Sender : TObject);
  end;

var
  myHint: TMyHint;

implementation

{$R *.dfm}

{ TMyHint }

procedure TMyHint.doActivateHint(Sender: TObject);
var
   r : TRect;
   wdth_hint, hght_hint : integer;
begin
   if (Sender is TDbGrid) then
   begin
      // Calculo as dimensões necessárias à janela de Hint sendo o limite igual à 1/3 da tela
      r := CalcHintRect((Screen.Width div 3), (Sender as TDbGrid).Hint, nil);
      wdth_hint := r.Right - r.Left;
      hght_hint := r.Bottom - r.Top;

      // Reposiciono a janela do Hint para próximo da posição do mouse mantendo o tamanho
      // calculado pela rotina anterior
      r.Left := r.Left + mouse.CursorPos.X + 16;
      r.Top := r.Top + mouse.CursorPos.Y + 16;
      r.Right := r.Left + wdth_hint;
      r.Bottom := r.Top + hght_hint;
      // Executo o procedimento para exibição do Hint na tela

      ActivateHint(r,(Sender as TDbGrid).Hint);
   end;
end;

end.
