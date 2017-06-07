unit uCodigoBarrasCanvas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    img1: TImage;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
    Procedure GerarCodigo(Codigo: String; Canvas : TCanvas);
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


  GerarCodigo('4534838234858458483843843843', img1.Canvas);


end;

Procedure TForm1.GerarCodigo(Codigo: String; Canvas : TCanvas);
 {
Procedimento para gerar a imagem de código de barras para ser impresso. Basta Colocar um componente tImage*  no form e chamar o procedimento da seguinte forma:
GerarCodigo('123456', image1.Canvas);
 *Na verdade você pode desenhar no canvas de qualquer componete, inclusive no componente qrImage para posterior impressão.
 }
const
   digitos : array['0'..'9'] of string[5]= ('00110', '10001', '01001', '11000',
   '00101', '10100', '01100', '00011', '10010', '01010');
var s : string;
     i, j, x, t : Integer;
begin
   // Gerar o valor para desenhar o código de barras
   // Caracter de início
   s := '0000';
   for i := 1 to length(codigo) div 2 do
     for j := 1 to 5 do
       s := s + Copy(Digitos[codigo[i * 2 - 1]], j, 1) + Copy(Digitos[codigo[i * 2]], j, 1);
   // Caracter de fim
   s := s + '100';
   // Desenhar em um objeto canvas
   // Configurar os parâmetros iniciais
   x := 0;
   // Pintar o fundo do código de branco
   Canvas.Brush.Color := clWhite;
   Canvas.Pen.Color := clWhite;
   Canvas.Rectangle(0,0, 2000, 79);
   // Definir as cores da caneta
   Canvas.Brush.Color := clBlack;
   Canvas.Pen.Color := clBlack;
   // Escrever o código de barras no canvas
   for i := 1 to length(s) do
   begin
     // Definir a espessura da barra
     t := strToInt(s[i]) * 2 + 1;
     // Imprimir apenas barra sim barra não (preto/branco - intercalado);
     if i mod 2 = 1 then
       Canvas.Rectangle(x, 0, x + t, 79);
     // Passar para a próxima barra
     x := x + t;
   end;

   //By Renato Félix de Almeida
end;

end.
