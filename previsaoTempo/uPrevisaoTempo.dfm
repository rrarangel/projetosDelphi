object Form1: TForm1
  Left = 0
  Top = 0
  Caption = '4'
  ClientHeight = 267
  ClientWidth = 1010
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label17: TLabel
    Left = 8
    Top = 215
    Width = 37
    Height = 13
    Caption = 'Label17'
  end
  object edt1: TEdit
    Left = 8
    Top = 234
    Width = 809
    Height = 21
    TabOrder = 0
    Text = 'http://servicos.cptec.inpe.br/XML/cidade/242/previsao.xml'
  end
  object btn1: TBitBtn
    Left = 823
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Atualizar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = btn1Click
  end
  object grp1: TGroupBox
    Left = 8
    Top = 3
    Width = 233
    Height = 209
    Caption = 'grp1'
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 48
      Width = 31
      Height = 13
      Caption = 'Label1'
    end
    object Label2: TLabel
      Left = 16
      Top = 67
      Width = 31
      Height = 13
      Caption = 'Label1'
    end
    object Label3: TLabel
      Left = 16
      Top = 86
      Width = 31
      Height = 13
      Caption = 'Label1'
    end
    object Label4: TLabel
      Left = 16
      Top = 105
      Width = 31
      Height = 13
      Caption = 'Label4'
    end
    object img1: TImage
      Left = 120
      Top = 13
      Width = 110
      Height = 76
    end
  end
  object grp2: TGroupBox
    Left = 256
    Top = 3
    Width = 233
    Height = 209
    Caption = 'grp1'
    TabOrder = 3
    object Label5: TLabel
      Left = 16
      Top = 48
      Width = 31
      Height = 13
      Caption = 'Label5'
    end
    object Label6: TLabel
      Left = 16
      Top = 67
      Width = 31
      Height = 13
      Caption = 'Label5'
    end
    object Label7: TLabel
      Left = 16
      Top = 86
      Width = 31
      Height = 13
      Caption = 'Label5'
    end
    object Label8: TLabel
      Left = 16
      Top = 105
      Width = 31
      Height = 13
      Caption = 'Label5'
    end
    object img2: TImage
      Left = 120
      Top = 13
      Width = 110
      Height = 76
    end
  end
  object grp3: TGroupBox
    Left = 513
    Top = 3
    Width = 233
    Height = 209
    Caption = 'grp1'
    TabOrder = 4
    object Label9: TLabel
      Left = 16
      Top = 48
      Width = 31
      Height = 13
      Caption = 'Label5'
    end
    object Label10: TLabel
      Left = 16
      Top = 67
      Width = 31
      Height = 13
      Caption = 'Label5'
    end
    object Label11: TLabel
      Left = 16
      Top = 86
      Width = 31
      Height = 13
      Caption = 'Label5'
    end
    object Label12: TLabel
      Left = 16
      Top = 105
      Width = 31
      Height = 13
      Caption = 'Label5'
    end
    object img3: TImage
      Left = 120
      Top = 13
      Width = 110
      Height = 76
    end
  end
  object grp4: TGroupBox
    Left = 769
    Top = 3
    Width = 233
    Height = 209
    Caption = 'grp1'
    TabOrder = 5
    object Label13: TLabel
      Left = 16
      Top = 48
      Width = 31
      Height = 13
      Caption = 'Label5'
    end
    object Label14: TLabel
      Left = 16
      Top = 67
      Width = 31
      Height = 13
      Caption = 'Label5'
    end
    object Label15: TLabel
      Left = 16
      Top = 86
      Width = 31
      Height = 13
      Caption = 'Label5'
    end
    object Label16: TLabel
      Left = 16
      Top = 105
      Width = 31
      Height = 13
      Caption = 'Label5'
    end
    object img4: TImage
      Left = 120
      Top = 13
      Width = 110
      Height = 76
    end
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 968
    Top = 224
  end
  object XMLDocument1: TXMLDocument
    Left = 928
    Top = 224
    DOMVendorDesc = 'MSXML'
  end
end
