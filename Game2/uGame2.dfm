object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 392
  ClientWidth = 651
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 296
    Top = 144
    Width = 17
    Height = 17
  end
  object tSmoke: TShape
    Left = 24
    Top = 24
    Width = 10
    Height = 10
    Brush.Color = clBlue
    Pen.Color = clWhite
    Pen.Width = 0
  end
  object Label1: TLabel
    Left = 8
    Top = 371
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Shape2: TShape
    Left = 280
    Top = 296
    Width = 49
    Height = 45
  end
  object Label2: TLabel
    Left = 384
    Top = 352
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 384
    Top = 371
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Label4: TLabel
    Left = 576
    Top = 8
    Width = 31
    Height = 13
    Caption = 'Label4'
  end
  object Label5: TLabel
    Left = 576
    Top = 24
    Width = 31
    Height = 13
    Caption = 'Label4'
  end
  object Label6: TLabel
    Left = 335
    Top = 296
    Width = 31
    Height = 13
    Caption = 'Label6'
  end
  object Label7: TLabel
    Left = 335
    Top = 307
    Width = 31
    Height = 13
    Caption = 'Label6'
  end
  object PlayerDirection: TTimer
    Interval = 10
    OnTimer = PlayerDirectionTimer
    Left = 584
    Top = 288
  end
  object Timer2: TTimer
    Interval = 60
    OnTimer = Timer2Timer
    Left = 584
    Top = 336
  end
end
