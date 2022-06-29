object frmCadCliente: TfrmCadCliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Cliente'
  ClientHeight = 280
  ClientWidth = 415
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
  object Label1: TLabel
    Left = 8
    Top = 53
    Width = 39
    Height = 18
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 3
    Width = 25
    Height = 18
    Caption = 'CPF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 100
    Width = 19
    Height = 18
    Caption = 'RG'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 199
    Width = 43
    Height = 18
    Caption = 'Cidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 151
    Width = 44
    Height = 18
    Caption = 'Estado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 152
    Top = 3
    Width = 65
    Height = 18
    Caption = 'Ocupa'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 152
    Top = 50
    Width = 72
    Height = 18
    Caption = 'Estado Civil'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 152
    Top = 100
    Width = 25
    Height = 18
    Caption = 'CEP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 152
    Top = 150
    Width = 73
    Height = 18
    Caption = 'Logradouro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 152
    Top = 199
    Width = 37
    Height = 18
    Caption = 'Bairro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 287
    Top = 151
    Width = 54
    Height = 18
    Caption = 'N'#186' Casa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 287
    Top = 199
    Width = 30
    Height = 18
    Caption = 'DDD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 327
    Top = 199
    Width = 42
    Height = 18
    Caption = 'Celular'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object txtEstCivil: TDBLookupComboBox
    Left = 152
    Top = 71
    Width = 121
    Height = 21
    KeyField = 'idestadocivil'
    ListField = 'estadocivilnome'
    ListSource = SourceEstCivil
    TabOrder = 3
  end
  object btnGravar: TButton
    Left = 332
    Top = 244
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 13
    OnClick = btnGravarClick
  end
  object txtocupacao: TDBLookupComboBox
    Left = 152
    Top = 24
    Width = 121
    Height = 21
    KeyField = 'idocupacao'
    ListField = 'ocupacaonome'
    ListSource = SourceOcupacao
    TabOrder = 1
  end
  object txtCidade: TDBLookupComboBox
    Left = 8
    Top = 217
    Width = 121
    Height = 21
    KeyField = 'idcidade'
    ListField = 'nomecidade'
    ListSource = SourceCidade
    TabOrder = 9
  end
  object txtEstado: TDBLookupComboBox
    Left = 8
    Top = 169
    Width = 121
    Height = 21
    KeyField = 'idestado'
    ListField = 'nomeestado'
    ListSource = SourceEstado
    TabOrder = 6
  end
  object txtddd: TEdit
    Left = 287
    Top = 217
    Width = 34
    Height = 21
    MaxLength = 2
    NumbersOnly = True
    TabOrder = 11
  end
  object txtcel: TEdit
    Left = 327
    Top = 217
    Width = 81
    Height = 21
    MaxLength = 9
    NumbersOnly = True
    TabOrder = 12
  end
  object btnCancelar: TButton
    Left = 8
    Top = 244
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 14
    OnClick = btnCancelarClick
  end
  object txtNome: TEdit
    Left = 8
    Top = 73
    Width = 121
    Height = 21
    MaxLength = 50
    TabOrder = 2
  end
  object txtCpf: TEdit
    Left = 8
    Top = 26
    Width = 121
    Height = 21
    MaxLength = 11
    NumbersOnly = True
    TabOrder = 0
    OnExit = txtCpfExit
  end
  object txtRg: TEdit
    Left = 8
    Top = 124
    Width = 121
    Height = 21
    MaxLength = 11
    NumbersOnly = True
    TabOrder = 4
  end
  object txtCep: TEdit
    Left = 152
    Top = 123
    Width = 121
    Height = 21
    MaxLength = 8
    NumbersOnly = True
    TabOrder = 5
  end
  object txtlogradouro: TEdit
    Left = 152
    Top = 169
    Width = 121
    Height = 21
    MaxLength = 50
    TabOrder = 7
  end
  object txtNumcasa: TEdit
    Left = 286
    Top = 172
    Width = 121
    Height = 21
    MaxLength = 5
    NumbersOnly = True
    TabOrder = 8
  end
  object txtbairro: TEdit
    Left = 152
    Top = 217
    Width = 121
    Height = 21
    MaxLength = 50
    TabOrder = 10
  end
  object tbTemp: TButton
    Left = 152
    Top = 244
    Width = 75
    Height = 25
    Caption = 'Cliente Novo'
    TabOrder = 15
    OnClick = tbTempClick
  end
  object SourceOcupacao: TDataSource
    DataSet = FDQOcup
    Left = 384
    Top = 136
  end
  object FDQryInsUp: TFDQuery
    Connection = frmTelaInicial.FDConnection1
    SQL.Strings = (
      'select idocupacao, ocupacaonome from ocupacao')
    Left = 344
    Top = 96
  end
  object FDQryCheck: TFDQuery
    Active = True
    Connection = frmTelaInicial.FDConnection1
    SQL.Strings = (
      'select * from estadocivil')
    Left = 336
    Top = 48
  end
  object fdqEstCivil: TFDQuery
    Active = True
    IndexFieldNames = 'idestadocivil;estadocivilnome'
    Connection = frmTelaInicial.FDConnection1
    SQL.Strings = (
      'select * from estadocivil')
    Left = 296
    Top = 48
  end
  object SourceEstCivil: TDataSource
    DataSet = fdqEstCivil
    Left = 376
    Top = 96
  end
  object FDQcidade: TFDQuery
    IndexFieldNames = 'nomecidade;idcidade'
    Connection = frmTelaInicial.FDConnection1
    SQL.Strings = (
      'select * from cidade')
    Left = 296
    Top = 88
  end
  object SourceCidade: TDataSource
    DataSet = FDQcidade
    Left = 376
    Top = 56
  end
  object FDQEstado: TFDQuery
    IndexFieldNames = 'nomeestado;idestado'
    Connection = frmTelaInicial.FDConnection1
    SQL.Strings = (
      'select * from estado')
    Left = 328
  end
  object SourceEstado: TDataSource
    DataSet = FDQEstado
    Left = 376
    Top = 8
  end
  object FDQOcup: TFDQuery
    IndexFieldNames = 'idocupacao;ocupacaonome'
    Connection = frmTelaInicial.FDConnection1
    SQL.Strings = (
      'select idocupacao, ocupacaonome from ocupacao')
    Left = 288
  end
end
