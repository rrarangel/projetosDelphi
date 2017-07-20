object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 464
  ClientWidth = 746
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SV: TSplitView
    Left = 0
    Top = 41
    Width = 200
    Height = 423
    Color = clActiveCaption
    OpenedWidth = 200
    Placement = svpLeft
    TabOrder = 0
    object CategoryButtons1: TCategoryButtons
      Left = 8
      Top = 6
      Width = 186
      ButtonFlow = cbfVertical
      Categories = <
        item
          Caption = 'Alterar cidade'
          Color = 15466474
          Collapsed = False
          Items = <
            item
            end
            item
            end
            item
            end>
        end>
      RegularButtonColor = clWhite
      SelectedButtonColor = 15132390
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 200
    Top = 41
    Width = 546
    Height = 423
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 206
    ExplicitTop = 47
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 746
    Height = 41
    Align = alTop
    Color = clHighlight
    ParentBackground = False
    TabOrder = 2
    object Label1: TLabel
      Left = 42
      Top = 9
      Width = 38
      Height = 19
      Caption = 'Menu'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 86
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object ImageList1: TImageList
    Left = 680
    Top = 393
  end
  object ActionList1: TActionList
    Left = 680
    Top = 345
  end
end
