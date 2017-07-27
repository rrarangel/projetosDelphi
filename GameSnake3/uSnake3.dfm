object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 169
    Top = 72
    Width = 17
    Height = 17
  end
  object Shape2: TShape
    Tag = 9999
    Left = 200
    Top = 72
    Width = 17
    Height = 17
  end
  object Edit1: TEdit
    Left = 64
    Top = 160
    Width = 297
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Timer1: TTimer
    Interval = 50
    OnTimer = Timer1Timer
    Left = 392
    Top = 80
  end
end
