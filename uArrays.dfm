object FArray: TFArray
  Left = 295
  Top = 124
  Width = 823
  Height = 437
  Caption = 'Arrays - Vetores'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mmResultado: TMemo
    Left = 163
    Top = 20
    Width = 629
    Height = 363
    TabOrder = 1
  end
  object btVetorFixo: TcxButton
    Left = 25
    Top = 19
    Width = 117
    Height = 25
    Caption = 'Vetor Fixo'
    TabOrder = 0
    OnClick = btVetorFixoClick
  end
  object btVetorRecord: TcxButton
    Left = 25
    Top = 106
    Width = 117
    Height = 25
    Caption = 'Vetor Record'
    TabOrder = 2
    OnClick = btVetorRecordClick
  end
  object btVetorVariant: TcxButton
    Left = 25
    Top = 48
    Width = 117
    Height = 25
    Caption = 'Vetor Variant'
    TabOrder = 3
    OnClick = btVetorVariantClick
  end
  object btVetorBiDimensional: TcxButton
    Left = 25
    Top = 77
    Width = 117
    Height = 25
    Caption = 'Vetor Big-Dimensional'
    TabOrder = 4
    OnClick = btVetorBiDimensionalClick
  end
end
