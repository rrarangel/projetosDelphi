unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sScrollBox, sFrameBar, Menus, ExtCtrls, ComCtrls;

type
  TfPrincipal = class(TForm)
    btn1: TButton;
    mm1: TMainMenu;
    Arquivo1: TMenuItem;
    Sair1: TMenuItem;
    pgc1: TPageControl;
    pnl1: TPanel;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrincipal: TfPrincipal;

implementation

uses
  ufilho1;

{$R *.dfm}

procedure TfPrincipal.btn1Click(Sender: TObject);
begin
  try
    // if fFilho1 = nil then
   //   begin
        TfFilho1.Create(Application).Show;

    //  end;

  finally

  end;
end;

end.
