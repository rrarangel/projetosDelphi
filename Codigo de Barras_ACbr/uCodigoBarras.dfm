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
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ACBrBarCode1: TACBrBarCode
    Left = 80
    Top = 96
    Width = 281
    Height = 81
    Modul = 7
    Ratio = 2.250000000000000000
    Typ = bcCode128A
    ShowTextFont.Charset = DEFAULT_CHARSET
    ShowTextFont.Color = clWindowText
    ShowTextFont.Height = -11
    ShowTextFont.Name = 'Tahoma'
    ShowTextFont.Style = []
  end
  object lbl1: TLabel
    Left = 104
    Top = 180
    Width = 16
    Height = 13
    Caption = 'lbl1'
  end
  object edt1: TEdit
    Left = 24
    Top = 16
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 191
    Top = 14
    Width = 114
    Height = 25
    Caption = 'Gerar...'
    TabOrder = 1
    OnClick = btn1Click
  end
end
