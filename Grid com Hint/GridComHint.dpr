program GridComHint;

uses
  Forms,
  uGridComHint in 'uGridComHint.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TMyHint, myHint);
  Application.CreateForm(TCellGrid, Form3);
  Application.Run;
end.
