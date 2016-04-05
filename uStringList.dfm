object FStringList: TFStringList
  Left = 295
  Top = 123
  Width = 821
  Height = 433
  Caption = 'TStringList'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btPrimeiro: TcxButton
    Left = 12
    Top = 19
    Width = 128
    Height = 25
    Caption = 'Lendo Arquivo do Disco'
    TabOrder = 0
    OnClick = btPrimeiroClick
  end
  object mmResultado: TMemo
    Left = 163
    Top = 20
    Width = 629
    Height = 363
    TabOrder = 1
  end
  object cxButton1: TcxButton
    Left = 11
    Top = 49
    Width = 128
    Height = 25
    Caption = 'Salvando no Disco'
    TabOrder = 2
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 12
    Top = 79
    Width = 128
    Height = 25
    Caption = 'Adicionar Valores'
    TabOrder = 3
    OnClick = cxButton2Click
  end
  object cxButton3: TcxButton
    Left = 12
    Top = 109
    Width = 128
    Height = 25
    Caption = 'Localizando Valores'
    TabOrder = 4
    OnClick = cxButton3Click
  end
  object cxButton4: TcxButton
    Left = 11
    Top = 138
    Width = 128
    Height = 25
    Caption = 'Deletando Valores'
    TabOrder = 5
    OnClick = cxButton4Click
  end
  object cxButton5: TcxButton
    Left = 11
    Top = 166
    Width = 128
    Height = 25
    Caption = 'Ordena'#231#227'o'
    TabOrder = 6
    OnClick = cxButton5Click
  end
  object cxButton6: TcxButton
    Left = 11
    Top = 198
    Width = 128
    Height = 25
    Caption = 'Delimitadores'
    TabOrder = 7
    OnClick = cxButton6Click
  end
end
