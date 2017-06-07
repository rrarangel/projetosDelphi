unit uPrevisaoTempo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, xmldom, XMLIntf, msxmldom, XMLDoc, Buttons, DB, DBTables, acPNG,
  ExtCtrls, ImgList;

type
  TForm1 = class(TForm)
    IdHTTP1: TIdHTTP;
    edt1: TEdit;
    XMLDocument1: TXMLDocument;
    btn1: TBitBtn;
    grp1: TGroupBox;
    grp2: TGroupBox;
    grp3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    grp4: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    img1: TImage;
    img2: TImage;
    img3: TImage;
    img4: TImage;
    procedure baixarXML();
    procedure carregarXML();
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  fileXML, fileXMLLoad : TFileStream;


implementation

{$R *.dfm}

{ TForm1 }

function retornarDiaDaSemana(data : String): String;
begin

  if (DayOfWeek(StrToDate(data)))    = 1 then
  Result := 'Domingo';
    if (DayOfWeek(StrToDate(data)))  = 2 then
  Result := 'Segunda-Feira';
    if (DayOfWeek(StrToDate(data)))  = 3 then
  Result := 'Ter�a-Feira';
    if (DayOfWeek(StrToDate(data)))  = 4 then
  Result := 'Quarta-Feira';
    if (DayOfWeek(StrToDate(data)))  = 5 then
  Result := 'Quinta-Feira';
    if (DayOfWeek(StrToDate(data)))  = 6 then
  Result := 'Sexta-Feira';
      if (DayOfWeek(StrToDate(data)))= 7 then
  Result := 'S�bado';

end;

function retornaCondicao(sigla : String): String;
begin

  if (sigla = 'ec') then
  Result := 'Encoberto com Chuvas Isoladas'
  else
  if (sigla = 'ci') then
  Result := 'Chuvas Isoladas'
    else
  if (sigla = 'c') then
  Result := 'Chuva';
  if (sigla = 'in') then
  Result := 'Inst�vel';
  if (sigla = 'pp') then
  Result := 'Poss. de Pancadas de Chuva';
  if (sigla = 'cm') then
  Result := 'Chuva pela Manh�';
  if (sigla = 'cn') then
  Result := 'Chuva a Noite';
  if (sigla = 'pt') then
  Result := 'Pancadas de Chuva a Tarde';
  if (sigla = 'pm') then
  Result := 'Pancadas de Chuva pela Manh�';
  if (sigla = 'np') then
  Result := 'Nublado e Pancadas de Chuva';
  if (sigla = 'pc') then
  Result := 'Pancadas de Chuva';
  if (sigla = 'pn') then
  Result := 'Parcialmente Nublado';
  if (sigla = 'cv') then
  Result := 'Chuvisco';
  if (sigla = 'ch') then
  Result := 'Chuvoso';
  if (sigla = 't') then
  Result := 'Tempestade';
  if (sigla = 'ps') then
  Result := 'Predom�nio de Sol';
  if (sigla = 'e') then
  Result := 'Encoberto';
  if (sigla = 'n') then
  Result := 'Nublado';
  if (sigla = 'cl') then
  Result := 'C�u Claro';
  if (sigla = 'nv') then
  Result := 'Nevoeiro';
  if (sigla = 'g') then
  Result := 'Geada';
  if (sigla = 'ne') then
  Result := 'Neve';
  if (sigla = 'nd') then
  Result := 'N�o Definido';
  if (sigla = 'pnt') then
  Result := 'Pancadas de Chuva a Noite';
  if (sigla = 'psc') then
  Result := 'Possibilidade de Chuva';
  if (sigla = 'pcm') then
  Result := 'Possibilidade de Chuva pela Manh�';
  if (sigla = 'pct') then
  Result := 'Possibilidade de Chuva a Tarde';
  if (sigla = 'pcn') then
  Result := 'Possibilidade de Chuva a Noite';
  if (sigla = 'npt') then
  Result := 'Nublado com Pancadas a Tarde';
  if (sigla = 'npn') then
  Result := 'Nublado com Pancadas a Noite';
  if (sigla = 'ncn') then
  Result := 'Nublado com Poss. de Chuva a Noite';
  if (sigla = 'nct') then
  Result := 'Nublado com Poss. de Chuva a Tarde';
  if (sigla = 'ncm') then
  Result := 'Nubl. c/ Poss. de Chuva pela Manh�';
  if (sigla = 'npm') then
  Result := 'Nublado com Pancadas pela Manh�';
  if (sigla = 'npp') then
  Result := 'Nublado com Possibilidade de Chuva'
    else
  if (sigla = 'vn') then
  Result := 'Varia��o de Nebulosidade'
    else
  if (sigla = 'ct') then
  Result := 'Chuva a Tarde'
    else
  if (sigla = 'ppn') then
  Result := 'Poss. de Panc. de Chuva a Noite'
    else
  if (sigla = 'ppt') then
  Result := 'Poss. de Panc. de Chuva a Tarde'
    else
  if (sigla = 'ppm') then
  Result := 'Poss. de Panc. de Chuva pela Manh�';



end;

procedure TForm1.baixarXML;
var
local, destino : String;
begin

  local := ExtractFilePath(Application.ExeName) + 'xmlSalvador.xml';
  destino := ExtractFilePath(Application.ExeName)+'XML\xmlSalvador0.xml';
 try
    fileXML := TFileStream.Create(local,fmCreate);
    IdHTTP1.Get(edt1.Text, fileXML);


  finally
    IdHTTP1.Disconnect();
    FreeAndNil(fileXML);
    CopyFile(PChar(local), PChar(destino), false);
 end;



end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  baixarXML();
  carregarXML();
end;

