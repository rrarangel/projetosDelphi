unit uListViewDemandas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    lv1: TListView;
    SP_Consulta_Demanda: TADOStoredProc;
    con1: TADOConnection;
    tmr1: TTimer;
    procedure tmr1Timer(Sender: TObject);
    procedure carregarDemandas();
    procedure lv1AdvancedCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage;
      var DefaultDraw: Boolean);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1   : TForm1;
  itemLV  : TListItem;
  colorir : Boolean;
  grupoLV : TListGroup;

implementation

{$R *.dfm}

procedure TForm1.carregarDemandas;
var
  I, cont, idGrupo, cont2: Integer;
  flag : Boolean;
begin
        flag := false;
        SP_Consulta_Demanda.Close;
        SP_Consulta_Demanda.ProcedureName := 'STb_Demanda_Localizar';
        SP_Consulta_Demanda.Parameters.Refresh;
        SP_Consulta_Demanda.Parameters.ParamByName('@VLoCampo').Value  := 'Matricula';
        SP_Consulta_Demanda.Parameters.ParamByName('@VLoBusca1').Value := 'RodrigoRangel';
        SP_Consulta_Demanda.Parameters.ParamByName('@VLoBusca2').Value := 'operador';
        SP_Consulta_Demanda.Open;

        cont := 0;
        lv1.GroupView := True;
        //lv1.ViewStyle := vsSmallIcon;
        lv1.Clear;


        while (not SP_Consulta_Demanda.eof) do
         begin

              if (cont >= 1) then
               begin
               for I := 1 to lv1.Groups.Count do
                 begin

                  //lv1.Groups.Items[I-1].Header

                   if (SP_Consulta_Demanda.FieldByName('DescricaoBairro').AsString = lv1.Groups.Items[I-1].Header) then
                    begin
                      idGrupo := lv1.Items.Item[I-1].GroupID;
                      flag := True;

                      //grupoLV := lv1.Groups.Add;
                      grupoLV.GroupID := idGrupo;
                      //grupoLV.Header := SP_Consulta_Demanda.FieldByName('DescricaoBairro').AsString;
                      //grupoLV.Footer := '-------------------------';
                      itemLV := lv1.Items.Add;
                      itemLV.GroupID := idGrupo;
                      itemLV.Caption := SP_Consulta_Demanda.FieldByName('CodigoDemanda').AsString;
                      itemLV.SubItems.Add(SP_Consulta_Demanda.FieldByName('DataOcorrencia').AsString);
                      itemLV.SubItems.Add(SP_Consulta_Demanda.FieldByName('HoraOcorrencia').AsString);
                      itemLV.SubItems.Add(SP_Consulta_Demanda.FieldByName('DescricaoServico').AsString);
                      itemLV.SubItems.Add(SP_Consulta_Demanda.FieldByName('DescricaoFonte').AsString);
                      itemLV.SubItems.Add(SP_Consulta_Demanda.FieldByName('DescricaoBairro').AsString);
                      itemLV.SubItems.Add(SP_Consulta_Demanda.FieldByName('Situacao').AsString);
                      itemLV.SubItems.Add(SP_Consulta_Demanda.FieldByName('Prioridade').AsString);


                    end;

                 end;
               end;

              if (not flag) then
               begin
                  grupoLV := lv1.Groups.Add;
                  grupoLV.GroupID := cont;
                  grupoLV.Header := SP_Consulta_Demanda.FieldByName('DescricaoBairro').AsString;
                  grupoLV.HeaderAlign := taLeftJustify;
                  grupoLV.State := [lgsCollapsible];
                  itemLV := lv1.Items.Add;
                  itemLV.GroupID := cont;
                  itemLV.Caption := SP_Consulta_Demanda.FieldByName('CodigoDemanda').AsString;
                  itemLV.SubItems.Add(SP_Consulta_Demanda.FieldByName('DataOcorrencia').AsString);
                  itemLV.SubItems.Add(SP_Consulta_Demanda.FieldByName('HoraOcorrencia').AsString);
                  itemLV.SubItems.Add(SP_Consulta_Demanda.FieldByName('DescricaoServico').AsString);
                  itemLV.SubItems.Add(SP_Consulta_Demanda.FieldByName('DescricaoFonte').AsString);
                  itemLV.SubItems.Add(SP_Consulta_Demanda.FieldByName('DescricaoBairro').AsString);
                  itemLV.SubItems.Add(SP_Consulta_Demanda.FieldByName('Situacao').AsString);
                  itemLV.SubItems.Add(SP_Consulta_Demanda.FieldByName('Prioridade').AsString);

                  cont := cont + 1;
               end;

               flag := False;

          SP_Consulta_Demanda.Next();
         end;



end;






procedure TForm1.FormActivate(Sender: TObject);
begin
   carregarDemandas();
end;

procedure TForm1.lv1AdvancedCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage;
  var DefaultDraw: Boolean);
begin

{(Item.SubItems.Strings[6] posi��o do subtem Prioridade no listView}

  if (Item.SubItems.Strings[6] = '1') then
  begin
    lv1.Canvas.Brush.Color:= clRed;
    lv1.Canvas.Font.Color:= clWhite;
  end
  else if (Item.SubItems.Strings[6] = '2') then
  begin
    lv1.Canvas.Brush.Color:= $000A6BE2;
    lv1.Canvas.Font.Color:= clWhite;
  end
  else if (Item.SubItems.Strings[6] = '3') then
  begin
    lv1.Canvas.Brush.Color:= $0000C0FF;
    lv1.Canvas.Font.Color:= clBlack;
  end
  else if (Item.SubItems.Strings[6] = '4') then
  begin
    lv1.Canvas.Brush.Color:= clYellow;
    lv1.Canvas.Font.Color:= clBlack;
  end
  else if (Item.SubItems.Strings[6] = '5') then
  begin
    lv1.Canvas.Brush.Color:= $00F3EEDA;
    lv1.Canvas.Font.Color:= clBlack;
  end;

end;

procedure TForm1.tmr1Timer(Sender: TObject);
begin

      tmr1.Enabled := False;
       carregarDemandas();
      tmr1.Enabled := True;

end;

end.
