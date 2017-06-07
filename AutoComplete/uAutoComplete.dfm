object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 290
  ClientWidth = 759
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edt1: TEdit
    Left = 24
    Top = 37
    Width = 593
    Height = 21
    HideSelection = False
    TabOrder = 0
    OnChange = edt1Change
  end
  object lst1: TListBox
    Left = 24
    Top = 58
    Width = 705
    Height = 78
    DoubleBuffered = True
    ItemHeight = 13
    ParentDoubleBuffered = False
    TabOrder = 1
    Visible = False
    OnDblClick = lst1DblClick
    OnKeyDown = lst1KeyDown
  end
  object edt2: TEdit
    Left = 623
    Top = 37
    Width = 106
    Height = 21
    TabOrder = 2
  end
  object edt3: TEdit
    Left = 24
    Top = 197
    Width = 385
    Height = 21
    TabOrder = 3
    Text = 'edt3'
  end
  object edt4: TEdit
    Left = 24
    Top = 224
    Width = 385
    Height = 21
    TabOrder = 4
    Text = 'edt3'
  end
  object edt5: TEdit
    Left = 24
    Top = 170
    Width = 385
    Height = 21
    TabOrder = 5
    Text = 'edt3'
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=237recursos2211;Persist Security In' +
      'fo=True;User ID=sa;Initial Catalog=GR_NC_OPERACAO;Data Source=gr' +
      '003v,1433'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 688
    Top = 224
  end
  object sp1: TADOStoredProc
    Connection = con1
    Parameters = <>
    Left = 688
    Top = 176
  end
  object ds1: TDataSource
    DataSet = sp1
    Left = 688
    Top = 128
  end
end
