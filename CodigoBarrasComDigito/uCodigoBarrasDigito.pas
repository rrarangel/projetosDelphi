unit uCodigoBarrasDigito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frxClass;

type
  TForm1 = class(TForm)
    btn1: TButton;
    edt1: TEdit;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  codbar : String;

implementation

{$R *.dfm}

function CalculaDigEAN13(Cod:String):String;
function Par(Cod:Integer):Boolean;
begin
       Result:= Cod Mod 2 = 0 ;
end;

var
     i,
     SomaPar,
     SomaImpar:Integer;
begin
      SomaPar:=0;
      SomaImpar:=0;
      for i:=1 to 12 do
        if Par(i) then
           SomaPar:=SomaPar+StrToInt(Cod[i])
        else
           SomaImpar:=SomaImpar+StrToInt(Cod[i]);
       SomaPar:=SomaPar*3;
       i:=0;
       while i < (SomaPar+SomaImpar) do
         Inc(i,10);
       Result:=IntToStr(i-(SomaPar+SomaImpar));
end;


procedure TForm1.btn1Click(Sender: TObject);
begin
 codbar := '000000502017';
 codbar := codbar + CalculaDigEAN13(codbar);
 edt1.Text := codbar;
end;

end.
