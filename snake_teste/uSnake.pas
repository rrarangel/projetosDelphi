unit uSnake;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Contnrs;

type
  TForm1 = class(TForm)
    shp1: TShape;
    shp2: TShape;
    tmr1: TTimer;
    procedure tmr1Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure resetDirection();
    procedure criar();
  private
    { Private declarations }
    w,s,a,d     : Boolean;
    pLeft, pTop : Integer;
     cLista : TObjectList;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.criar;
var
 corpo : TShape;
  I: Integer;

begin

   corpo := TShape.Create(self);
   corpo.Height := 10;
   corpo.Width := 10;
   corpo.Visible := true;


   cLista := TObjectList.Create;
   cLista.Add(corpo);




end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_LEFT then
  begin
   resetDirection();
   shp2.Top := shp1.Top;
   shp2.Left := shp1.Left - 10;
   a := true;

  end
   else if Key = VK_RIGHT then
    begin
     resetDirection();
     shp2.Top := shp1.Top;
     shp2.Left := shp1.Left + 10;
     d := True
    end
  else if Key = VK_UP then
    begin
      resetDirection();
      w := True
    end
  else if Key = VK_DOWN then
  begin
    resetDirection();
    s := True;
  end;

  if Key = VK_SPACE then
   begin
     criar();
   end;

end;

procedure TForm1.resetDirection;
begin
  a := False;
  d := False;
  w := False;
  s := False;
end;

procedure TForm1.tmr1Timer(Sender: TObject);
begin

   if (a) then
     begin
      shp1.Left := shp1.Left - 1;
      shp2.Left := shp2.Left - 1;
     end
      else if (d) then
       begin
        shp1.Left := shp1.Left + 1;
        shp2.Left := shp2.Left + 1;
       end;

end;

end.
