object frmCidade: TfrmCidade
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Cadastro de Cidades'
  ClientHeight = 239
  ClientWidth = 323
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 99
    Top = 18
    Width = 108
    Height = 18
    Caption = 'Nome da Cidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 99
    Top = 71
    Width = 33
    Height = 18
    Caption = 'IBGE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 99
    Top = 127
    Width = 77
    Height = 18
    Caption = 'UF - Estado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lookupEstado: TDBLookupComboBox
    Tag = 5
    Left = 99
    Top = 147
    Width = 137
    Height = 21
    Hint = 'Estado'
    KeyField = 'idestado'
    ListField = 'uf'
    ListSource = SourceEstado
    TabOrder = 2
  end
  object btnGravar: TButton
    Left = 121
    Top = 196
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 3
    OnClick = btnGravarClick
  end
  object txtCidade: TEdit
    Left = 99
    Top = 40
    Width = 137
    Height = 21
    TabOrder = 0
  end
  object txtIbge: TEdit
    Left = 99
    Top = 91
    Width = 137
    Height = 21
    NumbersOnly = True
    TabOrder = 1
  end
  object FDQryInsUp: TFDQuery
    Connection = frmTelaInicial.FDConnection1
    SQL.Strings = (
      'select * from cidade')
    Left = 40
    Top = 64
  end
  object FDQEstado: TFDQuery
    IndexFieldNames = 'idestado;uf'
    Connection = frmTelaInicial.FDConnection1
    SQL.Strings = (
      'select * from estado')
    Left = 40
    Top = 168
  end
  object SourceEstado: TDataSource
    DataSet = FDQEstado
    Left = 40
    Top = 120
  end
  object FDQryCheck: TFDQuery
    Connection = frmTelaInicial.FDConnection1
    SQL.Strings = (
      'select * from cidade')
    Left = 40
    Top = 16
  end
end
