object frmCadEstado: TfrmCadEstado
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastrar Estado'
  ClientHeight = 143
  ClientWidth = 206
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 35
    Top = 7
    Width = 109
    Height = 18
    Caption = 'Nome do Estado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 35
    Top = 60
    Width = 63
    Height = 18
    Caption = 'Sigla (UF)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnGravar: TButton
    Left = 68
    Top = 106
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 0
    OnClick = btnGravarClick
  end
  object txtEstado: TEdit
    Left = 35
    Top = 24
    Width = 137
    Height = 21
    TabOrder = 1
  end
  object txtUf: TEdit
    Left = 35
    Top = 79
    Width = 137
    Height = 21
    TabOrder = 2
  end
  object FDQInsUp: TFDQuery
    Connection = frmTelaInicial.FDConnection1
    Left = 160
    Top = 40
  end
end
