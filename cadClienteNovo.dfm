object frmCadClienteNovo: TfrmCadClienteNovo
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Cadastro de Cliente'
  ClientHeight = 471
  ClientWidth = 630
  Color = clBtnFace
  Constraints.MaxHeight = 500
  Constraints.MaxWidth = 745
  Constraints.MinHeight = 450
  Constraints.MinWidth = 636
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlTop: TPanel
    Left = 0
    Top = 0
    Width = 630
    Height = 121
    Align = alTop
    Locked = True
    TabOrder = 0
    DesignSize = (
      630
      121)
    object Label1: TLabel
      Left = 135
      Top = 11
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
      Top = 11
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
      Top = 57
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
    object Label6: TLabel
      Left = 275
      Top = 57
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
      Left = 135
      Top = 57
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
    object txtEstCivil: TDBLookupComboBox
      Left = 135
      Top = 76
      Width = 121
      Height = 21
      KeyField = 'idestadocivil'
      ListField = 'estadocivilnome'
      ListSource = SourceEstCivil
      TabOrder = 3
    end
    object txtocupacao: TDBLookupComboBox
      Left = 274
      Top = 76
      Width = 121
      Height = 21
      KeyField = 'idocupacao'
      ListField = 'ocupacaonome'
      ListSource = SourceOcupacao
      TabOrder = 4
    end
    object txtNome: TEdit
      Left = 135
      Top = 30
      Width = 270
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      MaxLength = 50
      TabOrder = 1
    end
    object txtCpf: TEdit
      Left = 8
      Top = 30
      Width = 121
      Height = 21
      MaxLength = 11
      NumbersOnly = True
      TabOrder = 0
      OnExit = txtCpfExit
    end
    object txtRg: TEdit
      Left = 8
      Top = 76
      Width = 121
      Height = 21
      MaxLength = 11
      NumbersOnly = True
      TabOrder = 2
    end
  end
  object PnlBottom: TPanel
    Left = 0
    Top = 430
    Width = 630
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      630
      41)
    object btnCancelar: TButton
      Left = 8
      Top = 8
      Width = 65
      Height = 23
      Caption = 'Cancelar'
      TabOrder = 0
      OnClick = btnCancelarClick
    end
    object btnGravar: TButton
      Left = 549
      Top = 10
      Width = 65
      Height = 23
      Anchors = [akTop, akRight]
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = btnGravarClick
    end
  end
  object PnlEnd: TPanel
    Left = 0
    Top = 121
    Width = 434
    Height = 309
    Align = alClient
    TabOrder = 2
    object Label8: TLabel
      Left = 8
      Top = 6
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
    object Label4: TLabel
      Left = 152
      Top = 6
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
    object Label5: TLabel
      Left = 8
      Top = 48
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
    object Label9: TLabel
      Left = 152
      Top = 48
      Width = 75
      Height = 18
      Caption = 'N'#186' da Casa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 8
      Top = 94
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
    object Label13: TLabel
      Left = 152
      Top = 94
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
    object lbIdEnd: TLabel
      Left = 373
      Top = 160
      Width = 16
      Height = 18
      Caption = 'ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBGridEnd: TDBGrid
      Left = 1
      Top = 188
      Width = 432
      Height = 120
      Align = alBottom
      DataSource = DtSetEnd
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGridEndDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'idendereco'
          Title.Caption = 'ID END'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cep'
          Title.Caption = 'CEP'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'logradouro'
          Title.Caption = 'LOGRADOURO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bairro'
          Title.Caption = 'BAIRRO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'numcasa'
          Title.Caption = 'N'#186' CASA'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomeestado'
          Title.Caption = 'ESTADO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomecidade'
          Title.Caption = 'CIDADE'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idpessoa'
          Title.Caption = 'ID PESSOA'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idestado'
          Title.Caption = 'ID ESTADO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idcidade'
          Title.Caption = 'ID CIDADE'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object txtCep: TEdit
      Left = 8
      Top = 25
      Width = 121
      Height = 21
      MaxLength = 8
      NumbersOnly = True
      TabOrder = 1
    end
    object txtLogradouro: TEdit
      Left = 152
      Top = 25
      Width = 266
      Height = 21
      MaxLength = 50
      TabOrder = 2
    end
    object txtBairro: TEdit
      Left = 8
      Top = 67
      Width = 121
      Height = 21
      MaxLength = 50
      TabOrder = 3
    end
    object txtNumCasa: TEdit
      Left = 152
      Top = 67
      Width = 121
      Height = 21
      MaxLength = 5
      NumbersOnly = True
      TabOrder = 4
    end
    object btnAddEnd: TButton
      Left = 208
      Top = 139
      Width = 65
      Height = 23
      Caption = 'Adicionar'
      TabOrder = 8
      OnClick = btnAddEndClick
    end
    object txtEstado: TDBLookupComboBox
      Left = 8
      Top = 112
      Width = 121
      Height = 21
      KeyField = 'idestado'
      ListField = 'nomeestado'
      ListSource = SourceEstado
      TabOrder = 5
      OnExit = txtEstadoExit
    end
    object txtCidade: TDBLookupComboBox
      Left = 152
      Top = 112
      Width = 121
      Height = 21
      KeyField = 'idcidade'
      ListField = 'nomecidade'
      ListSource = SourceCidade
      TabOrder = 7
    end
    object btnRemEnd: TButton
      Left = 8
      Top = 139
      Width = 65
      Height = 23
      Caption = 'Remover'
      TabOrder = 9
      OnClick = btnRemEndClick
    end
    object txtIDEnd: TEdit
      Left = 395
      Top = 159
      Width = 33
      Height = 21
      Enabled = False
      TabOrder = 6
    end
    object btnLimpEnd: TButton
      Left = 109
      Top = 139
      Width = 65
      Height = 23
      Caption = 'Limpar'
      TabOrder = 10
      OnClick = btnLimpEndClick
    end
  end
  object PnlTelefone: TPanel
    Left = 434
    Top = 121
    Width = 196
    Height = 309
    Align = alRight
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 3
    object Label10: TLabel
      Left = 6
      Top = 6
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
    object Label11: TLabel
      Left = 6
      Top = 48
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
    object DBGridTel: TDBGrid
      Left = 1
      Top = 188
      Width = 194
      Height = 120
      Align = alBottom
      DataSource = DSetTel
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGridTelDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'idtelefone'
          Title.Caption = 'ID FONE'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ddd'
          Title.Caption = 'DDD'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'numerofone'
          Title.Caption = 'CELULAR'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idpessoa'
          Title.Caption = 'ID PESSOA'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object txtddd: TEdit
      Left = 6
      Top = 25
      Width = 121
      Height = 21
      MaxLength = 2
      NumbersOnly = True
      TabOrder = 4
    end
    object txtcel: TEdit
      Left = 6
      Top = 72
      Width = 121
      Height = 21
      MaxLength = 9
      NumbersOnly = True
      TabOrder = 1
    end
    object btnAddTel: TButton
      Left = 123
      Top = 139
      Width = 65
      Height = 23
      Caption = 'Adicionar'
      TabOrder = 2
      OnClick = btnAddTelClick
    end
    object btnRemTel: TButton
      Left = 6
      Top = 139
      Width = 65
      Height = 23
      Caption = 'Remover'
      TabOrder = 3
      OnClick = btnRemTelClick
    end
    object Button1: TButton
      Left = 75
      Top = 139
      Width = 45
      Height = 23
      Caption = 'Limpar'
      TabOrder = 5
      OnClick = Button1Click
    end
  end
  object DSEnd: TClientDataSet
    PersistDataPacket.Data = {
      0C0100009619E0BD01000000180000000A0000000000030000000C010A696465
      6E64657265636F04000100000000000363657001004900000001000557494454
      480200020014000A6C6F677261646F75726F0100490000000100055749445448
      0200020014000662616972726F01004900000001000557494454480200020014
      00076E756D636173610100490000000100055749445448020002001400086964
      706573736F6104000100000000000A6E6F6D6565737461646F01004900000001
      000557494454480200020014000A6E6F6D656369646164650100490000000100
      05574944544802000200140008696465737461646F0400010000000000086964
      63696461646504000100000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'idendereco'
        DataType = ftInteger
      end
      item
        Name = 'cep'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'logradouro'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'bairro'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'numcasa'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'idpessoa'
        DataType = ftInteger
      end
      item
        Name = 'nomeestado'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'nomecidade'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'idestado'
        DataType = ftInteger
      end
      item
        Name = 'idcidade'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 184
    Top = 337
    object DSEndidendereco: TIntegerField
      FieldName = 'idendereco'
    end
    object DSEndcep: TStringField
      DisplayWidth = 12
      FieldName = 'cep'
    end
    object DSEndlogradouro: TStringField
      DisplayWidth = 20
      FieldName = 'logradouro'
    end
    object DSEndbairro: TStringField
      DisplayWidth = 16
      FieldName = 'bairro'
    end
    object DSEndnumcasa: TStringField
      DisplayWidth = 7
      FieldName = 'numcasa'
    end
    object DSEndidpessoa: TIntegerField
      DisplayWidth = 7
      FieldName = 'idpessoa'
    end
    object DSEndnomeestado: TStringField
      FieldName = 'nomeestado'
    end
    object DSEndnomecidade: TStringField
      FieldName = 'nomecidade'
    end
    object DSEndidestado: TIntegerField
      FieldName = 'idestado'
    end
    object DSEndidcidade: TIntegerField
      FieldName = 'idcidade'
    end
  end
  object DSTel: TClientDataSet
    PersistDataPacket.Data = {
      750000009619E0BD01000000180000000400000000000300000075000A696474
      656C65666F6E6504000100000000000364646401004900000001000557494454
      480200020003000A6E756D65726F666F6E650100490000000100055749445448
      020002000A00086964706573736F6104000100000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 480
    Top = 369
    object DSTelddd: TStringField
      FieldName = 'ddd'
      Size = 3
    end
    object DSTelnumerofone: TStringField
      FieldName = 'numerofone'
      Size = 10
    end
    object DSTelidpessoa: TIntegerField
      FieldName = 'idpessoa'
    end
    object DSTelidtelefone: TIntegerField
      FieldName = 'idtelefone'
    end
  end
  object DtSetEnd: TDataSource
    DataSet = DSEnd
    Left = 264
    Top = 337
  end
  object SourceEstado: TDataSource
    DataSet = FDQEstado
    Left = 248
    Top = 120
  end
  object SourceEstCivil: TDataSource
    DataSet = FDQEstCivil
    Left = 424
    Top = 8
  end
  object SourceOcupacao: TDataSource
    DataSet = FDQOcup
    Left = 488
    Top = 8
  end
  object SourceCidade: TDataSource
    DataSet = FDQCidade
    Left = 288
    Top = 120
  end
  object FDQCidade: TFDQuery
    Connection = frmTelaInicial.FDConnection1
    SQL.Strings = (
      'select * from cidade')
    Left = 376
    Top = 120
  end
  object FDQEstado: TFDQuery
    Active = True
    Connection = frmTelaInicial.FDConnection1
    SQL.Strings = (
      'select * from estado')
    Left = 328
    Top = 120
  end
  object FDQEstCivil: TFDQuery
    Active = True
    Connection = frmTelaInicial.FDConnection1
    SQL.Strings = (
      'select * from estadocivil')
    Left = 424
    Top = 64
  end
  object FDQOcup: TFDQuery
    Active = True
    Connection = frmTelaInicial.FDConnection1
    SQL.Strings = (
      'select * from ocupacao')
    Left = 488
    Top = 64
  end
  object FDQryCheck: TFDQuery
    Connection = frmTelaInicial.FDConnection1
    Left = 576
    Top = 8
  end
  object FDQryInsUp: TFDQuery
    Connection = frmTelaInicial.FDConnection1
    Left = 576
    Top = 64
  end
  object DSetTel: TDataSource
    DataSet = DSTel
    Left = 546
    Top = 369
  end
  object FDQryLocPe: TFDQuery
    Connection = frmTelaInicial.FDConnection1
    Left = 272
  end
  object FDQryLocEnd: TFDQuery
    Connection = frmTelaInicial.FDConnection1
    Left = 136
    Top = 377
  end
  object FDQryLocTel: TFDQuery
    Connection = frmTelaInicial.FDConnection1
    Left = 578
    Top = 337
  end
  object FDQDel: TFDQuery
    Connection = frmTelaInicial.FDConnection1
    Left = 352
    Top = 369
  end
end
