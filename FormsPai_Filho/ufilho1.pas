unit ufilho1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfFilho1 = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFilho1: TfFilho1;

implementation

{$R *.dfm}

procedure TfFilho1.btn1Click(Sender: TObject);
begin
 Self.Close;
end;

procedure TfFilho1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 //Action := caFree;
end;

procedure TfFilho1.FormCreate(Sender: TObject);
begin
    Color := Random($FFFFFF);
    Caption := IntToHex(Color, 6);
end;

end.
