unit uSnake3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Timer1: TTimer;
    Edit1: TEdit;
    procedure mover(Sender : TShape);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  vLeft, vTop : Integer;
  vDirection : String;

implementation

{$R *.dfm}

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
I: Integer;
begin
  if (Key = VK_UP) then
    begin

      vDirection := 'up';

       for I := 0 to Form1.ComponentCount - 1 do
      begin
          if (Components[I] is TShape) then
          begin
               if  ((Components[I] as TShape).tag = 9999) then
                begin
                   vLeft := (Components[I] as TShape).Left;
                   vTop := (Components[I] as TShape).Top;
                end;

          end;
      end;

    end;

    Edit1.Text := 'LEFT: ' + IntToStr(vLeft) + '    TOP: ' + IntToStr(vTop);

end;

procedure TForm1.mover(Sender: TShape);
var
  I: Integer;
begin


     for I := 0 to Form1.ComponentCount - 1 do
      begin
          if (Components[I] is TShape) then
          begin
               if  ((Components[I] as TShape).tag = 9999) then
                begin
                   if(vDirection = 'up')then
                    begin
                      (Components[I] as TShape).top := (Components[I] as TShape).top - 1;
                    end;
                end
                else
                begin
                      (Components[I] as TShape).left := (Components[I] as TShape).left + 1;
                end;
          end;
      end;



     for I := 0 to Form1.ComponentCount - 1 do
      begin
          if (Components[I] is TShape) then
          begin
               if  ((Components[I] as TShape).Left = vLeft)
                     and ((Components[I] as TShape).top = vTop)
                     and ((Components[I] as TShape).tag <> 9999) then
                begin
                   if(vDirection = 'up')then
                    begin
                      (Components[I] as TShape).top := (Components[I] as TShape).top - 1;
                    end;
                end;
          end;
      end;




     //Sender.Left := Sender.Left + 1;





end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
        mover(Shape1);
        mover(Shape2);
end;

end.
