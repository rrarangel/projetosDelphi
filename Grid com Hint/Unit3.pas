unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids;

type
  TCellGrid = class(Grids.TCustomGrid)
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form3: TCellGrid;

implementation

{$R *.dfm}

{ TCellGrid }

end.
