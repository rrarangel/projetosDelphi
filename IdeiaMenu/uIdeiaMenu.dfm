object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 495
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClick = FormClick
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 8
    Top = 10
    Width = 185
    Height = 23
    ParentBackground = False
    ParentColor = True
    TabOrder = 0
    OnClick = pnl1Click
    object Label1: TLabel
      Left = 56
      Top = 5
      Width = 64
      Height = 13
      Caption = ':: - MENU - ::'
    end
    object lv1: TListView
      Left = 8
      Top = 29
      Width = 169
      Height = 273
      BorderStyle = bsNone
      Color = clGradientActiveCaption
      Columns = <
        item
          Caption = 'Selecione'
        end>
      GridLines = True
      Items.ItemData = {
        03AA0000000500000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
        00044900740065006D0000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF0000
        0000044900740065006D0000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF00
        000000044900740065006D0000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF
        00000000044900740065006D0000000000FFFFFFFFFFFFFFFF00000000FFFFFF
        FF00000000044900740065006D00}
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
    end
  end
  object tmr1: TTimer
    Enabled = False
    Interval = 30
    OnTimer = tmr1Timer
    Left = 584
    Top = 328
  end
end
