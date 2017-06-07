program Principal;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {fPrincipal},
  ufilho1 in 'ufilho1.pas' {fFilho1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.Run;
end.