procedure TForm1.carregarXML;
var
I : Integer;
dtStr, dtAtualizacao, condicao : string;

begin
     XMLDocument1.FileName := ExtractFilePath(Application.ExeName) + 'XML\xmlSalvador0.xml';
     XMLDocument1.Active := True;
     Self.Caption := 'Previs�o para os pr�ximos 4 dias em: ' + XMLDocument1.DocumentElement.ChildValues['nome'] + ' - ' + XMLDocument1.DocumentElement.ChildValues['uf'];
     dtAtualizacao := XMLDocument1.DocumentElement.ChildValues['atualizacao'];
     label17.Caption := 'Atualizado em: ' + copy(dtAtualizacao,9,2)+'/'+copy(dtAtualizacao,6,2)+'/'+copy(dtAtualizacao,0,4) + ' �s ' + TimeToStr(now());

     for I := 0 to XMLDocument1.DocumentElement.ChildNodes.Count - 1 do
      begin
                     //2017-05-09
         if (I = 3) then
          begin
            dtStr := XMLDocument1.DocumentElement.ChildNodes[I].ChildNodes['dia'].Text;
            dtStr := copy(dtStr,9,2)+'/'+copy(dtStr,6,2)+'/'+copy(dtStr,0,4);
            grp1.Caption := 'Previs�o para : ' + retornarDiaDaSemana(dtStr) + ' - ' + dtStr;
            img1.Picture.LoadFromFile('imgs\'+XMLDocument1.DocumentElement.ChildNodes[I].ChildNodes['tempo'].Text + '.png');
            Label1.Caption := retornaCondicao(XMLDocument1.DocumentElement.ChildNodes[I].ChildNodes['tempo'].Text);
            Label2.Caption := 'M�xima: ' + XMLDocument1.DocumentElement.ChildNodes[I].ChildNodes['maxima'].Text;
            Label3.Caption := 'M�nima: ' + XMLDocument1.DocumentElement.ChildNodes[I].ChildNodes['minima'].Text;
            Label4.Caption := '�ndice UV: ' + XMLDocument1.DocumentElement.ChildNodes[I].ChildNodes['iuv'].Text;
          end;

          if (I = 4) then
          begin
            dtStr := XMLDocument1.DocumentElement.ChildNodes[I].ChildNodes['dia'].Text;
            dtStr := copy(dtStr,9,2)+'/'+copy(dtStr,6,2)+'/'+copy(dtStr,0,4);
            grp2.Caption := 'Previs�o para : ' + retornarDiaDaSemana(dtStr) + ' - ' + dtStr;
            img2.Picture.LoadFromFile('imgs\'+XMLDocument1.DocumentElement.ChildNodes[I].ChildNodes['tempo'].Text + '.png');
            Label5.Caption :=  retornaCondicao(XMLDocument1.DocumentElement.ChildNodes[I].ChildNodes['tempo'].Text);
            Label6.Caption := 'M�xima: ' + XMLDocument1.DocumentElement.ChildNodes[I].ChildNodes['maxima'].Text;
            Label7.Caption := 'M�nima: ' + XMLDocument1.DocumentElement.ChildNodes[I].ChildNodes['minima'].Text;
            Label8.Caption := '�ndice UV: ' + XMLDocument1.DocumentElement.ChildNodes[I].ChildNodes['iuv'].Text;
          end;

          if (I = 5) then
          begin
            dtStr := XMLDocument1.DocumentElement.ChildNodes[I].ChildNodes['dia'].Text;
            dtStr := copy(dtStr,9,2)+'/'+copy(dtStr,6,2)+'/'+copy(dtStr,0,4);
            grp3.Caption := 'Previs�o para : ' + retornarDiaDaSemana(dtStr) + ' - ' + dtStr;
            img3.Picture.LoadFromFile('imgs\'+XMLDocument1.DocumentElement.ChildNodes[I].ChildNodes['tempo'].Text + '.png');
            Label9.Caption :=  retornaCondicao(XMLDocument1.DocumentElement.ChildNodes[I].ChildNodes['tempo'].Text);
            Label10.Caption := 'M�xima: ' + XMLDocument1.DocumentElement.ChildNodes[I].ChildNodes['maxima'].Text;
            Label11.Caption := 'M�nima: ' + XMLDocument1.DocumentElement.ChildNodes[I].ChildNodes['minima'].Text;
            Label12.Caption := '�ndice UV: ' + XMLDocument1.DocumentElement.ChildNodes[I].ChildNodes['iuv'].Text;
          end;


          if (I = 6) then
          begin
            dtStr := XMLDocument1.DocumentElement.ChildNodes[I].ChildNodes['dia'].Text;
            dtStr := copy(dtStr,9,2)+'/'+copy(dtStr,6,2)+'/'+copy(dtStr,0,4);
            grp4.Caption := 'Previs�o para : ' + retornarDiaDaSemana(dtStr) + ' - ' + dtStr;
            img4.Picture.LoadFromFile('imgs\'+XMLDocument1.DocumentElement.ChildNodes[I].ChildNodes['tempo'].Text + '.png');
            Label13.Caption :=  retornaCondicao(XMLDocument1.DocumentElement.ChildNodes[I].ChildNodes['tempo'].Text);
            Label14.Caption := 'M�xima: ' + XMLDocument1.DocumentElement.ChildNodes[I].ChildNodes['maxima'].Text;
            Label15.Caption := 'M�nima: ' + XMLDocument1.DocumentElement.ChildNodes[I].ChildNodes['minima'].Text;
            Label16.Caption := '�ndice UV: ' + XMLDocument1.DocumentElement.ChildNodes[I].ChildNodes['iuv'].Text;
          end;

      end;

end;

end.
