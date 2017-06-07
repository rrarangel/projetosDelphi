unit uDBSearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvEdit, JvDBSearchEdit, DB, ADODB, Mask,
  JvExMask, JvToolEdit, JvMaskEdit, JvDBFindEdit, DBCtrls;

type
  TForm1 = class(TForm)
    con1: TADOConnection;
    sp1: TADOStoredProc;
    ds1: TDataSource;
    qry1: TADOQuery;
    JvDBSearchEdit1: TJvDBSearchEdit;
    dbedt1: TDBEdit;
    dbedt2: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
