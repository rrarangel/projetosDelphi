object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 412
  ClientWidth = 946
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object lv1: TListView
    Left = 8
    Top = 8
    Width = 930
    Height = 396
    Columns = <
      item
        Caption = 'Codigo Demanda'
        Width = 120
      end
      item
        Caption = 'Data'
        Width = 80
      end
      item
        Caption = 'Hora'
      end
      item
        Caption = 'Servi'#231'o'
        Width = 200
      end
      item
        Caption = 'Fonte'
        Width = 100
      end
      item
        Caption = 'Bairro'
        Width = 200
      end
      item
        Caption = 'Situa'#231#227'o'
        Width = 150
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    RowSelect = True
    ParentFont = False
    TabOrder = 0
    ViewStyle = vsReport
    OnAdvancedCustomDrawItem = lv1AdvancedCustomDrawItem
  end
  object SP_Consulta_Demanda: TADOStoredProc
    Connection = con1
    Parameters = <>
    Left = 600
    Top = 336
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=237recursos2211;Persist Security In' +
      'fo=True;User ID=sa;Initial Catalog=Recursos_CIOTT;Data Source=gr' +
      '003v,1433'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 472
    Top = 336
  end
  object tmr1: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = tmr1Timer
    Left = 520
    Top = 336
  end
end
