object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 257
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 184
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyDown = Edit1KeyDown
  end
  object Memo1: TMemo
    Left = 64
    Top = 112
    Width = 409
    Height = 121
    TabOrder = 1
  end
  object HTTPRIO1: THTTPRIO
    WSDLLocation = 'http://www.byjg.com.br/xmlnuke-php/webservice.php/ws/cep?wsdl'
    Service = 'CEPService'
    Port = 'CEPServicePort'
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 496
    Top = 8
  end
  object HTTPRIO2: THTTPRIO
    WSDLLocation = 
      'https://apps.correios.com.br/SigepMasterJPA/AtendeClienteService' +
      '/AtendeCliente?wsdl'
    Service = 'AtendeClienteService'
    Port = 'AtendeClientePort'
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 496
    Top = 64
  end
end
