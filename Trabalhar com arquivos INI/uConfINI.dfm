object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 243
  ClientWidth = 504
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object edt1: TEdit
    Left = 8
    Top = 16
    Width = 401
    Height = 21
    TabOrder = 0
  end
  object chk1: TCheckBox
    Left = 423
    Top = 18
    Width = 50
    Height = 17
    Caption = 'chk1'
    TabOrder = 1
  end
  object btn1: TButton
    Left = 216
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 2
    OnClick = btn1Click
  end
end
