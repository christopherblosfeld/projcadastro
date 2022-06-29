object frmOcupacao: TfrmOcupacao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Ocupa'#231#227'o'
  ClientHeight = 131
  ClientWidth = 195
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 19
    Top = 14
    Width = 130
    Height = 18
    Caption = 'Nome da Ocupa'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnGravar: TButton
    Left = 49
    Top = 75
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 0
    OnClick = btnGravarClick
  end
  object txtOcupacao: TEdit
    Left = 19
    Top = 34
    Width = 130
    Height = 21
    TabOrder = 1
  end
  object FDQryInsUp: TFDQuery
    Connection = frmTelaInicial.FDConnection1
    SQL.Strings = (
      'select * from ocupacao')
    Left = 144
    Top = 80
  end
  object FDQryCheck: TFDQuery
    Connection = frmTelaInicial.FDConnection1
    SQL.Strings = (
      'select * from ocupacao')
    Left = 152
    Top = 40
  end
end
