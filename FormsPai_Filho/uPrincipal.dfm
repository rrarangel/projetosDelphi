object fPrincipal: TfPrincipal
  Left = 0
  Top = 0
  Caption = 'Form Pai'
  ClientHeight = 521
  ClientWidth = 943
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TButton
    Left = 124
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 0
    OnClick = btn1Click
  end
  object pgc1: TPageControl
    Left = 392
    Top = 8
    Width = 543
    Height = 305
    DockSite = True
    TabOrder = 1
  end
  object pnl1: TPanel
    Left = 14
    Top = 8
    Width = 363
    Height = 305
    DockSite = True
    TabOrder = 2
  end
  object mm1: TMainMenu
    Left = 72
    Top = 408
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Sair1: TMenuItem
        Caption = 'Sair'
      end
    end
  end
end
