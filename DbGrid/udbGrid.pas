unit udbGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExButtons, JvButtons, JvExControls, JvSwitch, pngimage,
  JvSlider, JvLookOut, acPNG, ExtCtrls, JvExExtCtrls, JvImage, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, DB, ADODB, ImgList;

type
  TForm1 = class(TForm)
    JvSwitch1: TJvSwitch;
    JvSwitch2: TJvSwitch;
    JvSwitch3: TJvSwitch;
    JvSwitch4: TJvSwitch;
    JvSwitch5: TJvSwitch;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    tbl1: TADOTable;
    il1: TImageList;
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  //--FIGURA NO DBGRID
  if (Column = dbgrd1.Columns[0]) then
   begin
      dbgrd1.Canvas.FillRect(Rect);
      dbgrd1.DefaultDrawDataCell(rect,Column.Field,State);
      il1.Draw(dbgrd1.Canvas,Rect.Left+(Column.Width-17),Rect.Top+1,0);
   end;


   if (gdSelected in State) then
    begin

      if (Column = dbgrd1.Columns[0]) then
      begin
        dbgrd1.Canvas.FillRect(Rect);
        dbgrd1.DefaultDrawDataCell(rect,Column.Field,State);
        il1.Draw(dbgrd1.Canvas,Rect.Left+(Column.Width-17),Rect.Top+1,1);

      end;
    end;


end;

end.
