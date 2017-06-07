unit uListView1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls;

type
  TForm1 = class(TForm)
    lv1: TListView;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormActivate(Sender: TObject);
var
    Group: TListGroup;
    Item: TListItem;
    s1, s2: string;
  begin

    lv1.ViewStyle := vsReport;
    lv1.GroupView := True;
    lv1.Columns.Add.Caption := 'My column';
    Group := lv1.Groups.Add;
    Group.Header := 'My header';
    Group.Footer := 'My footer';
    Group.GroupID := 0;
    Item := lv1.Items.Add;
    Item.GroupID := 0;
    Item.Caption := 'My item';

    lv1.Columns.Add.Caption := 'My subItem';
    Item.SubItems.Add('SubItem');

    Item := lv1.Items.Add;
    Item.GroupID := 0;
    Item.Caption := 'My item2';
    Item.SubItems.Add('SubItem2');




end;

end.
