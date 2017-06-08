unit uIdeiaMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    Label1: TLabel;
    tmr1: TTimer;
    lv1: TListView;
    procedure procAbrirMenu(panel : TPanel);
    procedure tmr1Timer(Sender: TObject);
    procedure pnl1Click(Sender: TObject);
    procedure FormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  pnlMenu : TPanel;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.FormClick(Sender: TObject);
begin
   tmr1.Enabled := false;
   pnl1.Height := 25;
end;

procedure TForm1.pnl1Click(Sender: TObject);
begin
    pnlMenu := (Sender as TPanel);
    pnlMenu.Color := $000000;
    pnlMenu.Font.Color := $FFFFFF;
    tmr1.Enabled := true;
end;

procedure TForm1.procAbrirMenu(panel: TPanel);
begin
  if panel.Height > 300 then
   begin
     Exit();
   end;
  panel.Height := panel.Height + 30;
end;

procedure TForm1.tmr1Timer(Sender: TObject);
begin
   procAbrirMenu(pnlMenu);
end;

end.
