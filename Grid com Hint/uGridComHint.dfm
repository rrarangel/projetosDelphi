object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 330
  ClientWidth = 832
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 816
    Height = 273
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnMouseMove = DBGrid1MouseMove
  end
  object DataSource1: TDataSource
    DataSet = Sp
    Left = 656
    Top = 296
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=9764@tran@29;Persist Security Info=' +
      'True;User ID=sa;Initial Catalog=Recursos_CIOTT;Data Source=177.2' +
      '0.14.11\SQL001,1433'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 728
    Top = 296
  end
  object Sp: TADOStoredProc
    Connection = ADOConnection1
    Parameters = <>
    Left = 688
    Top = 296
  end
end
