object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 255
  ClientWidth = 603
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object JvDBSearchEdit1: TJvDBSearchEdit
    Left = 120
    Top = 64
    Width = 337
    Height = 21
    DataSource = ds1
    DataField = 'Usu_Nome'
    TabOrder = 0
  end
  object dbedt1: TDBEdit
    Left = 17
    Top = 91
    Width = 337
    Height = 21
    DataField = 'Usu_email'
    DataSource = ds1
    Enabled = False
    TabOrder = 1
  end
  object dbedt2: TDBEdit
    Left = 17
    Top = 64
    Width = 97
    Height = 21
    DataField = 'Usu_matricula'
    DataSource = ds1
    Enabled = False
    TabOrder = 2
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=237recursos2211;Persist Security In' +
      'fo=True;User ID=sa;Initial Catalog=GR_NC_OPERACAO;Data Source=gr' +
      '003v,1433'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 560
    Top = 88
  end
  object sp1: TADOStoredProc
    Connection = con1
    CursorType = ctStatic
    ProcedureName = 'STb_Usuarios_Localizar'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@VLoCampo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = 'Usu_Nome'
      end
      item
        Name = '@VLoBusca1'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = 'JvNome.text'
      end>
    Prepared = True
    Left = 560
    Top = 136
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 560
    Top = 184
  end
  object qry1: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Usuarios')
    Left = 456
    Top = 192
  end
end
