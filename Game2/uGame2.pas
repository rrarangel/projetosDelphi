unit uGame2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Shape1: TShape;
    PlayerDirection: TTimer;
    tSmoke: TShape;
    Timer2: TTimer;
    Label1: TLabel;
    Shape2: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure PlayerDirectionTimer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure criarCorpo();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  pLeft, pTop, pLeftD, pTopD : Integer;
  smoke : TShape;
  direction : String;

implementation

{$R *.dfm}

procedure TForm1.criarCorpo;
begin
    smoke :=  TShape.Create(Self);
    smoke.Parent := self;
    smoke.Height := 17;
    smoke.Width := 17;
    smoke.Brush.Color := clBlue;
    smoke.Visible := true;
    smoke.Tag := 9;
    smoke.Enabled := true;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
          if key = VK_UP then
           begin
             direction := 'up';
             pLeftD := Shape1.Left;
             pTopD := Shape1.Top;
           end
          else if key = VK_DOWN then
            begin
             direction := 'down';
             pLeftD := Shape1.Left;
             pTopD := Shape1.Top;
            end
          else if key = VK_LEFT then
            begin
             direction := 'left';
             pLeftD := Shape1.Left;
             pTopD := Shape1.Top;
            end
          else if key = VK_RIGHT then
           begin
             direction := 'right';
             pLeftD := Shape1.Left;
             pTopD := Shape1.Top;
           end;

           label1.Caption := direction;
           label2.Caption := 'LEFT ' + IntToStr(pLeftD);
           label3.Caption := 'TOP ' + IntToStr(pTopD);



         label6.Caption := IntToStr(Shape2.Left);
         label7.Caption := IntToStr(Shape2.Top);


end;

procedure TForm1.PlayerDirectionTimer(Sender: TObject);
var
  I: Integer;
begin

    pLeft := Shape1.Left;
    pTop := Shape1.Top;


  if direction = 'up' then
    shape1.top :=  shape1.top -1
    else if direction = 'left' then
    shape1.Left :=  shape1.Left -1
    else if direction = 'right' then
    shape1.Left :=  shape1.Left + 1
    else if direction = 'down' then
    shape1.Top := shape1.Top +1;


    if (shape1.Top = shape2.Top) and (shape1.Left = shape2.Left) then
     begin
       criarCorpo();
     end;


     label4.Caption := IntToStr(Shape1.Left);
     label5.Caption := IntToStr(Shape1.Top);

end;

procedure TForm1.Timer2Timer(Sender: TObject);
var
i : Integer;
begin


     for I := 0 to Self.ComponentCount -1 do
     begin
          if ((Components[i] is TShape))then
            begin
              if ((Components[i] as TShape).Tag = 9) then
               begin
                  if ((Components[i] as TShape).Left = pLeftD)
                  and ((Components[i] as TShape).top = pTopD) then
                    begin
                        (Components[i] as TShape).Left := pLeft;
                        (Components[i] as TShape).top := pTop;
                    end;
               end;
            end;
     end;




   {
     if direction = 'up' then
     begin
       smoke.top  :=  pTop;
       smoke.Left :=  pLeft;
     end
    else if direction = 'left' then
     begin
       smoke.left :=  pLeft;
       smoke.top  :=  pTop;
     end
    else if direction = 'right' then
     begin
      smoke.left  :=  pLeft;
      smoke.top   :=  pTop;
     end
    else if direction = 'down' then
      begin
        smoke.top  :=  pTop;
        smoke.Left :=  pLeft;
      end;
    }
    //smoke.Top   :=  pTop+5;


end;

end.
